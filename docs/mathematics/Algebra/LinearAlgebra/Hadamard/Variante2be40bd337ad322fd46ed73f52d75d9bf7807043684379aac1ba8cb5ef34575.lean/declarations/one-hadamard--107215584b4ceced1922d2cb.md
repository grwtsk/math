# one_hadamard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab2e8490fa9d0a55d9aad248f81cafa7a3874223",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1662576d-8e7e-93b0-e1ce-b6b769106bfd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d4556ee-c1f4-bbac-2848-d9b068e0cf10",
  "kind": "theorem",
  "lexical_name": "one_hadamard",
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
  "slug": "one-hadamard--107215584b4ceced1922d2cb",
  "source": {
    "blob": "ab2e8490fa9d0a55d9aad248f81cafa7a3874223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:107215584b4ceced1922d2cbcbaf5f89f9325ec7f8456299047f90823cc2631e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d4556ee-c1f4-bbac-2848-d9b068e0cf10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_hadamard : (1 : Matrix n n α) ⊙ M = diagonal fun i => M i i := by
  ext i j
  by_cases h : i = j <;> simp [h]

end One

section single

variable [DecidableEq m] [DecidableEq n] [MulZeroClass α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab2e8490fa9d0a55d9aad248f81cafa7a3874223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
