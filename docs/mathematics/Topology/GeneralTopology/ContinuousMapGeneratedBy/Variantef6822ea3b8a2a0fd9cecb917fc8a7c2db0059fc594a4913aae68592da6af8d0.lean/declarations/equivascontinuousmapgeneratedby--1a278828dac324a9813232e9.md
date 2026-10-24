# equivAsContinuousMapGeneratedBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15ddca74539452c03c00056bfcbaecac6020c11408709d79d589dcd650ce1c0f",
  "kind": "def",
  "lexical_name": "equivAsContinuousMapGeneratedBy",
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
  "slug": "equivascontinuousmapgeneratedby--1a278828dac324a9813232e9",
  "source": {
    "blob": "d7ffac528f4815f90d41697566e3624be277d635",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 142,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousMapGeneratedBy/Variantef6822ea3b8a2a0fd9cecb917fc8a7c2db0059fc594a4913aae68592da6af8d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a278828dac324a9813232e9b13cf3f28d17857b9d275cf85d709a1c8889af79",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousMapGeneratedBy/Variantef6822ea3b8a2a0fd9cecb917fc8a7c2db0059fc594a4913aae68592da6af8d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15ddca74539452c03c00056bfcbaecac6020c11408709d79d589dcd650ce1c0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivAsContinuousMapGeneratedBy :
    ContinuousMapGeneratedBy X (WithGeneratedByTopology X Y) Y where
  toFun := equiv
  prop := continuous_equiv.continuousGeneratedBy

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousMapGeneratedBy/Variantef6822ea3b8a2a0fd9cecb917fc8a7c2db0059fc594a4913aae68592da6af8d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousMapGeneratedBy/Variantef6822ea3b8a2a0fd9cecb917fc8a7c2db0059fc594a4913aae68592da6af8d0.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7ffac528f4815f90d41697566e3624be277d635` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
