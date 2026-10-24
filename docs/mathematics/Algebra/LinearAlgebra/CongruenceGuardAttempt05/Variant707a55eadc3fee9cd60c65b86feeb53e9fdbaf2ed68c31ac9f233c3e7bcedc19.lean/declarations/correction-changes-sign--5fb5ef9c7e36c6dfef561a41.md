# correction_changes_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bec7db6-6a9b-53e3-4cd7-8df3fb890c2a",
  "kind": "theorem",
  "lexical_name": "correction_changes_sign",
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
  "slug": "correction-changes-sign--5fb5ef9c7e36c6dfef561a41",
  "source": {
    "blob": "29e23eb7d5c71e720b5f7a6cd7793858057a15e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 227,
    "path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fb5ef9c7e36c6dfef561a413a352eb5bfebeace297337d523352aaff66e4d16",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bec7db6-6a9b-53e3-4cd7-8df3fb890c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correction_changes_sign :
    (indefinite + (2 : ℂ) • (1 : Matrix (Fin 2) (Fin 2) ℂ)).PosSemidef ∧
      ¬ indefinite.PosSemidef := by
  constructor
  · have he : indefinite + (2 : ℂ) • (1 : Matrix (Fin 2) (Fin 2) ℂ) =
        Matrix.diagonal ![(3:ℂ),1] := by
      ext i j; fin_cases i <;> fin_cases j <;>
        norm_num [indefinite,Matrix.diagonal]
    rw [he,Matrix.posSemidef_diagonal_iff]
    intro i
    fin_cases i <;> norm_num
  · exact negative_not_psd indefinite indefinite_negative

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt05/Variant707a55eadc3fee9cd60c65b86feeb53e9fdbaf2ed68c31ac9f233c3e7bcedc19.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29e23eb7d5c71e720b5f7a6cd7793858057a15e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
