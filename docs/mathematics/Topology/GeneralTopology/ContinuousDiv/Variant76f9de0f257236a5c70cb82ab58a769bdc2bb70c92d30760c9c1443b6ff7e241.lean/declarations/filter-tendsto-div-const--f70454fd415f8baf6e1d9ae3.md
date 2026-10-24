# Filter.Tendsto.div_const'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbcd0217-acc9-7cf5-3a87-bde9f207389f",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.div_const'",
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
  "slug": "filter-tendsto-div-const--f70454fd415f8baf6e1d9ae3",
  "source": {
    "blob": "db53bb1ea7ab9c79c101497d2a2335717bc75076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f70454fd415f8baf6e1d9ae398769c574e8ad28dfa4326c16f7d76fe92ad267a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbcd0217-acc9-7cf5-3a87-bde9f207389f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.div_const' {c : G} {f : α → G} {l : Filter α} (h : Tendsto f l (𝓝 c))
    (b : G) : Tendsto (f · / b) l (𝓝 (c / b)) :=
  h.div' tendsto_const_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousDiv/Variant76f9de0f257236a5c70cb82ab58a769bdc2bb70c92d30760c9c1443b6ff7e241.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db53bb1ea7ab9c79c101497d2a2335717bc75076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
