# secondCountableTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5cf2693-0c89-54d8-1b32-0edcdfd16823",
  "kind": "theorem",
  "lexical_name": "secondCountableTopology",
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
  "slug": "secondcountabletopology--2c0a75c483dc7c5a5f5eb692",
  "source": {
    "blob": "59c70be60616f07ca272b74fba5111a136ef604f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 264,
    "path": "GRWTSK/Topology/GeneralTopology/Homeomorph/Variant29168346356322edf7d6ebd4ed80ecab18f94d0161d1d5c979b5a307174547ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c0a75c483dc7c5a5f5eb692dd11289a753e464e8a84853292b01f35a6bc01bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Homeomorph/Variant29168346356322edf7d6ebd4ed80ecab18f94d0161d1d5c979b5a307174547ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5cf2693-0c89-54d8-1b32-0edcdfd16823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem secondCountableTopology [TopologicalSpace.SecondCountableTopology β]
    (h : α ≃ₜ β) : TopologicalSpace.SecondCountableTopology α :=
  h.inducing.secondCountableTopology
#align homeomorph.second_countable_topology Homeomorph.secondCountableTopology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Homeomorph/Variant29168346356322edf7d6ebd4ed80ecab18f94d0161d1d5c979b5a307174547ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Homeomorph/Variant29168346356322edf7d6ebd4ed80ecab18f94d0161d1d5c979b5a307174547ae.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c70be60616f07ca272b74fba5111a136ef604f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
