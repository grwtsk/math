# single_hadamard_single_eq

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
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00ea3b52-5db1-c985-acab-86258add5f57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35ac79a0-d70e-add9-e990-a9d122201a78",
  "kind": "theorem",
  "lexical_name": "single_hadamard_single_eq",
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
  "slug": "single-hadamard-single-eq--f71fb38f44a4603a2eb0bf2c",
  "source": {
    "blob": "ab2e8490fa9d0a55d9aad248f81cafa7a3874223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f71fb38f44a4603a2eb0bf2caaf09daa9246cc903c7e17a5ccbbc7bf2da3a809",
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

Occurrence: `result:35ac79a0-d70e-add9-e990-a9d122201a78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem single_hadamard_single_eq (i : m) (j : n) (a b : α) :
    single i j a ⊙ single i j b = single i j (a * b) :=
  ext fun _ _ => (apply_ite₂ _ _ _ _ _ _).trans (congr_arg _ <| zero_mul 0)

@[deprecated (since := "2025-05-05")]
alias stdBasisMatrix_hadamard_stdBasisMatrix_eq := single_hadamard_single_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hadamard/Variante2be40bd337ad322fd46ed73f52d75d9bf7807043684379aac1ba8cb5ef34575.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab2e8490fa9d0a55d9aad248f81cafa7a3874223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
