# adjugate_fin_succ_eq_det_submatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e20d179a-9d3c-3715-ebaf-e7f35879aafd",
  "kind": "theorem",
  "lexical_name": "adjugate_fin_succ_eq_det_submatrix",
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
  "slug": "adjugate-fin-succ-eq-det-submatrix--03cc53ac70af583c64fca606",
  "source": {
    "blob": "ffe1cf26a3bf7fa64dde0ff45d2120eab0dcfa9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 429,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant6f5c30fc87c7161c208f3caf55d98604e33869deef0461f3ac9609341452d6d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03cc53ac70af583c64fca6065ca6e3ac9924fabd6ebc25bf2835ba2940b41c3a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant6f5c30fc87c7161c208f3caf55d98604e33869deef0461f3ac9609341452d6d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e20d179a-9d3c-3715-ebaf-e7f35879aafd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjugate_fin_succ_eq_det_submatrix {n : ℕ} (A : Matrix (Fin n.succ) (Fin n.succ) α) (i j) :
    adjugate A i j = (-1) ^ (j + i : ℕ) * det (A.submatrix j.succAbove i.succAbove) := by
  simp_rw [adjugate_apply, det_succ_row _ j, updateRow_self, submatrix_updateRow_succAbove]
  rw [Fintype.sum_eq_single i fun h hjk => ?_, Pi.single_eq_same, mul_one]
  rw [Pi.single_eq_of_ne hjk, mul_zero, zero_mul]
#align matrix.adjugate_fin_succ_eq_det_submatrix Matrix.adjugate_fin_succ_eq_det_submatrix

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant6f5c30fc87c7161c208f3caf55d98604e33869deef0461f3ac9609341452d6d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant6f5c30fc87c7161c208f3caf55d98604e33869deef0461f3ac9609341452d6d5.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffe1cf26a3bf7fa64dde0ff45d2120eab0dcfa9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
