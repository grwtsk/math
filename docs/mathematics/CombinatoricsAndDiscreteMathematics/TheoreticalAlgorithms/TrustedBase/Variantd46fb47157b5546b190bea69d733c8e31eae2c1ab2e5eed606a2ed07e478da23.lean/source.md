# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TrustedBase.Variantd46fb47157b5546b190bea69d733c8e31eae2c1ab2e5eed606a2ed07e478da23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d92c51499d750e7335b47dd29d80184e1e649725` · SHA-256 `d46fb47157b5546b190bea69d733c8e31eae2c1ab2e5eed606a2ed07e478da23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.WorldModel.AssumptionContext

/-!
# Recorded trusted-base closure

This record reports a checker invocation's declared and observed axiom names.
It remains data. In particular, a Boolean `closureComplete` flag cannot itself
produce a Lean proof.
-/

namespace Surface.ContinuousAssurance.WorldModel

/-- Pinned checker and observed trusted-base metadata. -/
structure TrustedBaseClosure where
  checkerId : ArtifactIdentity
  checkerVersion : String
  allowedAxioms : List String
  observedAxioms : List String
  closureComplete : Bool
  evidence : List ArtifactIdentity
  deriving DecidableEq, Repr

/-- Declarative closure means completeness plus observed/allowed inclusion. -/
def TrustedBaseClosure.DeclaredClosed (closure : TrustedBaseClosure) : Prop :=
  closure.closureComplete = true ∧
    ∀ axiomName ∈ closure.observedAxioms,
      axiomName ∈ closure.allowedAxioms

/-- Declared closure exposes the observed/allowed inclusion and nothing more. -/
theorem TrustedBaseClosure.observed_allowed
    {closure : TrustedBaseClosure}
    (closed : closure.DeclaredClosed)
    {axiomName : String}
    (observed : axiomName ∈ closure.observedAxioms) :
    axiomName ∈ closure.allowedAxioms :=
  closed.2 axiomName observed

end Surface.ContinuousAssurance.WorldModel

```
