# support_coeff_C_mul_T_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9aaef36c-e0c1-fb31-75c5-07bb8d5d9ec3",
  "kind": "theorem",
  "lexical_name": "support_coeff_C_mul_T_of_ne_zero",
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
  "slug": "support-coeff-c-mul-t-of-ne-zero--4e89d10780c27884c483bc9b",
  "source": {
    "blob": "8886111bf161e9e6ee1fa50584903ae605b65d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 386,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variante39352288827ff3ca6d833ec26b039e778b4a5c1e72b09e5a4c7b6c2adc8051e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e89d10780c27884c483bc9b7334dd1732554e5e129726df3bf699e5d77e6dd1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Laurent/Variante39352288827ff3ca6d833ec26b039e778b4a5c1e72b09e5a4c7b6c2adc8051e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aaef36c-e0c1-fb31-75c5-07bb8d5d9ec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_coeff_C_mul_T_of_ne_zero {a : R} (a0 : a ≠ 0) (n : ℤ) :
    (C a * T n).coeff.support = {n} := by
  rw [← single_eq_C_mul_T]
  exact support_single _ a0

@[deprecated (since := "2026-06-18")]
alias support_C_mul_T_of_ne_zero := support_coeff_C_mul_T_of_ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Laurent/Variante39352288827ff3ca6d833ec26b039e778b4a5c1e72b09e5a4c7b6c2adc8051e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variante39352288827ff3ca6d833ec26b039e778b4a5c1e72b09e5a4c7b6c2adc8051e.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8886111bf161e9e6ee1fa50584903ae605b65d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
