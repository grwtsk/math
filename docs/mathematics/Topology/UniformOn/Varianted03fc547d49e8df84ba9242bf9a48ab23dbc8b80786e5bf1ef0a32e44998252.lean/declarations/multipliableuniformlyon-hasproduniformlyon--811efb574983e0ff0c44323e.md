# MultipliableUniformlyOn.hasProdUniformlyOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e57db90c4f6a06f568460539fa5a492983480b2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9107a750-5bf3-31be-1d65-2cea4971718d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af3dd8d9-fe65-1480-a9fd-ea365234c753",
  "kind": "theorem",
  "lexical_name": "MultipliableUniformlyOn.hasProdUniformlyOn",
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
  "slug": "multipliableuniformlyon-hasproduniformlyon--811efb574983e0ff0c44323e",
  "source": {
    "blob": "e57db90c4f6a06f568460539fa5a492983480b2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 89,
    "path": "GRWTSK/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:811efb574983e0ff0c44323e24eb06966f8296fad1ce2ef6f84832066ef1104c",
  "verification": {
    "reference": "docs/verification/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af3dd8d9-fe65-1480-a9fd-ea365234c753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MultipliableUniformlyOn.hasProdUniformlyOn [T2Space α] (h : MultipliableUniformlyOn f 𝔖) :
    HasProdUniformlyOn f (∏' i, f i ·) 𝔖 := by
  obtain ⟨g, hg⟩ := h.exists
  simp only [hasProdUniformlyOn_iff_tendstoUniformlyOn]
  intro s hs
  exact (hasProdUniformlyOn_iff_tendstoUniformlyOn.mp hg s hs).congr_right (hg.tprod_eqOn hs).symm

end UniformlyOn

section LocallyUniformlyOn
/-!
## Locally uniform convergence of sums and products
-/

variable [TopologicalSpace β]

variable (f g s) in
/-- `HasProdLocallyUniformlyOn f g s` means that the (potentially infinite) product `∏' i, f i b`
for `b : β` converges locally uniformly on `s` to `g b` (in the sense of
`TendstoLocallyUniformlyOn`). -/
@[to_additive "`HasSumLocallyUniformlyOn f g s` means that the (potentially infinite) sum
`∑' i, f i b` for `b : β` converges locally uniformly on `s` to `g b` (in the sense of
`TendstoLocallyUniformlyOn`)."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e57db90c4f6a06f568460539fa5a492983480b2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
