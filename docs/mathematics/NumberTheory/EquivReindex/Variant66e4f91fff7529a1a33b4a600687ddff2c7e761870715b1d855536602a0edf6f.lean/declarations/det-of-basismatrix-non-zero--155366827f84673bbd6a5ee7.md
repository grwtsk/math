# det_of_basisMatrix_non_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89a2ed64-4ac5-fd28-469e-905311054836",
  "kind": "theorem",
  "lexical_name": "det_of_basisMatrix_non_zero",
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
  "slug": "det-of-basismatrix-non-zero--155366827f84673bbd6a5ee7",
  "source": {
    "blob": "b97ef800f74f018462c59d710029ac2761fe51fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 47,
    "path": "GRWTSK/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:155366827f84673bbd6a5ee79b55159062b08fafa2f079fce5e68a35976ee8ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89a2ed64-4ac5-fd28-469e-905311054836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_of_basisMatrix_non_zero [DecidableEq (K →+* ℂ)] : (basisMatrix K).det ≠ 0 := by
  let e : (K →+* ℂ) ≃ ChooseBasisIndex ℤ (𝓞 K) := equivReindex K
  let N := Algebra.embeddingsMatrixReindex ℚ ℂ (fun i => integralBasis K (e i))
    RingHom.equivRatAlgHom
  rw [show (basisMatrix K) = N by
    ext:2; simp only [N, transpose_apply, latticeBasis_apply, integralBasis_apply,
    of_apply, apply_at]; rfl, ← pow_ne_zero_iff two_ne_zero]
  convert (map_ne_zero_iff _ (algebraMap ℚ ℂ).injective).mpr
    (Algebra.discr_not_zero_of_basis ℚ (integralBasis K))
  rw [← Algebra.discr_reindex ℚ (integralBasis K) e.symm]
  exact (Algebra.discr_eq_det_embeddingsMatrixReindex_pow_two ℚ ℂ
    (fun _ => integralBasis K (e _)) RingHom.equivRatAlgHom).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/EquivReindex/Variant66e4f91fff7529a1a33b4a600687ddff2c7e761870715b1d855536602a0edf6f.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b97ef800f74f018462c59d710029ac2761fe51fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
