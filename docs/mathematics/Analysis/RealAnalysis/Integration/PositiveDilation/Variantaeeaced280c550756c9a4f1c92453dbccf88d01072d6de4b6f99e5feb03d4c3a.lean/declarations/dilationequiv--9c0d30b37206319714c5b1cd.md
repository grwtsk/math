# dilationEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98869c9664eef8301a7966d911114605a13d885d3c92685432ca1ad5446e2d26",
  "kind": "def",
  "lexical_name": "dilationEquiv",
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
  "slug": "dilationequiv--9c0d30b37206319714c5b1cd",
  "source": {
    "blob": "38b72e207beb69988f94fdb6aa2134ca904c5c93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 138,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c0d30b37206319714c5b1cdee75b66aef8d78830bd81a52253a5e7ad8219ce8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98869c9664eef8301a7966d911114605a13d885d3c92685432ca1ad5446e2d26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dilationEquiv (a : ℝ) (ha : 0 < a) : PositiveL2 ≃ₗᵢ[ℂ] PositiveL2 :=
  { dilationIsometry a ha with
    invFun := dilate a⁻¹ (inv_pos.mpr ha)
    left_inv := dilate_inverse ha
    right_inv := fun f => by
      change dilate a ha (dilate a⁻¹ (inv_pos.mpr ha) f) = f
      simpa only [inv_inv] using dilate_inverse (inv_pos.mpr ha) f }

end ContinuousResearch.PositiveDilation

/- Complete public type, proof and trusted dependency audits. -/

#check ContinuousResearch.PositiveDilation.positiveMeasure
#print axioms ContinuousResearch.PositiveDilation.positiveMeasure
#print ContinuousResearch.PositiveDilation.positiveMeasure

#check ContinuousResearch.PositiveDilation.PositiveL2
#print axioms ContinuousResearch.PositiveDilation.PositiveL2
#print ContinuousResearch.PositiveDilation.PositiveL2

#check ContinuousResearch.PositiveDilation.dilateFunc
#print axioms ContinuousResearch.PositiveDilation.dilateFunc
#print ContinuousResearch.PositiveDilation.dilateFunc

#check ContinuousResearch.PositiveDilation.positiveMeasure_map_mul
#print axioms ContinuousResearch.PositiveDilation.positiveMeasure_map_mul
#print ContinuousResearch.PositiveDilation.positiveMeasure_map_mul

#check ContinuousResearch.PositiveDilation.positive_mul_quasi
#print axioms ContinuousResearch.PositiveDilation.positive_mul_quasi
#print ContinuousResearch.PositiveDilation.positive_mul_quasi

#check ContinuousResearch.PositiveDilation.dilateFunc_memLp
#print axioms ContinuousResearch.PositiveDilation.dilateFunc_memLp
#print ContinuousResearch.PositiveDilation.dilateFunc_memLp

#check ContinuousResearch.PositiveDilation.dilate
#print axioms ContinuousResearch.PositiveDilation.dilate
#print ContinuousResearch.PositiveDilation.dilate

#check ContinuousResearch.PositiveDilation.dilate_ae
#print axioms ContinuousResearch.PositiveDilation.dilate_ae
#print ContinuousResearch.PositiveDilation.dilate_ae

#check ContinuousResearch.PositiveDilation.norm_sq_integral
#print axioms ContinuousResearch.PositiveDilation.norm_sq_integral
#print ContinuousResearch.PositiveDilation.norm_sq_integral

#check ContinuousResearch.PositiveDilation.dilate_norm_sq
#print axioms ContinuousResearch.PositiveDilation.dilate_norm_sq
#print ContinuousResearch.PositiveDilation.dilate_norm_sq

#check ContinuousResearch.PositiveDilation.dilate_norm
#print axioms ContinuousResearch.PositiveDilation.dilate_norm
#print ContinuousResearch.PositiveDilation.dilate_norm

#check ContinuousResearch.PositiveDilation.dilate_one
#print axioms ContinuousResearch.PositiveDilation.dilate_one
#print ContinuousResearch.PositiveDilation.dilate_one

#check ContinuousResearch.PositiveDilation.dilate_comp
#print axioms ContinuousResearch.PositiveDilation.dilate_comp
#print ContinuousResearch.PositiveDilation.dilate_comp

#check ContinuousResearch.PositiveDilation.dilate_inverse
#print axioms ContinuousResearch.PositiveDilation.dilate_inverse
#print ContinuousResearch.PositiveDilation.dilate_inverse

#check ContinuousResearch.PositiveDilation.dilate_add
#print axioms ContinuousResearch.PositiveDilation.dilate_add
#print ContinuousResearch.PositiveDilation.dilate_add

#check ContinuousResearch.PositiveDilation.dilate_smul
#print axioms ContinuousResearch.PositiveDilation.dilate_smul
#print ContinuousResearch.PositiveDilation.dilate_smul

#check ContinuousResearch.PositiveDilation.dilationIsometry
#print axioms ContinuousResearch.PositiveDilation.dilationIsometry
#print ContinuousResearch.PositiveDilation.dilationIsometry

#check ContinuousResearch.PositiveDilation.dilationEquiv
#print axioms ContinuousResearch.PositiveDilation.dilationEquiv
#print ContinuousResearch.PositiveDilation.dilationEquiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b72e207beb69988f94fdb6aa2134ca904c5c93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
