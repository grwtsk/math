# embeddingPiTangent_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6b391a8-850b-3f7c-3c97-359b5bfd732f",
  "kind": "theorem",
  "lexical_name": "embeddingPiTangent_injOn",
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
  "slug": "embeddingpitangent-injon--cb822a49b272cbd393d45369",
  "source": {
    "blob": "881254d50fa2f749246aecc5549cab2725d1dbb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 72,
    "path": "GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb822a49b272cbd393d45369bc13d5b4a1cd37773c6ae7fd85bfdbe587e0fb38",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6b391a8-850b-3f7c-3c97-359b5bfd732f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embeddingPiTangent_injOn : InjOn f.embeddingPiTangent s := by
  intro x hx y _ h
  simp only [embeddingPiTangent_coe, funext_iff] at h
  obtain ⟨h₁, h₂⟩ := Prod.mk_inj.1 (h (f.ind x hx))
  rw [f.apply_ind x hx] at h₂
  rw [← h₂, f.apply_ind x hx, one_smul, one_smul] at h₁
  have := f.mem_extChartAt_source_of_eq_one h₂.symm
  exact (extChartAt I (f.c _)).injOn (f.mem_extChartAt_ind_source x hx) this h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantc8468b8eaf3e5a1507d2a48165e888a3d6230a15bb2e8a515dc0d5882901e7a0.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `881254d50fa2f749246aecc5549cab2725d1dbb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
