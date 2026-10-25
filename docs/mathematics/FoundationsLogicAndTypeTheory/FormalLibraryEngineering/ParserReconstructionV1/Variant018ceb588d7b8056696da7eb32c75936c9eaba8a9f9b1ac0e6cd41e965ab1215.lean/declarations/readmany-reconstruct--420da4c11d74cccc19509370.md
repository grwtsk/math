# readMany_reconstruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bee1708810e45d6fddf1007a6fdcbdeb7cce8280",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 9,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Fixtures/records/evidence/c2-reconstruction/ParserReconstruction-v1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5971c1b8-232c-7db5-4d96-8c0d693566ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7673a0a4-fa2d-c6d5-9718-e20856f43923",
  "kind": "theorem",
  "lexical_name": "readMany_reconstruct",
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
  "slug": "readmany-reconstruct--420da4c11d74cccc19509370",
  "source": {
    "blob": "bee1708810e45d6fddf1007a6fdcbdeb7cce8280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV1/Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:420da4c11d74cccc1950937076c4f1cd249056fabcf1414073f05af216441f4b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV1/Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7673a0a4-fa2d-c6d5-9718-e20856f43923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readMany_reconstruct (p : Bytes → Option (Value × Bytes))
    (hp : ∀ b v s, p b = some (v,s) → b = emit v ++ s)
    (n : Nat) : ∀ b vs s, readMany p n b = some (vs,s) →
      vs.length = n ∧ b = vs.flatMap emit ++ s := by
  induction n with
  | zero =>
    intro b vs s h
    simp [readMany] at h
    rcases h with ⟨rfl,rfl⟩
    simp
  | succ n ih =>
    intro b vs s h
    cases ht : p b with
    | none => simp [readMany, ht] at h
    | some pair =>
      rcases pair with ⟨v,t⟩
      cases hu : readMany p n t with
      | none => simp [readMany, ht, hu] at h
      | some pair =>
        rcases pair with ⟨ws,u⟩
        simp [readMany, ht, hu] at h
        rcases h with ⟨rfl,rfl⟩
        have hw := ih t ws u hu
        constructor
        · simp [hw.1]
        · rw [hp b v t ht, hw.2]
          simp [List.append_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV1/Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserReconstructionV1/Variant018ceb588d7b8056696da7eb32c75936c9eaba8a9f9b1ac0e6cd41e965ab1215.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bee1708810e45d6fddf1007a6fdcbdeb7cce8280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
