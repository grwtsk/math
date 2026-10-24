# toTop₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd7784eb20c71d803d7e1ada9ec10fea584432c21337cdac7088f5779ee2eef9",
  "kind": "def",
  "lexical_name": "toTop₀",
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
  "slug": "totop--de0e660e278c362fa7bd64a9",
  "source": {
    "blob": "2c0638d36b72bd2c67e55b7922c2d50746090599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant316ac67198b4afa891f1309bbd643fab3e156b33a0f7f72c15ac9e230585925b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de0e660e278c362fa7bd64a9aaad25840c8914180a3afc7519f5010968ca55b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalSimplex/Variant316ac67198b4afa891f1309bbd643fab3e156b33a0f7f72c15ac9e230585925b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd7784eb20c71d803d7e1ada9ec10fea584432c21337cdac7088f5779ee2eef9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toTop₀ : CosimplicialObject TopCat.{0} where
  obj n := ↧(StdSimplex ℝ (Fin (n.len + 1)))
  map f := TopCat.ofHom ⟨_, StdSimplex.continuous_map ℝ f⟩
  map_comp f g := by
    ext : 1
    simp [← StdSimplex.map_comp]
    rfl

/-- The functor `SimplexCategory ⥤ TopCat.{u}`
associating the topological `n`-simplex to `⦋n⦌ : SimplexCategory`. -/
@[simps! obj map, pp_with_univ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalSimplex/Variant316ac67198b4afa891f1309bbd643fab3e156b33a0f7f72c15ac9e230585925b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant316ac67198b4afa891f1309bbd643fab3e156b33a0f7f72c15ac9e230585925b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c0638d36b72bd2c67e55b7922c2d50746090599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
