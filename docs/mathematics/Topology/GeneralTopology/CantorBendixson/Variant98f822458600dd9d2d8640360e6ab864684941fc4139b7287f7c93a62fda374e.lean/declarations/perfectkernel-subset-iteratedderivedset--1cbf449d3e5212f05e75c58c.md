# perfectKernel_subset_iteratedDerivedSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4585fb62d56d9ab18c619dea66e78d695f347f09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1bca485-1825-a9cf-3f24-ae1f58efa321",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd81a69d-1ba8-8d04-c8ef-a2c1625e703d",
  "kind": "theorem",
  "lexical_name": "perfectKernel_subset_iteratedDerivedSet",
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
  "slug": "perfectkernel-subset-iteratedderivedset--1cbf449d3e5212f05e75c58c",
  "source": {
    "blob": "4585fb62d56d9ab18c619dea66e78d695f347f09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 135,
    "path": "GRWTSK/Topology/GeneralTopology/CantorBendixson/Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cbf449d3e5212f05e75c58cff2d2fd5889c33f6fa4bc86edfba3600e059405f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CantorBendixson/Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd81a69d-1ba8-8d04-c8ef-a2c1625e703d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perfectKernel_subset_iteratedDerivedSet (s : Set X) (a : Ordinal) :
    perfectKernel s ⊆ sᵈ[a] :=
  Set.iInter_subset _ a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CantorBendixson/Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CantorBendixson/Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4585fb62d56d9ab18c619dea66e78d695f347f09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
