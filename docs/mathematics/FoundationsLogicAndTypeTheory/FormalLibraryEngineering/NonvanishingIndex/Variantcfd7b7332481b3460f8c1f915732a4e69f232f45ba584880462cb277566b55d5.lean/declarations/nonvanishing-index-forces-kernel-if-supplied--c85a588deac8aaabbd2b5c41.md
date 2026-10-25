# nonvanishing_index_forces_kernel_if_supplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "befe49608e19525720cd21af5b65c9aef647117c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfd7b7332481b3460f8c1f915732a4e69f232f45ba584880462cb277566b55d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f05a2bfa-3340-d824-35e1-841573d4e748",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b2739ea-b1e0-7ac2-2de2-d984d9d1837f",
  "kind": "theorem",
  "lexical_name": "nonvanishing_index_forces_kernel_if_supplied",
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
  "slug": "nonvanishing-index-forces-kernel-if-supplied--c85a588deac8aaabbd2b5c41",
  "source": {
    "blob": "befe49608e19525720cd21af5b65c9aef647117c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NonvanishingIndex/Variantcfd7b7332481b3460f8c1f915732a4e69f232f45ba584880462cb277566b55d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c85a588deac8aaabbd2b5c41fc1e1b10fee3887666c9ef937e10895e06f54cb4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NonvanishingIndex/Variantcfd7b7332481b3460f8c1f915732a4e69f232f45ba584880462cb277566b55d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b2739ea-b1e0-7ac2-2de2-d984d9d1837f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonvanishing_index_forces_kernel_if_supplied
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H}
    (N : @Folder.CrystallineIndex.NonvanishingIndex C F nabla D H T) :
    N.nonzeroForcesKernel? :=
  Folder.CrystallineIndex.NonvanishingIndex.nonvanishing_index_forces_kernel_if_supplied N

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NonvanishingIndex/Variantcfd7b7332481b3460f8c1f915732a4e69f232f45ba584880462cb277566b55d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NonvanishingIndex/Variantcfd7b7332481b3460f8c1f915732a4e69f232f45ba584880462cb277566b55d5.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `befe49608e19525720cd21af5b65c9aef647117c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
