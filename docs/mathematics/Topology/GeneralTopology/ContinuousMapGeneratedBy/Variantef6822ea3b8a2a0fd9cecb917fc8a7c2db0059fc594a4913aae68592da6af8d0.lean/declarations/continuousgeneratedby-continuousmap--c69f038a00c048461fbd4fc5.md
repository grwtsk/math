# ContinuousGeneratedBy.continuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee3d56d06d84f207eb940702ab3e18c3062639f2df135732f8157bf543158ecc",
  "kind": "def",
  "lexical_name": "ContinuousGeneratedBy.continuousMap",
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
  "slug": "continuousgeneratedby-continuousmap--c69f038a00c048461fbd4fc5",
  "source": {
    "blob": "d7ffac528f4815f90d41697566e3624be277d635",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousMapGeneratedBy/Variantef6822ea3b8a2a0fd9cecb917fc8a7c2db0059fc594a4913aae68592da6af8d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c69f038a00c048461fbd4fc59407fa070f0a9bd3aa17100d5b543c0153b123ef",
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

Occurrence: `declaration:ee3d56d06d84f207eb940702ab3e18c3062639f2df135732f8157bf543158ecc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContinuousGeneratedBy.continuousMap {g : Y → Z}
    (hg : ContinuousGeneratedBy X g) :
    C(WithGeneratedByTopology X Y, WithGeneratedByTopology X Z) :=
  ⟨WithGeneratedByTopology.equiv.symm ∘ g ∘ WithGeneratedByTopology.equiv, by
    rwa [← continuousGeneratedBy_iff]⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousMapGeneratedBy/Variantef6822ea3b8a2a0fd9cecb917fc8a7c2db0059fc594a4913aae68592da6af8d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousMapGeneratedBy/Variantef6822ea3b8a2a0fd9cecb917fc8a7c2db0059fc594a4913aae68592da6af8d0.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7ffac528f4815f90d41697566e3624be277d635` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
