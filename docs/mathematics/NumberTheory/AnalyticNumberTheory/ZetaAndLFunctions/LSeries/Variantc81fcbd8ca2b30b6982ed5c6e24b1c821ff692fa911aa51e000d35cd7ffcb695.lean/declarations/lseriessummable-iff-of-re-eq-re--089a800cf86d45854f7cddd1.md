# LSeriesSummable_iff_of_re_eq_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebbf8743-d4e1-aef4-75ef-8e6244dcb1f9",
  "kind": "theorem",
  "lexical_name": "LSeriesSummable_iff_of_re_eq_re",
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
  "slug": "lseriessummable-iff-of-re-eq-re--089a800cf86d45854f7cddd1",
  "source": {
    "blob": "60e79a400ae5d0ecf33ce34b57005118e6c6df68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:089a800cf86d45854f7cddd1e5ab1e66c0e6c57f595ef0f71360a782e24930cd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebbf8743-d4e1-aef4-75ef-8e6244dcb1f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LSeriesSummable_iff_of_re_eq_re {f : ArithmeticFunction ℂ} {w z : ℂ} (h : w.re = z.re) :
    f.LSeriesSummable w ↔ f.LSeriesSummable z := by
  suffices h :
    ∀ n : ℕ, Complex.abs (f n) / Complex.abs (↑n ^ w) = Complex.abs (f n) / Complex.abs (↑n ^ z)
  · simp [LSeriesSummable, ← summable_norm_iff, h, Complex.norm_eq_abs]
  intro n
  cases' n with n; · simp
  apply congr rfl
  have h0 : (n.succ : ℂ) ≠ 0 := by
    rw [Ne.def, Nat.cast_eq_zero]
    apply n.succ_ne_zero
  rw [Complex.cpow_def, Complex.cpow_def, if_neg h0, if_neg h0, Complex.abs_exp_eq_iff_re_eq]
  simp only [h, Complex.mul_re, mul_eq_mul_left_iff, sub_right_inj]
  right
  rw [Complex.log_im, ← Complex.ofReal_nat_cast]
  exact Complex.arg_ofReal_of_nonneg (le_of_lt (cast_pos.2 n.succ_pos))
#align nat.arithmetic_function.l_series_summable_iff_of_re_eq_re Nat.ArithmeticFunction.LSeriesSummable_iff_of_re_eq_re

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantc81fcbd8ca2b30b6982ed5c6e24b1c821ff692fa911aa51e000d35cd7ffcb695.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60e79a400ae5d0ecf33ce34b57005118e6c6df68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
