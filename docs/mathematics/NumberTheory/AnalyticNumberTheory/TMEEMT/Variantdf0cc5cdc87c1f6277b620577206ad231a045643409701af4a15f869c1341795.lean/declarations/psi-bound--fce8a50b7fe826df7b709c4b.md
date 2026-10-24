# psi_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0936e62c-d6fa-31fd-79ff-f6acaaef7f51",
  "kind": "theorem",
  "lexical_name": "psi_bound",
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
  "slug": "psi-bound--fce8a50b7fe826df7b709c4b",
  "source": {
    "blob": "b621f1aa334bf7d3760b92c847894510fa068a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 405,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fce8a50b7fe826df7b709c4baa27d57538a84e3014a463f85941cc7ad61f1f6f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0936e62c-d6fa-31fd-79ff-f6acaaef7f51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_bound (x : ℝ) (hx : x ≥ 485165196) :
    |ψ x - x| ≤ 0.00053699 * x := by
  have hx_pos : (0 : ℝ) < x := by linarith
  have hmem : (4, (59.18 : ℝ)) ∈ Dusart.Table_3_3 := by simp [Dusart.Table_3_3]
  have hEpsi := Dusart.theorem_3_3 hmem (show x ≥ 2 by linarith)
  rw [show Eψ x = |ψ x - x| / x from rfl] at hEpsi
  rw [div_le_iff₀ hx_pos] at hEpsi
  apply hEpsi.trans (mul_le_mul_of_nonneg_right _ hx_pos.le)
  have hlog : (20 : ℝ) ≤ log x := by
    rw [le_log_iff_exp_le hx_pos]
    exact (show exp 20 ≤ 485165196 from by interval_auto).trans hx
  calc (59.18 : ℝ) / (log x) ^ 4
      ≤ 59.18 / 20 ^ 4 := div_le_div_of_nonneg_left (by norm_num) (by norm_num)
          (pow_le_pow_left₀ (by linarith) hlog 4)
      _ ≤ 0.00053699 := by norm_num

end FaberKadiri

namespace JY

blueprint_comment /-- Some results from \cite{johnston-yang}-/

@[blueprint
  "thm:jy-psi-1"
  (title := "Johnston-Yang $\\psi$ bound 1")
  (statement := /-- For $x \geq \exp(5000)$, we have $|\psi(x) - x| \leq 8.14 \cdot 10^{-20}\, x$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b621f1aa334bf7d3760b92c847894510fa068a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
