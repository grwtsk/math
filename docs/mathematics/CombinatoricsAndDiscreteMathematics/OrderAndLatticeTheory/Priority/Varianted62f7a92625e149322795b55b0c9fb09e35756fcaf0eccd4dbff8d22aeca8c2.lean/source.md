# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Priority.Varianted62f7a92625e149322795b55b0c9fb09e35756fcaf0eccd4dbff8d22aeca8c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce336f0e0ff88f11e7336c07a5ace7700b57c739` · SHA-256 `e92b8f240b78b87b8c2096ea2b04eea9483978355db9e92ee884c568c86fba4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PriorityKey.Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.PriorityKey.Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede","mathematical_subject":"Algebra.OrderTheory","original_sha256":"2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/staged-validation-6c1160a309e689e3/Mathematics/Operational/Priority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Operational.Coordinates

/-!
# Exact priority from beacon coordinates

The priority key contains only derived beacon position and velocity, certified
boundary and stratum defects, and structural rank.  A priority relation is
admitted only through a comparator carrying proofs of the declared order laws.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PriorityKey.Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede

namespace Mathematics.Operational

universe u v w z

/-- Exact inputs to an operational priority comparison. -/
structure PriorityKey (Coordinate : Type u) where
  position : Coordinate
  velocity : Coordinate
  surgeryBoundaryDefect : ℝ
  targetStratumDefect : ℝ
  structuralRank : Nat

/-- Build the priority key directly from beacon-relative derived observables. -/
noncomputable def BeaconFamily.priorityKey
    {State : Type v}
    {Time : Type w}
    {Automorphism : Type z}
    {Label : Type u}
    {intrinsic : Setoid State}
    {action : Automorphism → State → State}
    {flow : Time → State → State}
    (family : BeaconFamily intrinsic action flow Label)
    (trajectory : ℝ → State)
    (time : ℝ)
    (surgeryBoundaryDefect targetStratumDefect : ℝ)
    (structuralRank : Nat) :
    PriorityKey (Label → ℝ × ℝ) where
  position :=
    BeaconFamily.position (State := State)
      family (trajectory time)
  velocity :=
    BeaconFamily.velocity
      (State := State)
      (Time := Time)
      (Automorphism := Automorphism)
      (intrinsic := intrinsic)
      (action := action)
      (flow := flow)
      family trajectory time
  surgeryBoundaryDefect := surgeryBoundaryDefect
  targetStratumDefect := targetStratumDefect
  structuralRank := structuralRank

/-- Whether the certified comparator declares a strict partial or total order. -/
inductive ComparatorOrderKind
  | partialOrder
  | totalOrder
  deriving DecidableEq, Repr

/-- An executable comparison accompanied by proofs of its exact order relation. -/
structure ProofCarryingComparator (Key : Type u) where
  orderKind : ComparatorOrderKind
  Less : Key → Key → Prop
  compare : Key → Key → Ordering
  less_iff :
    ∀ left right, compare left right = .lt ↔ Less left right
  irreflexive : ∀ key, ¬ Less key key
  transitive :
    ∀ ⦃first second third⦄,
      Less first second → Less second third → Less first third
  totality :
    orderKind = .totalOrder →
      ∀ left right, left ≠ right → Less left right ∨ Less right left

/-- Priority is exactly the relation certified by the supplied comparator. -/
def PriorityLess
    (comparator : ProofCarryingComparator Key)
    (key : State → Key)
    (left right : State) : Prop :=
  comparator.Less (key left) (key right)

/-- Executable comparison and declared priority relation coincide exactly. -/
theorem priorityLess_iff_compare
    (comparator : ProofCarryingComparator Key)
    (key : State → Key)
    (left right : State) :
    PriorityLess comparator key left right ↔
      comparator.compare (key left) (key right) = .lt :=
  (comparator.less_iff (key left) (key right)).symm

/-- The derived priority relation is irreflexive. -/
theorem priorityLess_irreflexive
    (comparator : ProofCarryingComparator Key)
    (key : State → Key)
    (state : State) :
    ¬ PriorityLess comparator key state state :=
  comparator.irreflexive (key state)

/-- The derived priority relation is transitive. -/
theorem priorityLess_transitive
    (comparator : ProofCarryingComparator Key)
    (key : State → Key)
    {first second third : State}
    (firstSecond : PriorityLess comparator key first second)
    (secondThird : PriorityLess comparator key second third) :
    PriorityLess comparator key first third :=
  comparator.transitive firstSecond secondThird

end Mathematics.Operational
```
