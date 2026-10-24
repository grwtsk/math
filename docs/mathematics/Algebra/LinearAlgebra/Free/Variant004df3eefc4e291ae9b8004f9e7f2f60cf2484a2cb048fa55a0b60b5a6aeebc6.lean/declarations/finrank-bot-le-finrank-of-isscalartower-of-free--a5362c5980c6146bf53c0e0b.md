# finrank_bot_le_finrank_of_isScalarTower_of_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3bf0c637eac3af20494b75e0c7c0f6c4f273010c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca14f81a-6405-3919-f678-eb9fd556059e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11631f57-7aec-d011-9d99-38c425ce167e",
  "kind": "lemma",
  "lexical_name": "finrank_bot_le_finrank_of_isScalarTower_of_free",
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
  "slug": "finrank-bot-le-finrank-of-isscalartower-of-free--a5362c5980c6146bf53c0e0b",
  "source": {
    "blob": "3bf0c637eac3af20494b75e0c7c0f6c4f273010c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 212,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5362c5980c6146bf53c0e0b65980102a0c287af5c0bb0e84356e92e63cfbbfd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11631f57-7aec-d011-9d99-38c425ce167e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finrank_bot_le_finrank_of_isScalarTower_of_free (S T : Type*) [Semiring S] [Semiring T]
    [Module R T] [Module S T] [Module R S] [IsScalarTower R S T]
    [IsScalarTower S T T] [FaithfulSMul S T] [Module.Finite S T] [Module.Free R S] :
    finrank R S ≤ finrank R T := by
  by_cases H : Module.Finite R S
  · have := Module.Finite.trans (R := R) S T
    exact finrank_bot_le_finrank_of_isScalarTower R S T
  · rw [finrank, Cardinal.toNat_eq_zero.mpr (.inr _)]
    · exact zero_le _
    · rwa [← not_lt, Module.rank_lt_aleph0_iff]

variable (R M)

/-- A finite rank free module has a basis indexed by `Fin (finrank R M)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variant004df3eefc4e291ae9b8004f9e7f2f60cf2484a2cb048fa55a0b60b5a6aeebc6.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bf0c637eac3af20494b75e0c7c0f6c4f273010c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
