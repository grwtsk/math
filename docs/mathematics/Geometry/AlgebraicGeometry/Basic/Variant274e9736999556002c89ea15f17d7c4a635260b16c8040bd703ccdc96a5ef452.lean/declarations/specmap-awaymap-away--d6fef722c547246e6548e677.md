# SpecMap_awayMap_awayι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "080e13f6216621fcf7dadf6c41c4a97d56e1b78d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a355a4c-84e9-ffc2-97df-fdaa2e91c40d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c228f025-347a-2f39-2551-7e2e121a8b78",
  "kind": "lemma",
  "lexical_name": "SpecMap_awayMap_awayι",
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
  "slug": "specmap-awaymap-away--d6fef722c547246e6548e677",
  "source": {
    "blob": "080e13f6216621fcf7dadf6c41c4a97d56e1b78d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 248,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6fef722c547246e6548e677e49f9481455ea3e89415b7a20620ac8fbcdac0a0",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c228f025-347a-2f39-2551-7e2e121a8b78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SpecMap_awayMap_awayι :
    Spec.map (CommRingCat.ofHom (awayMap 𝒜 g_deg hx)) ≫ awayι 𝒜 f f_deg hm =
      awayι 𝒜 x (hx ▸ SetLike.mul_mem_graded f_deg g_deg) (hm.trans_le (m.le_add_right m')) := by
  rw [awayι, awayι, Iso.eq_inv_comp, basicOpenIsoSpec_hom, basicOpenToSpec_SpecMap_awayMap_assoc,
  ← basicOpenIsoSpec_hom _ _ f_deg hm, Iso.hom_inv_id_assoc, Scheme.homOfLE_ι]

/-- The isomorphism `D₊(f) ×[Proj 𝒜] D₊(g) ≅ D₊(fg)`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `080e13f6216621fcf7dadf6c41c4a97d56e1b78d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
