# ofComponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ad35392ea5e191315be89663796bf0dd23861f9c62be88d3ce874e96cf1e033",
  "kind": "def",
  "lexical_name": "ofComponent",
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
  "slug": "ofcomponent--8a0afb44a44b749ac1e746fa",
  "source": {
    "blob": "3e7f13795efc3046b4394c821a4b5d032321d678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 311,
    "path": "GRWTSK/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a0afb44a44b749ac1e746fa64d4688e7269388f8fb31b14afe7cee97867291d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ad35392ea5e191315be89663796bf0dd23861f9c62be88d3ce874e96cf1e033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofComponent [QuasiSober α] (x : irreducibleComponents α) : genericPoints α :=
  ⟨x.2.1.genericPoint, show _ ∈ irreducibleComponents α from
    (x.2.1.isGenericPoint_genericPoint (isClosed_of_mem_irreducibleComponents x.1 x.2)).symm ▸ x.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e7f13795efc3046b4394c821a4b5d032321d678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
