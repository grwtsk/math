# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Evidence.Variante125b622d480ce32946f4956526544cd0e91463e5b59c80df28886d70da2642d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbd84123adfc065c73c9af94f2681c52be5ce4cf` · SHA-256 `e125b622d480ce32946f4956526544cd0e91463e5b59c80df28886d70da2642d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Concept.Authority

/-!
# Evidence hierarchy

Contract-shaped propositions remain payloads. Theorem authority is reserved
for fixed predicates checked by Lean or reviewed imported theorems.
-/

namespace Mathematics.Authority

universe u

inductive EvidenceKind
  | fixedLeanPredicate
  | reviewedImportedTheorem
  | checkedNumericalCertificate
  | contractProposition
  | runtimeObservation
  | modelInference
  deriving DecidableEq, Repr

def contributesTheoremAuthority : EvidenceKind → Bool
  | .fixedLeanPredicate => true
  | .reviewedImportedTheorem => true
  | .checkedNumericalCertificate => false
  | .contractProposition => false
  | .runtimeObservation => false
  | .modelInference => false

/-- The proposition is fixed by the framework as a function of the payload. -/
structure FixedPredicateCertificate
    (Payload : Type u) (predicate : Payload → Prop) where
  payload : Payload
  proof : predicate payload

/-- A caller-selected proposition is retained without theorem promotion. -/
structure ContractPayload where
  proposition : Prop
  witness : proposition

@[simp] theorem no_promotion_from_model :
    contributesTheoremAuthority .modelInference = false := rfl

@[simp] theorem no_promotion_from_runtime_trace :
    contributesTheoremAuthority .runtimeObservation = false := rfl

@[simp] theorem no_promotion_from_contract :
    contributesTheoremAuthority .contractProposition = false := rfl

end Mathematics.Authority
```
