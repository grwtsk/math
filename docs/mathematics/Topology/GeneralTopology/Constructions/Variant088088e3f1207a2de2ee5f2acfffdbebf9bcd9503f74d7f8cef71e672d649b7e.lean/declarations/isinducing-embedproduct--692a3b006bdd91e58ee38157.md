# isInducing_embedProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f4a2366c0c1bca6ff891363c8ac5f6ecf744dae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e71c0b20-ee17-dee0-8079-04ac0c01d737",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:253750a6-47a1-f5ae-4559-d560fe4e4edc",
  "kind": "theorem",
  "lexical_name": "isInducing_embedProduct",
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
  "slug": "isinducing-embedproduct--692a3b006bdd91e58ee38157",
  "source": {
    "blob": "9f4a2366c0c1bca6ff891363c8ac5f6ecf744dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:692a3b006bdd91e58ee381576c7673538ad6dca38671ea705830c3a6c2073b61",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:253750a6-47a1-f5ae-4559-d560fe4e4edc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isInducing_embedProduct : IsInducing (embedProduct M) := ⟨rfl⟩

@[deprecated (since := "2024-10-28")] alias inducing_embedProduct := isInducing_embedProduct

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant088088e3f1207a2de2ee5f2acfffdbebf9bcd9503f74d7f8cef71e672d649b7e.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4a2366c0c1bca6ff891363c8ac5f6ecf744dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
