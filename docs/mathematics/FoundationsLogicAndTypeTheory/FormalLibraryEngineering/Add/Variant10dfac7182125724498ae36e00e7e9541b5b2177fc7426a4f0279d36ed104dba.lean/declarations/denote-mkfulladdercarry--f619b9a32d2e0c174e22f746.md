# denote_mkFullAdderCarry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4b3e755090b70d15c3a6e304b4abb2ec5ad056f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:397762a0-f381-01d0-fe27-0ebf6a59cdce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e5963b3-7c1c-8b9f-da28-2f84e65d95d1",
  "kind": "theorem",
  "lexical_name": "denote_mkFullAdderCarry",
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
  "slug": "denote-mkfulladdercarry--f619b9a32d2e0c174e22f746",
  "source": {
    "blob": "c4b3e755090b70d15c3a6e304b4abb2ec5ad056f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f619b9a32d2e0c174e22f746f096e630efd1b1797b86d3a0ac73166dcd64e590",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e5963b3-7c1c-8b9f-da28-2f84e65d95d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_mkFullAdderCarry (assign : α → Bool) (aig : AIG α) (input : FullAdderInput aig) :
    ⟦mkFullAdderCarry aig input, assign⟧
      =
      ((⟦aig, input.lhs, assign⟧ ^^ ⟦aig, input.rhs, assign⟧) && ⟦aig, input.cin, assign⟧ ||
       ⟦aig, input.lhs, assign⟧ && ⟦aig, input.rhs, assign⟧)
    := by
  simp only [mkFullAdderCarry, Ref.cast_eq, denote_mkOrCached,
    LawfulOperator.denote_input_entry, denote_mkAndCached,
    denote_mkXorCached, denote_projected_entry]
  congr 2
  · rw [LawfulOperator.denote_mem_prefix (f := mkXorCached) (h := input.cin.hgate)]
  · rw [LawfulOperator.denote_mem_prefix
        (f := mkAndCached)
        (h := by
          apply LawfulOperator.lt_size_of_lt_aig_size (f := mkXorCached)
          apply Ref.hgate),
      LawfulOperator.denote_mem_prefix (f := mkXorCached) (h := input.lhs.hgate)]
  · rw [
      LawfulOperator.denote_mem_prefix
        (f := mkAndCached)
        (h := by
          apply LawfulOperator.lt_size_of_lt_aig_size (f := mkXorCached)
          apply Ref.hgate),
      LawfulOperator.denote_mem_prefix (f := mkXorCached) (h := input.rhs.hgate)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4b3e755090b70d15c3a6e304b4abb2ec5ad056f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
