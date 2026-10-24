# comp_rightInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:868c5ce4-533f-15cf-6fd1-362a8c100baa",
  "kind": "theorem",
  "lexical_name": "comp_rightInv",
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
  "slug": "comp-rightinv--79a28fdb8860c7c558c554af",
  "source": {
    "blob": "b7b66d12286c6bf8da26e3d2d443224f465865bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 257,
    "path": "GRWTSK/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79a28fdb8860c7c558c554af6208f76ad0472eced22e1392542b31571c7b1e7e",
  "verification": {
    "reference": "docs/verification/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:868c5ce4-533f-15cf-6fd1-362a8c100baa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_rightInv (p : FormalMultilinearSeries 𝕜 E F) (i : E ≃L[𝕜] F)
    (h : p 1 = (continuousMultilinearCurryFin1 𝕜 E F).symm i) (h0 : p 0 = 0) :
    p.comp (rightInv p i) = id 𝕜 F := by
  ext (n v)
  match n with
  | 0 =>
    simp only [h0, ContinuousMultilinearMap.zero_apply, id_apply_ne_one, Ne.def, not_false_iff,
      zero_ne_one, comp_coeff_zero']
  | 1 =>
    simp only [comp_coeff_one, h, rightInv_coeff_one, ContinuousLinearEquiv.apply_symm_apply,
      id_apply_one, ContinuousLinearEquiv.coe_apply, continuousMultilinearCurryFin1_symm_apply]
  | n + 2 =>
    have N : 0 < n + 2 := by norm_num
    simp [comp_rightInv_aux1 N, h, rightInv, lt_irrefl n, show n + 2 ≠ 1 by norm_num,
      ← sub_eq_add_neg, sub_eq_zero, comp_rightInv_aux2, -Set.toFinset_setOf]
#align formal_multilinear_series.comp_right_inv FormalMultilinearSeries.comp_rightInv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variant87dd451452f9601f1384a052e8ebdcd47edc20e3cf3809c32d753ffc915667d5.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7b66d12286c6bf8da26e3d2d443224f465865bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
