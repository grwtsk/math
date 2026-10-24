# pullback_snd_image_fst_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3fa2af3-11ec-8b9a-9981-b70409eed238",
  "kind": "theorem",
  "lexical_name": "pullback_snd_image_fst_preimage",
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
  "slug": "pullback-snd-image-fst-preimage--f3d30ecb4d9f39a13f22be27",
  "source": {
    "blob": "de082675fe83066fa870e98ba997eab77950dedb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 358,
    "path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3d30ecb4d9f39a13f22be27d76873d51218b14e0a426aee0b3b84eaa9bc759c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3fa2af3-11ec-8b9a-9981-b70409eed238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_snd_image_fst_preimage (f : X ⟶ Z) (g : Y ⟶ Z) (U : Set X) :
    (pullback.snd f g) '' (pullback.fst f g) ⁻¹' U =
      g ⁻¹' f '' U := by
  ext x
  constructor
  · rintro ⟨y, hy, rfl⟩
    exact
      ⟨(pullback.fst f g) y, hy, CategoryTheory.congr_fun pullback.condition y⟩
  · rintro ⟨y, hy, eq⟩
  -- next 5 lines were
  -- `exact ⟨(TopCat.pullbackIsoProdSubtype f g).inv ⟨⟨_, _⟩, eq⟩, by simpa, by simp⟩` before https://github.com/leanprover-community/mathlib4/pull/13170
    refine ⟨(TopCat.pullbackIsoProdSubtype f g).inv ⟨⟨_, _⟩, eq⟩, ?_, ?_⟩
    · simp only [coe_of, Set.mem_preimage]
      convert! hy
      rw [pullbackIsoProdSubtype_inv_fst_apply]
    · rw [pullbackIsoProdSubtype_inv_snd_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de082675fe83066fa870e98ba997eab77950dedb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
