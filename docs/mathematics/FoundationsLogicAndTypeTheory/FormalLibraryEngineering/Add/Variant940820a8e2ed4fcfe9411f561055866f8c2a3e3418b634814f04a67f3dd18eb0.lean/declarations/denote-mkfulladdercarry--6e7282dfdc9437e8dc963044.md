# denote_mkFullAdderCarry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c34ecff7-6cae-78a6-090d-735c3bec3a86",
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
  "slug": "denote-mkfulladdercarry--6e7282dfdc9437e8dc963044",
  "source": {
    "blob": "14f4ff3f9cf6955771acdb099ff776b44c480b17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e7282dfdc9437e8dc9630448a326e99c2c73a6fa1f1bfe1ebeee7a718abedfb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c34ecff7-6cae-78a6-090d-735c3bec3a86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–75.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant940820a8e2ed4fcfe9411f561055866f8c2a3e3418b634814f04a67f3dd18eb0.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14f4ff3f9cf6955771acdb099ff776b44c480b17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
