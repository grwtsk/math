# mkXorCached_decl_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48a70657d87e60f191d4cafce339b8fe9e344316",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a3a76367fb68036b9361242c5ad0360d9e8464a0f089ad9a2e26b63d5d2e882.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7bf9f53f-f908-aed3-9e1b-117ff9d0786a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ac25eb7-5191-4631-cefe-924ff4554823",
  "kind": "theorem",
  "lexical_name": "mkXorCached_decl_eq",
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
  "slug": "mkxorcached-decl-eq--0f40d2bf3a45df2642255aa7",
  "source": {
    "blob": "48a70657d87e60f191d4cafce339b8fe9e344316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGatesLemmas/Variant8a3a76367fb68036b9361242c5ad0360d9e8464a0f089ad9a2e26b63d5d2e882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f40d2bf3a45df2642255aa7f131c854d36503ef190934772c4f2e28380863ab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGatesLemmas/Variant8a3a76367fb68036b9361242c5ad0360d9e8464a0f089ad9a2e26b63d5d2e882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ac25eb7-5191-4631-cefe-924ff4554823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkXorCached_decl_eq idx (aig : AIG α) (input : BinaryInput aig) {h : idx < aig.decls.size}
    {h2} :
    (aig.mkXorCached input).aig.decls[idx]'h2 = aig.decls[idx] := by
  simp only [mkXorCached]
  rw [AIG.LawfulOperator.decl_eq (f := mkGateCached)]
  rw [AIG.LawfulOperator.decl_eq (f := mkGateCached)]
  rw [AIG.LawfulOperator.decl_eq (f := mkGateCached)]
  · apply LawfulOperator.lt_size_of_lt_aig_size
    assumption
  · apply LawfulOperator.lt_size_of_lt_aig_size
    apply LawfulOperator.lt_size_of_lt_aig_size
    assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGatesLemmas/Variant8a3a76367fb68036b9361242c5ad0360d9e8464a0f089ad9a2e26b63d5d2e882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CachedGatesLemmas/Variant8a3a76367fb68036b9361242c5ad0360d9e8464a0f089ad9a2e26b63d5d2e882.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48a70657d87e60f191d4cafce339b8fe9e344316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
