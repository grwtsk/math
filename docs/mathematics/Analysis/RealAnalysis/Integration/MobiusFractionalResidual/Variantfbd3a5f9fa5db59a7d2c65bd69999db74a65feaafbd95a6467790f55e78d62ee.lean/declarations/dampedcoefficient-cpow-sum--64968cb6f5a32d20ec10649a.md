# dampedCoefficient_cpow_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fab62cea-439d-a6fb-f11a-f259d64fc300",
  "kind": "theorem",
  "lexical_name": "dampedCoefficient_cpow_sum",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "dampedcoefficient-cpow-sum--64968cb6f5a32d20ec10649a",
  "source": {
    "blob": "1dd4e7deb9b1d8453206434307bf6e1539b5e878",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64968cb6f5a32d20ec10649aeb9cabd78064d3b6aab6f56f8648a7db0e1d6bea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fab62cea-439d-a6fb-f11a-f259d64fc300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedCoefficient_cpow_sum (X : ℕ) (ε : ℝ) (s : ℂ) (hX : 1 ≤ X) :
    (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) * (d : ℂ) ^ (-s)) =
      correctedNumerator X (s - 1 / 2 + (ε : ℂ)) := by
  rw [← dampedCoefficient_sum_eq_correctedNumerator X ε (s - 1 / 2) hX]
  apply Finset.sum_congr rfl
  intro d hd
  have hd0 : 0 < (d : ℝ) := by
    exact_mod_cast (show 0 < d by have := (Finset.mem_Icc.mp hd).1; omega)
  rw [Complex.cpow_def_of_ne_zero (by exact_mod_cast hd0.ne')]
  have hlog : Complex.log (d : ℂ) = (Real.log (d : ℝ) : ℂ) := by
    simpa only [Complex.ofReal_natCast] using (Complex.ofReal_log hd0.le).symm
  rw [hlog]
  congr 2
  ring

/-- The entire corrected residual has the requested exact signed zeta Mellin transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantfbd3a5f9fa5db59a7d2c65bd69999db74a65feaafbd95a6467790f55e78d62ee.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dd4e7deb9b1d8453206434307bf6e1539b5e878` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
