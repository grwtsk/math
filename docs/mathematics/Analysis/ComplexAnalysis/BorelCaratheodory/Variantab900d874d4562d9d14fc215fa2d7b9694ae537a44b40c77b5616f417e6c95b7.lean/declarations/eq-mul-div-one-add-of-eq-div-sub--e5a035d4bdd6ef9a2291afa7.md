# eq_mul_div_one_add_of_eq_div_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bf68135-0c6b-2d91-9f1d-86e1db3da4fb",
  "kind": "lemma",
  "lexical_name": "eq_mul_div_one_add_of_eq_div_sub",
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
  "slug": "eq-mul-div-one-add-of-eq-div-sub--e5a035d4bdd6ef9a2291afa7",
  "source": {
    "blob": "93a02ec1040d17eb0b2a8a1b2b4ccaa688fbcdfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 52,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5a035d4bdd6ef9a2291afa76d4dc94c7c6675f002d7b6914c65874a84258914",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bf68135-0c6b-2d91-9f1d-86e1db3da4fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_mul_div_one_add_of_eq_div_sub (_ : M ≠ 0) (_ : 2 * M - z ≠ 0)
    (h : w = z / (2 * M - z)) : z = 2 * M * w / (1 + w) := by
  rw [h]; field_simp; ring_nf; rw [mul_inv_cancel_right₀]; norm_cast

/-- Norm inequality for the inverse Schwarz transform: if `‖w‖ < 1`, then
`‖2M * w / (1 + w)‖ ≤ 2M * ‖w‖ / (1 - ‖w‖)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93a02ec1040d17eb0b2a8a1b2b4ccaa688fbcdfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
