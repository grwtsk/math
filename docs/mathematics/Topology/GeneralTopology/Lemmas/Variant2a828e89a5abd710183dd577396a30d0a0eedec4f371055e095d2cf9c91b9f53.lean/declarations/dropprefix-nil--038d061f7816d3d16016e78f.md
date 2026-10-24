# dropPrefix?_nil

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d432ee2-e2f0-17d4-a8d4-1cfd31a2def5",
  "kind": "theorem",
  "lexical_name": "dropPrefix?_nil",
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
  "slug": "dropprefix-nil--038d061f7816d3d16016e78f",
  "source": {
    "blob": "095f4906a19ccab8440e92f7035a4843cf6ca575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1123,
    "line": 1121,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:038d061f7816d3d16016e78ff2f84cd6b84ec1c7fedb7ef99861f7d8194b74a3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d432ee2-e2f0-17d4-a8d4-1cfd31a2def5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1121–1123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem dropPrefix?_nil [BEq α] {p : List α} : dropPrefix? p [] = some p := by
  simp [dropPrefix?]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant2a828e89a5abd710183dd577396a30d0a0eedec4f371055e095d2cf9c91b9f53.lean#L1121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `095f4906a19ccab8440e92f7035a4843cf6ca575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
