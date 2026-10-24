# Tendsto.prod_map_prod_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e80f1b86c1ff06c1f4c56406ee47dfc45e3f1918",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90c86d8e-6009-f315-dae0-4f5bca8285fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4a9b4c0-040d-761c-0ff0-55f40b12efbc",
  "kind": "theorem",
  "lexical_name": "Tendsto.prod_map_prod_atBot",
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
  "slug": "tendsto-prod-map-prod-atbot--221823dcf9c51adbd77795f5",
  "source": {
    "blob": "e80f1b86c1ff06c1f4c56406ee47dfc45e3f1918",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:221823dcf9c51adbd77795f5b7e27660c1fddee0ff6266fc2d4fd31c2e3bec0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4a9b4c0-040d-761c-0ff0-55f40b12efbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.prod_map_prod_atBot [Preorder γ] {F : Filter α} {G : Filter β} {f : α → γ}
    {g : β → γ} (hf : Tendsto f F atBot) (hg : Tendsto g G atBot) :
    Tendsto (Prod.map f g) (F ×ˢ G) atBot := by
  rw [← prod_atBot_atBot_eq]
  exact hf.prodMap hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80f1b86c1ff06c1f4c56406ee47dfc45e3f1918` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
