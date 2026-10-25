# exists_eRk_insert_eq_add_one_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:100e844d-b0c9-e196-7db4-5e8a4fc0145f",
  "kind": "lemma",
  "lexical_name": "exists_eRk_insert_eq_add_one_of_lt",
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
  "slug": "exists-erk-insert-eq-add-one-of-lt--99bdb14908b53f708397eb3d",
  "source": {
    "blob": "4eb4041aa11a9725bed602b64d2b72a7a242660c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 428,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant1f25af4c44ba9196949670ea6c588386193c46a0bd7ae929e96d2cfd148ff81c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99bdb14908b53f708397eb3d627fc6abf024e1b5e2702991f6835ec3fe40ff60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant1f25af4c44ba9196949670ea6c588386193c46a0bd7ae929e96d2cfd148ff81c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:100e844d-b0c9-e196-7db4-5e8a4fc0145f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_eRk_insert_eq_add_one_of_lt (h : M.eRk X < M.eRk Y) :
    ∃ y ∈ Y \ X, M.eRk (insert y X) = M.eRk X + 1 := by
  have hz : ¬ Y ∩ M.E ⊆ M.closure X := by
    contrapose! h
    simpa using M.eRk_mono h
  obtain ⟨e, ⟨heZ, heE⟩, heX⟩ := not_subset.1 hz
  refine ⟨e, ⟨heZ, fun heX' ↦ heX (mem_closure_of_mem' _ heX')⟩, eRk_insert_eq_add_one ⟨heE, heX⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant1f25af4c44ba9196949670ea6c588386193c46a0bd7ae929e96d2cfd148ff81c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant1f25af4c44ba9196949670ea6c588386193c46a0bd7ae929e96d2cfd148ff81c.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4eb4041aa11a9725bed602b64d2b72a7a242660c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
