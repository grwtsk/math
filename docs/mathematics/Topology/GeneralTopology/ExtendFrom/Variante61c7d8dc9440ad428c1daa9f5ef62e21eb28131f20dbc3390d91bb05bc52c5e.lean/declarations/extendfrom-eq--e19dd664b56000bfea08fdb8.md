# extendFrom_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "649538b26ec696ad9652b844ae04e2464c8e08a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f4d8b29-1fca-808b-0595-e11f16a3cece",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0da70937-35f1-0423-2d7f-4949e1bf8e8f",
  "kind": "theorem",
  "lexical_name": "extendFrom_eq",
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
  "slug": "extendfrom-eq--e19dd664b56000bfea08fdb8",
  "source": {
    "blob": "649538b26ec696ad9652b844ae04e2464c8e08a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e19dd664b56000bfea08fdb8105287afa21160dc2ed3e3018403ba9ad6f3b84f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0da70937-35f1-0423-2d7f-4949e1bf8e8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extendFrom_eq [T2Space Y] {A : Set X} {f : X → Y} {x : X} {y : Y} (hx : x ∈ closure A)
    (hf : Tendsto f (𝓝[A] x) (𝓝 y)) : extendFrom A f x = y :=
  haveI := mem_closure_iff_nhdsWithin_neBot.mp hx
  tendsto_nhds_unique (tendsto_nhds_limUnder ⟨y, hf⟩) hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtendFrom/Variante61c7d8dc9440ad428c1daa9f5ef62e21eb28131f20dbc3390d91bb05bc52c5e.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `649538b26ec696ad9652b844ae04e2464c8e08a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
