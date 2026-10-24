# pullback_snd_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ef53f60-af8d-bad8-405f-304142eec4bf",
  "kind": "theorem",
  "lexical_name": "pullback_snd_range",
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
  "slug": "pullback-snd-range--e86d7b607220c6b2473be675",
  "source": {
    "blob": "de082675fe83066fa870e98ba997eab77950dedb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e86d7b607220c6b2473be675eff7a935d4d17e85ae5e277ace15f94e281df967",
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

Occurrence: `result:9ef53f60-af8d-bad8-405f-304142eec4bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem pullback_snd_range {X Y S : TopCat.{u}} (f : X ⟶ S) (g : Y ⟶ S) :
    Set.range (pullback.snd f g) = { y : Y | ∃ x : X, f x = g y } := by
  ext y
  constructor
  · rintro ⟨x, rfl⟩
    use pullback.fst f g x
    exact CategoryTheory.congr_fun pullback.condition x
  · rintro ⟨x, eq⟩
    use (TopCat.pullbackIsoProdSubtype f g).inv ⟨⟨x, y⟩, eq⟩
    rw [pullbackIsoProdSubtype_inv_snd_apply]

set_option backward.isDefEq.respectTransparency false in
/-- If there is a diagram where the morphisms `W ⟶ Y` and `X ⟶ Z` are embeddings,
then the induced morphism `W ×ₛ X ⟶ Y ×ₜ Z` is also an embedding.

```
W ⟶ Y
 ↘   ↘
  S ⟶ T
 ↗   ↗
X ⟶ Z
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pullbacks/Variant10a141c5c15213904078da354e60a09329e787980643a971b664993b525505b9.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de082675fe83066fa870e98ba997eab77950dedb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
