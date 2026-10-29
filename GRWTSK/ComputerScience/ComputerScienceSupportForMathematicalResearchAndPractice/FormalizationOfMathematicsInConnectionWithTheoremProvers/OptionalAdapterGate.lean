import Mathlib

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.OptionalAdapterGate

universe u

/-- Optional adapter families admitted by the application gate. -/
inductive Profile
  | graphGadget
  | rationalHodgeCell
  | framedPortOperator
  | geometricContact
  | hodgeHeat
  | soficLimit
  | compactReturn
  | finiteTrace
  | fredholmDivisor
  | orbitTrace
  | prismatic
  deriving DecidableEq, Repr

/-- The only three legal effects of an optional adapter on a residual ledger. -/
inductive Disposition
  | discharge
  | sharpen
  | add
  deriving DecidableEq, Repr

/-- Residual bounds are optional: `none` means structurally absent, not zero. -/
abbrev Ledger (Key : Type u) := Key → Option ℝ

/-- One proposed residual-ledger change. -/
structure Change (Key : Type u) where
  key : Key
  disposition : Disposition
  bound : ℝ
  bound_nonneg : 0 ≤ bound

namespace Change

variable {Key : Type u} [DecidableEq Key]

/-- Exact precondition for a residual update.

- discharge requires an existing entry and a proved zero bound;
- sharpen requires an existing bound and a no-larger replacement;
- add requires structural absence.
-/
def ValidFor (C : Change Key) (L : Ledger Key) : Prop :=
  match C.disposition with
  | .discharge => C.bound = 0 ∧ ∃ old, L C.key = some old
  | .sharpen => ∃ old, L C.key = some old ∧ C.bound ≤ old
  | .add => L C.key = none

/-- Apply one validated shape of update. Validation is carried separately by `AcceptedAdapter`. -/
def apply (C : Change Key) (L : Ledger Key) : Ledger Key :=
  fun key => if key = C.key then some C.bound else L key

@[simp]
theorem apply_at_key (C : Change Key) (L : Ledger Key) :
    C.apply L C.key = some C.bound := by
  simp [apply]

@[simp]
theorem apply_of_ne (C : Change Key) (L : Ledger Key)
    {key : Key} (h : key ≠ C.key) :
    C.apply L key = L key := by
  simp [apply, h]

omit [DecidableEq Key] in
/-- A valid discharge change has exactly zero replacement bound. -/
theorem discharge_bound_zero
    (key : Key) (bound : ℝ) (hbound : 0 ≤ bound) (L : Ledger Key)
    (h : (Change.mk key .discharge bound hbound).ValidFor L) :
    bound = 0 := by
  exact h.1

omit [DecidableEq Key] in
/-- A valid sharpen change exposes the old bound and the monotonicity proof. -/
theorem sharpen_exposes_old
    (key : Key) (bound : ℝ) (hbound : 0 ≤ bound) (L : Ledger Key)
    (h : (Change.mk key .sharpen bound hbound).ValidFor L) :
    ∃ old, L key = some old ∧ bound ≤ old := by
  exact h

omit [DecidableEq Key] in
/-- A valid add change can target only a structurally absent residual. -/
theorem add_requires_absent
    (key : Key) (bound : ℝ) (hbound : 0 ≤ bound) (L : Ledger Key)
    (h : (Change.mk key .add bound hbound).ValidFor L) :
    L key = none := by
  exact h

end Change

/-- Source-bound accepted optional adapter for one exact current ledger. -/
structure AcceptedAdapter
    {Key : Type u} [DecidableEq Key] (L : Ledger Key) where
  profile : Profile
  producerIdentity : String
  consumerIdentity : String
  sourceRevision : String
  theoremClaim : Prop
  theoremProof : theoremClaim
  sourceCompatibility : Prop
  sourceCompatibilityProof : sourceCompatibility
  change : Change Key
  validChange : change.ValidFor L

namespace AcceptedAdapter

variable {Key : Type u} [DecidableEq Key]
variable {L : Ledger Key}

/-- Applying one accepted adapter changes exactly its selected residual key. -/
def apply (A : AcceptedAdapter L) : Ledger Key :=
  A.change.apply L

@[simp]
theorem apply_at_key (A : AcceptedAdapter L) :
    A.apply A.change.key = some A.change.bound := by
  exact A.change.apply_at_key L

@[simp]
theorem apply_of_ne (A : AcceptedAdapter L)
    {key : Key} (h : key ≠ A.change.key) :
    A.apply key = L key := by
  exact A.change.apply_of_ne L h

end AcceptedAdapter

/-- Optional selection is structural. `none` performs no update. -/
def applySelected
    {Key : Type u} [DecidableEq Key]
    (L : Ledger Key) : Option (AcceptedAdapter L) → Ledger Key
  | none => L
  | some A => A.apply

@[simp]
theorem applySelected_none
    {Key : Type u} [DecidableEq Key] (L : Ledger Key) :
    applySelected L none = L := rfl

@[simp]
theorem applySelected_some
    {Key : Type u} [DecidableEq Key] (L : Ledger Key)
    (A : AcceptedAdapter L) :
    applySelected L (some A) = A.apply := rfl

/-- An absent optional route preserves every absent entry as absent; it cannot manufacture zero. -/
theorem absent_route_preserves_none
    {Key : Type u} [DecidableEq Key]
    (L : Ledger Key) {key : Key} (h : L key = none) :
    applySelected L none key = none := by
  simpa using h

/-- A selected adapter carries both its theorem and its source-compatibility proof. -/
theorem accepted_has_evidence
    {Key : Type u} [DecidableEq Key] {L : Ledger Key}
    (A : AcceptedAdapter L) :
    A.theoremClaim ∧ A.sourceCompatibility :=
  ⟨A.theoremProof, A.sourceCompatibilityProof⟩

namespace Fixtures

/-- Small residual key fixture. -/
inductive Key
  | transport
  | boundary
  deriving DecidableEq, Repr

/-- Empty fixture ledger: both residuals are absent, not zero. -/
def emptyLedger : Ledger Key := fun _ => none

/-- Adding one explicit transport bound. -/
def addTransport : AcceptedAdapter emptyLedger where
  profile := .framedPortOperator
  producerIdentity := "finite operator-port fixture"
  consumerIdentity := "transport residual"
  sourceRevision := "local-fixture"
  theoremClaim := (0 : ℝ) ≤ 3
  theoremProof := by norm_num
  sourceCompatibility := True
  sourceCompatibilityProof := trivial
  change := ⟨.transport, .add, 3, by norm_num⟩
  validChange := rfl

/-- Selecting the fixture creates only the selected entry. -/
theorem addTransport_result :
    addTransport.apply .transport = some 3 ∧
      addTransport.apply .boundary = none := by
  constructor
  · simp [AcceptedAdapter.apply, addTransport, Change.apply]
  · simp [AcceptedAdapter.apply, addTransport, Change.apply, emptyLedger]

/-- Selecting no adapter leaves the empty ledger empty. -/
theorem noSelection_result :
    applySelected emptyLedger none = emptyLedger := rfl

end Fixtures

end GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.OptionalAdapterGate
