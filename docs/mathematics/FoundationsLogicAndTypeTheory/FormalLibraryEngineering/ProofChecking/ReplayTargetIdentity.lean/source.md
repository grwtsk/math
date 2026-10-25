# Complete source: GRWTSK.Logic.ProofChecking.ReplayTargetIdentity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `907bb1f003889b543979dd28aeaf1734382f0c9f` · SHA-256 `d1a36bd57787da2127678e67b2cc1bdd2dba7e3f4e3d8c45e2d98d5ebcff38d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Exact replay-header binding and module omission (#136, source-only candidate)

This is the first independent, pure component of the replay-target specification.
It does not parse manifests, authenticate Git hashes, extract elaborated Lean
types, execute builds, audit axioms, or accept external receipts. String fields
are opaque identity tokens until verified against source bytes by an external
producer. The existing spectral-descent-v1 manifest is not changed here.
-/
import Mathlib.Data.Finset.Basic

set_option autoImplicit false

namespace GRWTSK.Logic.ProofChecking.ReplayTarget

/-- The only target-schema spelling understood by this initial model. -/
def supportedSchema : String := "grwtsk-math-replay-target-v1"

/-- Identity tokens which must all be checked against actual source and lock
bytes before any external replay claim. Equality does not authenticate tokens. -/
structure SourceIdentity where
  repository : String
  revision : String
  tree : String
  targetPath : String
  targetBlob : String
  toolchainFile : String
  toolchainName : String
  toolchainBlob : String
  dependencyManifestPath : String
  dependencyManifestBlob : String
  lakefileBlob : String
  mathlibRevision : String
  deriving DecidableEq, Repr

/-- Just the source-bound header, not the complete #136 declaration inventory,
coverage specification, trust policy, or #138 receipt schema. -/
structure Header where
  schema : String
  targetId : String
  source : SourceIdentity
  rootModule : String
  buildTarget : String
  deriving DecidableEq, Repr

/-- The expected schema must be understood, and the supplied header must agree
on every field. This is equality of pure supplied records, not a replay pass. -/
def HeaderMatches (expected reported : Header) : Prop :=
  expected.schema = supportedSchema ∧ reported = expected

theorem matches_self (target : Header)
    (supported : target.schema = supportedSchema) :
    HeaderMatches target target :=
  ⟨supported, rfl⟩

theorem matching_headers_have_equal_source {expected reported : Header}
    (h : HeaderMatches expected reported) :
    reported.source = expected.source :=
  congrArg Header.source h.2

/-- Unrecognized versions fail closed instead of being interpreted as v1. -/
theorem reject_unknown_schema {expected reported : Header}
    (unknown : expected.schema ≠ supportedSchema) :
    ¬ HeaderMatches expected reported := by
  intro h
  exact unknown h.1

/-- Changing any explicitly selected source field invalidates the header.
Callers must independently establish that their tokens came from source bytes. -/
theorem reject_source_field_drift {expected reported : Header}
    (field : SourceIdentity → String)
    (changed : field reported.source ≠ field expected.source) :
    ¬ HeaderMatches expected reported := by
  intro h
  exact changed (congrArg (fun header : Header => field header.source) h.2)

theorem reject_revision_drift {expected reported : Header}
    (changed : reported.source.revision ≠ expected.source.revision) :
    ¬ HeaderMatches expected reported :=
  reject_source_field_drift (fun source => source.revision) changed

theorem reject_target_blob_drift {expected reported : Header}
    (changed : reported.source.targetBlob ≠ expected.source.targetBlob) :
    ¬ HeaderMatches expected reported :=
  reject_source_field_drift (fun source => source.targetBlob) changed

theorem reject_toolchain_drift {expected reported : Header}
    (changed : reported.source.toolchainBlob ≠ expected.source.toolchainBlob) :
    ¬ HeaderMatches expected reported :=
  reject_source_field_drift (fun source => source.toolchainBlob) changed

theorem reject_dependency_manifest_drift {expected reported : Header}
    (changed : reported.source.dependencyManifestBlob ≠
      expected.source.dependencyManifestBlob) :
    ¬ HeaderMatches expected reported :=
  reject_source_field_drift (fun source => source.dependencyManifestBlob) changed

/-- A leaf is covered only if it appears in the independently enumerated
module results. This models no build evidence and does not establish exposure
through the public root. -/
def ModulesCovered (required reported : List String) : Prop :=
  ∀ moduleName : String, moduleName ∈ required → moduleName ∈ reported

theorem modules_cover_themselves (required : List String) :
    ModulesCovered required required :=
  fun _ needed => needed

theorem omitted_module_blocks_coverage {required reported : List String}
    {moduleName : String} (needed : moduleName ∈ required)
    (omitted : moduleName ∉ reported) :
    ¬ ModulesCovered required reported := by
  intro covered
  exact omitted (covered moduleName needed)

/-- A report of a successful root build cannot compensate for a missing leaf. -/
theorem root_build_cannot_hide_omission (rootBuilt : Bool)
    (required reported : List String) (moduleName : String)
    (needed : moduleName ∈ required) (omitted : moduleName ∉ reported) :
    ¬ (rootBuilt = true ∧ ModulesCovered required reported) := by
  intro report
  exact omitted (report.2 moduleName needed)

/-- Terminal module statuses remain explicit. Missing or unavailable execution
is not represented by a successful Boolean or by an absent field. -/
inductive ModuleTerminalStatus where
  | pass
  | failed
  | notRun
  | unavailable
  deriving DecidableEq, Repr

/-- A terminal module outcome is bound to the entire supplied source identity
and one exact module name. These tokens remain unauthenticated pure data. -/
structure ModuleTerminalOutcome where
  source : SourceIdentity
  moduleName : String
  status : ModuleTerminalStatus
  deriving DecidableEq, Repr

/-- The only successful terminal outcome at one exact source/module identity. -/
def passingOutcome (source : SourceIdentity) (moduleName : String) :
    ModuleTerminalOutcome where
  source := source
  moduleName := moduleName
  status := .pass

/-- Retain every occurrence at the exact source/module identity. Filtering a
list rather than using set membership makes duplicate records observable. -/
def matchingModuleOutcomes (source : SourceIdentity) (moduleName : String)
    (outcomes : List ModuleTerminalOutcome) : List ModuleTerminalOutcome :=
  outcomes.filter fun outcome =>
    decide (outcome.source = source ∧ outcome.moduleName = moduleName)

/-- Every required module must have exactly one outcome occurrence at the exact
source identity, and that sole occurrence must be `pass`. Results at other
identities or for unrequired modules cannot supply this obligation. -/
def ModulesSucceeded (source : SourceIdentity) (required : List String)
    (outcomes : List ModuleTerminalOutcome) : Prop :=
  ∀ moduleName : String, moduleName ∈ required →
    matchingModuleOutcomes source moduleName outcomes =
      [passingOutcome source moduleName]

theorem modulesSucceeded_exactly_one_pass {source : SourceIdentity}
    {required : List String} {outcomes : List ModuleTerminalOutcome}
    (succeeded : ModulesSucceeded source required outcomes)
    {moduleName : String} (needed : moduleName ∈ required) :
    matchingModuleOutcomes source moduleName outcomes =
      [passingOutcome source moduleName] :=
  succeeded moduleName needed

/-- An explicitly nonvacuous target-level admission condition. The original
`ModulesSucceeded` is deliberately unchanged: it also makes sense for an
empty or repeated required list. Here the required-module inventory must be
nonempty and duplicate-free, and every listed module needs its sole exact-source
PASS. External source enumeration, Git byte authentication, public-root exposure,
compiler success and axiom acceptance are all separate obligations. -/
def NonvacuousModulesSucceeded (source : SourceIdentity) (required : List String)
    (outcomes : List ModuleTerminalOutcome) : Prop :=
  required ≠ [] ∧ required.Nodup ∧ ModulesSucceeded source required outcomes

/-- The stronger target condition still uses exactly the low-level per-module
success rule, without asserting that the required list was externally complete. -/
theorem nonvacuous_exactly_one_pass {source : SourceIdentity}
    {required : List String} {outcomes : List ModuleTerminalOutcome}
    (accepted : NonvacuousModulesSucceeded source required outcomes)
    {moduleName : String} (needed : moduleName ∈ required) :
    matchingModuleOutcomes source moduleName outcomes =
      [passingOutcome source moduleName] :=
  accepted.2.2 moduleName needed

/-- Matching occurrences distribute over concatenated report fragments. This is
an identity of pure lists; it authenticates neither fragment nor its tokens. -/
theorem matchingModuleOutcomes_append (source : SourceIdentity) (moduleName : String)
    (left right : List ModuleTerminalOutcome) :
    matchingModuleOutcomes source moduleName (left ++ right) =
      matchingModuleOutcomes source moduleName left ++
        matchingModuleOutcomes source moduleName right := by
  simp only [matchingModuleOutcomes, List.filter_append]

/-- Exact success of two joined fragments requires, at each required key, a
sole PASS in exactly one fragment and no matching occurrence in the other.
This permits a partitioned inventory; it never treats two full reports as one
occurrence or asserts that the supplied required inventory is complete. -/
theorem modulesSucceeded_append_iff (source : SourceIdentity) (required : List String)
    (left right : List ModuleTerminalOutcome) :
    ModulesSucceeded source required (left ++ right) ↔
      ∀ moduleName : String, moduleName ∈ required →
        (matchingModuleOutcomes source moduleName left =
            [passingOutcome source moduleName] ∧
          matchingModuleOutcomes source moduleName right = []) ∨
        (matchingModuleOutcomes source moduleName left = [] ∧
          matchingModuleOutcomes source moduleName right =
            [passingOutcome source moduleName]) := by
  have split : ∀ (xs ys : List ModuleTerminalOutcome) (value : ModuleTerminalOutcome),
      xs ++ ys = [value] ↔
        (xs = [value] ∧ ys = []) ∨ (xs = [] ∧ ys = [value]) := by
    intro xs ys value
    cases xs with
    | nil => simp
    | cons first rest =>
      cases rest with
      | nil =>
        cases ys with
        | nil => simp
        | cons second tail => simp
      | cons second tail => simp
  constructor
  · intro succeeded moduleName needed
    apply (split (matchingModuleOutcomes source moduleName left)
      (matchingModuleOutcomes source moduleName right)
      (passingOutcome source moduleName)).mp
    simpa only [matchingModuleOutcomes_append] using succeeded moduleName needed
  · intro fragmented moduleName needed
    rw [matchingModuleOutcomes_append]
    exact (split (matchingModuleOutcomes source moduleName left)
      (matchingModuleOutcomes source moduleName right)
      (passingOutcome source moduleName)).mpr (fragmented moduleName needed)

/-- Any matching occurrence in both fragments blocks combined success,
regardless of either occurrence's status. Two complete reports cannot be
collapsed into a single occurrence at one required exact source/module key. -/
theorem matching_records_in_both_fragments_block_success
    {source : SourceIdentity} {required : List String}
    {left right : List ModuleTerminalOutcome} {moduleName : String}
    (needed : moduleName ∈ required)
    (leftPresent : matchingModuleOutcomes source moduleName left ≠ [])
    (rightPresent : matchingModuleOutcomes source moduleName right ≠ []) :
    ¬ ModulesSucceeded source required (left ++ right) := by
  intro succeeded
  have fragmented := (modulesSucceeded_append_iff source required left right).mp
    succeeded moduleName needed
  cases fragmented with
  | inl leftPass => exact rightPresent leftPass.2
  | inr rightPass => exact leftPresent rightPass.1

/-- A fragment with no matching occurrence at any required key changes neither
success nor failure on that inventory. This does not authenticate its records
or assert that a whole-receipt policy must ignore out-of-scope records. -/
theorem irrelevant_append_preserves_success (source : SourceIdentity)
    (required : List String) (left right : List ModuleTerminalOutcome)
    (irrelevant : ∀ moduleName : String, moduleName ∈ required →
      matchingModuleOutcomes source moduleName right = []) :
    ModulesSucceeded source required (left ++ right) ↔
      ModulesSucceeded source required left := by
  constructor
  · intro succeeded moduleName needed
    have combined := succeeded moduleName needed
    simpa only [matchingModuleOutcomes_append, irrelevant moduleName needed,
      List.append_nil] using combined
  · intro succeeded moduleName needed
    simpa only [matchingModuleOutcomes_append, irrelevant moduleName needed,
      List.append_nil] using succeeded moduleName needed

/-- Fragment order does not change exact per-module success. Multiplicity is
still observable: matching records in both fragments block combined success. -/
theorem modulesSucceeded_append_comm (source : SourceIdentity)
    (required : List String) (left right : List ModuleTerminalOutcome) :
    ModulesSucceeded source required (left ++ right) ↔
      ModulesSucceeded source required (right ++ left) := by
  have reorder : ∀ (xs ys : List ModuleTerminalOutcome),
      ModulesSucceeded source required (xs ++ ys) →
        ModulesSucceeded source required (ys ++ xs) := by
    intro xs ys succeeded
    apply (modulesSucceeded_append_iff source required ys xs).mpr
    intro moduleName needed
    have fragmented := (modulesSucceeded_append_iff source required xs ys).mp
      succeeded moduleName needed
    cases fragmented with
    | inl leftPass => exact Or.inr ⟨leftPass.2, leftPass.1⟩
    | inr rightPass => exact Or.inl ⟨rightPass.2, rightPass.1⟩
  exact ⟨reorder left right, reorder right left⟩

namespace FragmentFixtures

/-- Two individually complete one-key PASS fragments fail after concatenation.
This is a pure predicate fixture, not a compiler or receipt acceptance test. -/
theorem duplicate_complete_pass_fragments_rejected
    (source : SourceIdentity) (moduleName : String) :
    ¬ ModulesSucceeded source [moduleName]
      ([passingOutcome source moduleName] ++ [passingOutcome source moduleName]) := by
  apply matching_records_in_both_fragments_block_success (moduleName := moduleName)
  · simp
  · simp [matchingModuleOutcomes, passingOutcome]
  · simp [matchingModuleOutcomes, passingOutcome]

/-- A matching failure alongside a PASS cannot be discarded by selecting only
an existential successful record. Both matching occurrences are retained. -/
theorem pass_and_matching_failure_fragments_rejected
    (source : SourceIdentity) (moduleName : String) :
    ¬ ModulesSucceeded source [moduleName]
      ([passingOutcome source moduleName] ++
        [{ source := source, moduleName := moduleName, status := .failed }]) := by
  apply matching_records_in_both_fragments_block_success (moduleName := moduleName)
  · simp
  · simp [matchingModuleOutcomes, passingOutcome]
  · simp [matchingModuleOutcomes, passingOutcome]

/-- A PASS at a provably different supplied source cannot supply the required
exact-source occurrence. Token inequality is a hypothesis, not authentication. -/
theorem different_source_fragment_alone_rejected
    (source otherSource : SourceIdentity) (moduleName : String)
    (differentSource : otherSource ≠ source) :
    ¬ ModulesSucceeded source [moduleName]
      ([passingOutcome otherSource moduleName] ++ []) := by
  intro succeeded
  have impossible := succeeded moduleName (by simp)
  simpa [matchingModuleOutcomes, passingOutcome, differentSource] using impossible

/-- Distinct required keys may genuinely be partitioned between fragments,
with one exact-source PASS for each key across the joined list. -/
theorem partitioned_two_key_target_succeeds
    (source : SourceIdentity) (first second : String) (distinct : first ≠ second) :
    ModulesSucceeded source [first, second]
      ([passingOutcome source first] ++ [passingOutcome source second]) := by
  apply (modulesSucceeded_append_iff source [first, second]
    [passingOutcome source first] [passingOutcome source second]).mpr
  intro moduleName needed
  have choices : moduleName = first ∨ moduleName = second := by
    simpa using needed
  cases choices with
  | inl firstKey =>
    subst moduleName
    exact Or.inl ⟨by simp [matchingModuleOutcomes, passingOutcome],
      by simp [matchingModuleOutcomes, passingOutcome, Ne.symm distinct]⟩
  | inr secondKey =>
    subst moduleName
    exact Or.inr ⟨by simp [matchingModuleOutcomes, passingOutcome, distinct],
      by simp [matchingModuleOutcomes, passingOutcome]⟩

/-- A failure at another key and a PASS at another source change no required-key
success. This gives no success claim for either out-of-scope identity. -/
theorem irrelevant_fragment_preserves_left_success
    (source otherSource : SourceIdentity) (first second : String)
    (distinct : first ≠ second) (differentSource : otherSource ≠ source) :
    ModulesSucceeded source [first]
      ([passingOutcome source first] ++
        [{ source := source, moduleName := second, status := .failed },
          passingOutcome otherSource first]) ↔
      ModulesSucceeded source [first] [passingOutcome source first] := by
  apply irrelevant_append_preserves_success
  intro moduleName needed
  have key : moduleName = first := by simpa using needed
  subst moduleName
  simp [matchingModuleOutcomes, passingOutcome, Ne.symm distinct, differentSource]

/-- Empty required inventory remains vacuously successful at the low-level
relation while the existing nonvacuous wrapper rejects it. -/
theorem empty_inventory_vacuous_but_wrapper_rejected (source : SourceIdentity) :
    ModulesSucceeded source [] ([] ++ []) ∧
      ¬ NonvacuousModulesSucceeded source [] ([] ++ []) := by
  simp [ModulesSucceeded, NonvacuousModulesSucceeded]

end FragmentFixtures

/-- Combine an ordered finite list of report fragments without discarding any
occurrence. This is a pure list fold, not an execution or receipt operation. -/
def combineModuleFragments (fragments : List (List ModuleTerminalOutcome)) :
    List ModuleTerminalOutcome :=
  fragments.foldr (fun fragment rest => fragment ++ rest) []

/-- At one exact supplied source/module key, exactly one fragment occurrence
supplies the sole PASS and every other occurrence supplies no matching record.
Recursion over occurrences retains multiplicity even when fragment values are
identical. Different required keys may select different fragment occurrences. -/
def ExactlyOnePassingFragment (source : SourceIdentity) (moduleName : String) :
    List (List ModuleTerminalOutcome) → Prop
  | [] => False
  | first :: rest =>
      (matchingModuleOutcomes source moduleName first =
          [passingOutcome source moduleName] ∧
        ∀ fragment : List ModuleTerminalOutcome, fragment ∈ rest →
          matchingModuleOutcomes source moduleName fragment = []) ∨
      (matchingModuleOutcomes source moduleName first = [] ∧
        ExactlyOnePassingFragment source moduleName rest)

/-- A finite combined report has no matching occurrence at a key exactly when
all fragment occurrences have none. Identity tokens remain unauthenticated. -/
theorem matchingModuleOutcomes_combine_empty_iff (source : SourceIdentity)
    (moduleName : String) (fragments : List (List ModuleTerminalOutcome)) :
    matchingModuleOutcomes source moduleName (combineModuleFragments fragments) = [] ↔
      ∀ fragment : List ModuleTerminalOutcome, fragment ∈ fragments →
        matchingModuleOutcomes source moduleName fragment = [] := by
  have appendEmpty : ∀ (xs ys : List ModuleTerminalOutcome),
      xs ++ ys = [] ↔ xs = [] ∧ ys = [] := by
    intro xs ys
    cases xs with
    | nil => simp
    | cons first rest => simp
  induction fragments with
  | nil => simp [combineModuleFragments, matchingModuleOutcomes]
  | cons first rest ih =>
    change matchingModuleOutcomes source moduleName
        (first ++ combineModuleFragments rest) = [] ↔
      ∀ fragment : List ModuleTerminalOutcome, fragment ∈ first :: rest →
        matchingModuleOutcomes source moduleName fragment = []
    rw [matchingModuleOutcomes_append, appendEmpty, ih]
    constructor
    · intro pieces fragment member
      have choices : fragment = first ∨ fragment ∈ rest := by
        simpa using member
      cases choices with
      | inl same =>
        subst fragment
        exact pieces.1
      | inr inRest => exact pieces.2 fragment inRest
    · intro allEmpty
      exact ⟨allEmpty first (by simp),
        fun fragment member => allEmpty fragment (by simp [member])⟩

/-- A finite combined report has its sole exact-source PASS at one key exactly
when the recursive occurrence-sensitive fragment condition holds at that key. -/
theorem matchingModuleOutcomes_combine_singleton_iff (source : SourceIdentity)
    (moduleName : String) (fragments : List (List ModuleTerminalOutcome)) :
    matchingModuleOutcomes source moduleName (combineModuleFragments fragments) =
        [passingOutcome source moduleName] ↔
      ExactlyOnePassingFragment source moduleName fragments := by
  have split : ∀ (xs ys : List ModuleTerminalOutcome) (value : ModuleTerminalOutcome),
      xs ++ ys = [value] ↔
        (xs = [value] ∧ ys = []) ∨ (xs = [] ∧ ys = [value]) := by
    intro xs ys value
    cases xs with
    | nil => simp
    | cons first rest =>
      cases rest with
      | nil =>
        cases ys with
        | nil => simp
        | cons second tail => simp
      | cons second tail => simp
  induction fragments with
  | nil =>
    simp [combineModuleFragments, matchingModuleOutcomes, ExactlyOnePassingFragment]
  | cons first rest ih =>
    change matchingModuleOutcomes source moduleName
        (first ++ combineModuleFragments rest) = [passingOutcome source moduleName] ↔
      (matchingModuleOutcomes source moduleName first =
          [passingOutcome source moduleName] ∧
        ∀ fragment : List ModuleTerminalOutcome, fragment ∈ rest →
          matchingModuleOutcomes source moduleName fragment = []) ∨
      (matchingModuleOutcomes source moduleName first = [] ∧
        ExactlyOnePassingFragment source moduleName rest)
    rw [matchingModuleOutcomes_append, split,
      matchingModuleOutcomes_combine_empty_iff, ih]

/-- Exact success of a finite combined report is the per-required-key unique
PASS fragment condition. The selected fragment may vary with the key. Neither
this equivalence nor a nonempty inventory establishes external completeness,
authenticated identities, compiler success, or acceptance of any receipt. -/
theorem modulesSucceeded_combine_iff (source : SourceIdentity)
    (required : List String) (fragments : List (List ModuleTerminalOutcome)) :
    ModulesSucceeded source required (combineModuleFragments fragments) ↔
      ∀ moduleName : String, moduleName ∈ required →
        ExactlyOnePassingFragment source moduleName fragments := by
  constructor
  · intro succeeded moduleName needed
    exact (matchingModuleOutcomes_combine_singleton_iff source moduleName fragments).mp
      (succeeded moduleName needed)
  · intro fragmented moduleName needed
    exact (matchingModuleOutcomes_combine_singleton_iff source moduleName fragments).mpr
      (fragmented moduleName needed)

namespace FiniteFragmentFixtures

/-- Three equal PASS-valued fragment occurrences remain three matching records,
so their combination fails even for a single required key. This is symbolic. -/
theorem three_fragment_pass_overlap_rejected
    (source : SourceIdentity) (moduleName : String) :
    ¬ ModulesSucceeded source [moduleName]
      (combineModuleFragments [[passingOutcome source moduleName],
        [passingOutcome source moduleName], [passingOutcome source moduleName]]) := by
  intro succeeded
  have impossible := succeeded moduleName (by simp)
  simp [combineModuleFragments, matchingModuleOutcomes, passingOutcome] at impossible

/-- If one required key is absent from every fragment occurrence, the finite
combination cannot supply its sole PASS. No completeness of `required` is claimed. -/
theorem missing_key_across_fragments_rejected
    (source : SourceIdentity) (required : List String) (moduleName : String)
    (fragments : List (List ModuleTerminalOutcome))
    (needed : moduleName ∈ required)
    (missing : ∀ fragment : List ModuleTerminalOutcome, fragment ∈ fragments →
      matchingModuleOutcomes source moduleName fragment = []) :
    ¬ ModulesSucceeded source required (combineModuleFragments fragments) := by
  intro succeeded
  have empty := (matchingModuleOutcomes_combine_empty_iff source moduleName fragments).mpr
    missing
  have impossible : ([] : List ModuleTerminalOutcome) =
      [passingOutcome source moduleName] :=
    empty.symm.trans (succeeded moduleName needed)
  cases impossible

/-- Inserting an irrelevant middle fragment preserves both low-level success
and failure on the supplied required inventory. This pure predicate equivalence
supplies no whole-receipt permission to accept unrelated records. -/
theorem irrelevant_middle_fragment_preserves_success
    (source : SourceIdentity) (required : List String)
    (left middle right : List ModuleTerminalOutcome)
    (irrelevant : ∀ moduleName : String, moduleName ∈ required →
      matchingModuleOutcomes source moduleName middle = []) :
    ModulesSucceeded source required (combineModuleFragments [left, middle, right]) ↔
      ModulesSucceeded source required (combineModuleFragments [left, right]) := by
  have reduceKey : ∀ moduleName : String, moduleName ∈ required →
      matchingModuleOutcomes source moduleName
          (combineModuleFragments [left, middle, right]) =
        matchingModuleOutcomes source moduleName (combineModuleFragments [left, right]) := by
    intro moduleName needed
    change matchingModuleOutcomes source moduleName
        (left ++ (middle ++ (right ++ []))) =
      matchingModuleOutcomes source moduleName (left ++ (right ++ []))
    simp only [matchingModuleOutcomes_append, irrelevant moduleName needed, List.nil_append]
  constructor
  · intro succeeded moduleName needed
    exact (reduceKey moduleName needed).symm.trans (succeeded moduleName needed)
  · intro succeeded moduleName needed
    exact (reduceKey moduleName needed).trans (succeeded moduleName needed)

end FiniteFragmentFixtures

/-- The finite fragment fold retains exactly the ordered flattened outcomes.
This bridge is only about pure lists, not source or receipt authentication. -/
theorem combineModuleFragments_eq_flatten
    (fragments : List (List ModuleTerminalOutcome)) :
    combineModuleFragments fragments = fragments.flatten := by
  induction fragments with
  | nil => rfl
  | cons first rest ih =>
    change first ++ combineModuleFragments rest = first ++ rest.flatten
    rw [ih]

/-- Permuting fragment occurrences permutes matching outcome occurrences; it
never deletes a repeated fragment or silently deduplicates a report. -/
theorem matchingModuleOutcomes_combine_perm (source : SourceIdentity)
    (moduleName : String) {left right : List (List ModuleTerminalOutcome)}
    (permuted : left.Perm right) :
    (matchingModuleOutcomes source moduleName (combineModuleFragments left)).Perm
      (matchingModuleOutcomes source moduleName (combineModuleFragments right)) := by
  simpa only [matchingModuleOutcomes, combineModuleFragments_eq_flatten] using
    (List.Perm.filter
      (fun outcome : ModuleTerminalOutcome =>
        decide (outcome.source = source ∧ outcome.moduleName = moduleName))
      permuted.flatten)

/-- The unique-PASS fragment condition is insensitive to occurrence order.
The contributing fragment is key-specific and repeated equal values still count. -/
theorem exactlyOnePassingFragment_perm (source : SourceIdentity)
    (moduleName : String) {left right : List (List ModuleTerminalOutcome)}
    (permuted : left.Perm right) :
    ExactlyOnePassingFragment source moduleName left ↔
      ExactlyOnePassingFragment source moduleName right := by
  have outcomesPerm := matchingModuleOutcomes_combine_perm source moduleName permuted
  constructor
  · intro exactOne
    have sole := (matchingModuleOutcomes_combine_singleton_iff source moduleName left).mpr
      exactOne
    exact (matchingModuleOutcomes_combine_singleton_iff source moduleName right).mp
      ((outcomesPerm.symm.trans (List.Perm.of_eq sole)).eq_singleton)
  · intro exactOne
    have sole := (matchingModuleOutcomes_combine_singleton_iff source moduleName right).mpr
      exactOne
    exact (matchingModuleOutcomes_combine_singleton_iff source moduleName left).mp
      ((outcomesPerm.trans (List.Perm.of_eq sole)).eq_singleton)

/-- Arrival order of finitely many fragments does not change per-required-key
success. Permutation preserves occurrences; mere set membership does not suffice.
No source completeness, compiler outcome or receipt acceptance is asserted. -/
theorem modulesSucceeded_combine_perm (source : SourceIdentity)
    (required : List String) {left right : List (List ModuleTerminalOutcome)}
    (permuted : left.Perm right) :
    ModulesSucceeded source required (combineModuleFragments left) ↔
      ModulesSucceeded source required (combineModuleFragments right) := by
  rw [modulesSucceeded_combine_iff, modulesSucceeded_combine_iff]
  constructor
  · intro fragmented moduleName needed
    exact (exactlyOnePassingFragment_perm source moduleName permuted).mp
      (fragmented moduleName needed)
  · intro fragmented moduleName needed
    exact (exactlyOnePassingFragment_perm source moduleName permuted).mpr
      (fragmented moduleName needed)

/-- The existing nonempty, duplicate-free target wrapper is preserved by the
same fragment permutation; its inventory hypotheses are not weakened. -/
theorem nonvacuousModulesSucceeded_combine_perm (source : SourceIdentity)
    (required : List String) {left right : List (List ModuleTerminalOutcome)}
    (permuted : left.Perm right) :
    NonvacuousModulesSucceeded source required (combineModuleFragments left) ↔
      NonvacuousModulesSucceeded source required (combineModuleFragments right) := by
  constructor
  · intro accepted
    exact ⟨accepted.1, accepted.2.1,
      (modulesSucceeded_combine_perm source required permuted).mp accepted.2.2⟩
  · intro accepted
    exact ⟨accepted.1, accepted.2.1,
      (modulesSucceeded_combine_perm source required permuted).mpr accepted.2.2⟩

namespace FragmentPermutationFixtures

/-- Equal fragment-value membership is weaker than permutation. Repeating the
sole PASS-valued fragment keeps its set of values but changes success to failure.
This is a symbolic predicate fixture, not a checked execution report. -/
theorem fragment_membership_does_not_preserve_success
    (source : SourceIdentity) (moduleName : String) :
    (∀ fragment : List ModuleTerminalOutcome,
      fragment ∈ [[passingOutcome source moduleName]] ↔
        fragment ∈ [[passingOutcome source moduleName],
          [passingOutcome source moduleName]]) ∧
      ModulesSucceeded source [moduleName]
        (combineModuleFragments [[passingOutcome source moduleName]]) ∧
      ¬ ModulesSucceeded source [moduleName]
        (combineModuleFragments [[passingOutcome source moduleName],
          [passingOutcome source moduleName]]) := by
  constructor
  · intro fragment
    simp
  · constructor
    · intro key needed
      have same : key = moduleName := by simpa using needed
      subst key
      simp [combineModuleFragments, matchingModuleOutcomes, passingOutcome]
    · intro succeeded
      have impossible := succeeded moduleName (by simp)
      simp [combineModuleFragments, matchingModuleOutcomes, passingOutcome] at impossible

end FragmentPermutationFixtures

namespace Fixtures

/-- Symbolic fixture tokens, NOT a checked Git checkout or actual receipt. -/
def source : SourceIdentity where
  repository := "grwtsk/math"
  revision := "fixture-revision-A"
  tree := "fixture-tree-A"
  targetPath := "verification/spectral-descent-v1.toml"
  targetBlob := "fixture-target-A"
  toolchainFile := "lean-toolchain"
  toolchainName := "leanprover/lean4:v4.33.0"
  toolchainBlob := "fixture-toolchain-A"
  dependencyManifestPath := "lake-manifest.json"
  dependencyManifestBlob := "fixture-lock-A"
  lakefileBlob := "fixture-lakefile-A"
  mathlibRevision := "db584cd6d46c92f209a44c0f1c829460d327499d"

def target : Header where
  schema := supportedSchema
  targetId := "fixture"
  source := source
  rootModule := "GRWTSK"
  buildTarget := "GRWTSK"

def changedRevision : Header :=
  { target with source := { source with revision := "fixture-revision-B" } }

def unknownVersion : Header :=
  { target with schema := "grwtsk-math-replay-target-v999" }

theorem exact_header_is_consistent : HeaderMatches target target :=
  matches_self target rfl

theorem wrong_revision_is_rejected : ¬ HeaderMatches target changedRevision :=
  reject_revision_drift (by decide)

theorem unknown_version_is_rejected : ¬ HeaderMatches unknownVersion unknownVersion :=
  reject_unknown_schema (by decide)

theorem root_only_is_not_leaf_coverage :
    ¬ (true = true ∧ ModulesCovered ["GRWTSK.Leaf"] []) :=
  root_build_cannot_hide_omission true ["GRWTSK.Leaf"] [] "GRWTSK.Leaf"
    (by simp) (by simp)

/-- Terminal outcome fixtures are symbolic records, not execution evidence. -/
def leafModule : String := "GRWTSK.Leaf"

def passResult : ModuleTerminalOutcome :=
  passingOutcome source leafModule

def failedResult : ModuleTerminalOutcome where
  source := source
  moduleName := leafModule
  status := .failed

def notRunResult : ModuleTerminalOutcome where
  source := source
  moduleName := leafModule
  status := .notRun

def unavailableResult : ModuleTerminalOutcome where
  source := source
  moduleName := leafModule
  status := .unavailable

def differentSource : SourceIdentity :=
  { source with revision := "fixture-revision-B" }

def wrongIdentityPass : ModuleTerminalOutcome :=
  passingOutcome differentSource leafModule

theorem one_exact_pass_succeeds :
    ModulesSucceeded source [leafModule] [passResult] := by
  intro moduleName needed
  have nameEq : moduleName = leafModule := by
    simpa using needed
  subst moduleName
  simp [matchingModuleOutcomes, passingOutcome, passResult]

/-- Low-level empty-list success is deliberately preserved as vacuous. -/
theorem empty_required_low_level_is_vacuous :
    ModulesSucceeded source [] [] := by
  intro _ needed
  cases needed

/-- The low-level predicate does not inspect duplicate required entries. -/
theorem duplicate_required_low_level_still_succeeds :
    ModulesSucceeded source [leafModule, leafModule] [passResult] := by
  intro moduleName needed
  have single : moduleName ∈ [leafModule] := by simpa using needed
  exact one_exact_pass_succeeds moduleName single

/-- A single named leaf with one matching PASS satisfies the stronger target. -/
theorem nonvacuous_one_exact_pass_succeeds :
    NonvacuousModulesSucceeded source [leafModule] [passResult] := by
  exact ⟨by simp, by simp, one_exact_pass_succeeds⟩

/-- An empty target is rejected even though low-level success is vacuous. -/
theorem nonvacuous_empty_required_rejected :
    ¬ NonvacuousModulesSucceeded source [] [] := by
  intro accepted
  exact accepted.1 rfl

/-- Repeating a required module is rejected even with its sole exact PASS. -/
theorem nonvacuous_duplicate_required_rejected :
    ¬ NonvacuousModulesSucceeded source [leafModule, leafModule] [passResult] := by
  intro accepted
  have duplicated : ¬ ([leafModule, leafModule] : List String).Nodup := by simp
  exact duplicated accepted.2.1

theorem failed_outcome_is_rejected :
    ¬ ModulesSucceeded source [leafModule] [failedResult] := by
  intro succeeded
  have h := succeeded leafModule (by simp)
  simp [matchingModuleOutcomes, passingOutcome, failedResult] at h

theorem not_run_outcome_is_rejected :
    ¬ ModulesSucceeded source [leafModule] [notRunResult] := by
  intro succeeded
  have h := succeeded leafModule (by simp)
  simp [matchingModuleOutcomes, passingOutcome, notRunResult] at h

theorem unavailable_outcome_is_rejected :
    ¬ ModulesSucceeded source [leafModule] [unavailableResult] := by
  intro succeeded
  have h := succeeded leafModule (by simp)
  simp [matchingModuleOutcomes, passingOutcome, unavailableResult] at h

theorem duplicate_passes_are_rejected :
    ¬ ModulesSucceeded source [leafModule] [passResult, passResult] := by
  intro succeeded
  have h := succeeded leafModule (by simp)
  simp [matchingModuleOutcomes, passingOutcome, passResult] at h

theorem conflicting_outcomes_are_rejected :
    ¬ ModulesSucceeded source [leafModule] [passResult, failedResult] := by
  intro succeeded
  have h := succeeded leafModule (by simp)
  simp [matchingModuleOutcomes, passingOutcome, passResult, failedResult] at h

theorem different_source_identity : differentSource ≠ source := by
  decide

theorem wrong_source_identity_is_rejected :
    ¬ ModulesSucceeded source [leafModule] [wrongIdentityPass] := by
  intro succeeded
  have h := succeeded leafModule (by simp)
  simp [matchingModuleOutcomes, wrongIdentityPass, passingOutcome,
    different_source_identity] at h

theorem root_only_terminal_success_is_rejected :
    ¬ (true = true ∧ ModulesSucceeded source [leafModule] []) := by
  intro reported
  have h := reported.2 leafModule (by simp)
  simp [matchingModuleOutcomes, passingOutcome] at h

end Fixtures

end GRWTSK.Logic.ProofChecking.ReplayTarget
```
