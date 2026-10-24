# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PrimeCompactResilience.Variant677c73fa2b21debbd22956d8fbd9396e4943fe8d1095a9391f60a466c3bedb73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a040cc43d1b6ce28a778901060dbce9fb80457b` · SHA-256 `677c73fa2b21debbd22956d8fbd9396e4943fe8d1095a9391f60a466c3bedb73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.PrimeCompact

set_option autoImplicit false

namespace Think.Validation.PrimeCompactResilience

theorem admitted_prime_adjunction_preserves_old_source_tree
    (P : Think.RadoProjectedModularHeatflow.PrimeCompact.PrimeCompactAdjunctionPlan)
    (h : P.admitted) :
    P.oldSourceTreeRestrictionPreserved := by
  exact h.2.2.2

theorem admitted_prime_compact_pass_has_pnt_zero
    (P : Think.RadoProjectedModularHeatflow.PrimeCompact.PrimeCompactCanonicalPass)
    (h : P.admitted) :
    P.pntNormalizer.residue = 0 :=
  Think.RadoProjectedModularHeatflow.PrimeCompact.admitted_prime_compact_pass_has_pnt_residue_zero P h

theorem memory_prime_resilience_gives_stable_extension
    (W : Think.RadoProjectedModularHeatflow.MemoryCore.PrimeResilienceWitness)
    (h : W.admitted) :
    W.oldRestrictionPreserved ∧
      W.enhancedResidueResolved ∧
      W.torsionRestricts ∧
      W.scatteringIncrementStable :=
  Think.RadoProjectedModularHeatflow.MemoryCore.prime_resilience_admitted_gives_stable_extension W h

end Think.Validation.PrimeCompactResilience
```
