# hasLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2dc2819-f883-b835-9ca2-8494c976fb81",
  "kind": "lemma",
  "lexical_name": "hasLift",
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
  "slug": "haslift--beea09677a21bf2ade0bd6f9",
  "source": {
    "blob": "0c9f9a7d5a8791fc52059ca30ebb1c06b49fa5db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 235,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variantdd14d1aa33b2d02edb4e1ad313f2d62f370620c99438cc740e4b960e8ca0d613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beea09677a21bf2ade0bd6f90ca3d86037ace09d89f3467951d520a2b6b12aac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variantdd14d1aa33b2d02edb4e1ad313f2d62f370620c99438cc740e4b960e8ca0d613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2dc2819-f883-b835-9ca2-8494c976fb81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasLift : sq.HasLift := by
  obtain ⟨s, hs⟩ := (wellOrderInductionData c f g hF).surjective { w₂ := sq.w, .. }
  replace hs := congr_arg SqStruct.f' hs
  dsimp at hs
  let t : Cocone F := Cocone.mk X
    { app j := (s.1 ⟨j⟩).f'
      naturality j j' g := by simpa using congr_arg SqStruct.f' (s.2 g.op) }
  let l := hc.desc t
  have hl (j : J) : c.ι.app j ≫ l = (s.1 ⟨j⟩).f' := hc.fac t j
  exact ⟨⟨{
    l := l
    fac_left := by rw [hl, hs]
    fac_right := hc.hom_ext (fun j ↦ by rw [reassoc_of% (hl j), SqStruct.w₂])}⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variantdd14d1aa33b2d02edb4e1ad313f2d62f370620c99438cc740e4b960e8ca0d613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variantdd14d1aa33b2d02edb4e1ad313f2d62f370620c99438cc740e4b960e8ca0d613.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c9f9a7d5a8791fc52059ca30ebb1c06b49fa5db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
