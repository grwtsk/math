# hasStrictDerivAt_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93fa2fa9-2251-155a-a5f4-12399011d57c",
  "kind": "lemma",
  "lexical_name": "hasStrictDerivAt_smul",
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
  "slug": "hasstrictderivat-smul--5ded020f7a6e940bfc5c8493",
  "source": {
    "blob": "99f59935cef06f0fcf1929639d48e29a7f138b40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 182,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ded020f7a6e940bfc5c84932306671830ed84c28087397c3b5a66e51fd049a7",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93fa2fa9-2251-155a-a5f4-12399011d57c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasStrictDerivAt_smul {g : GL (Fin 2) ℝ} (hg : 0 < g.val.det) (τ : ℍ) :
    HasStrictDerivAt (fun z ↦ ↑(g • ofComplex z) : ℂ → ℂ) (g.val.det / denom g τ ^ 2) τ := by
  suffices HasStrictDerivAt (num g / denom g) (g.val.det / denom g τ ^ 2) τ by
    refine this.congr_of_eventuallyEq ?_
    rw [← isOpenEmbedding_coe.map_nhds_eq, eventuallyEq_map]
    simp [Function.comp_def, coe_smul_of_det_pos hg]
  convert!
    ((hasStrictDerivAt_id (τ : ℂ)).const_mul _ |>.add_const _).div
      ((hasStrictDerivAt_id (τ : ℂ)).const_mul _ |>.add_const _) _ using 2
  · simp [Matrix.det_fin_two]; ring
  · apply denom_ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Manifold/Variant4e6a7b963d7e1b7a612b63182910dcad586443e55aa118890058627a1532b977.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99f59935cef06f0fcf1929639d48e29a7f138b40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
