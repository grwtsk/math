# theorem_b

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fb9fa7e-6c29-dfd2-1af4-cf33633eed5b",
  "kind": "theorem",
  "lexical_name": "theorem_b",
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
  "slug": "theorem-b--af193de58ed8207ece07834b",
  "source": {
    "blob": "04dd9185ccbc06b581c8737da51066f96c86705c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 276,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af193de58ed8207ece07834b5a6bcdbfd69a618af3fba1ab0e156f52ac03a444",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fb9fa7e-6c29-dfd2-1af4-cf33633eed5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_b (x : ℝ) (hx : x ≥ 17) :
    _root_.pi x > x / log x := by
  have hx0 : (0 : ℝ) ≤ x := by linarith
  have hx1 : (1 : ℝ) < x := by linarith
  have hxpos : (0 : ℝ) < x := by linarith
  -- Midpoint of [⌊x⌋₊, ⌊x⌋₊+1): π is constant there while x/log x rises for x>e.
  set y := (x + (⌊x⌋₊ + 1 : ℝ)) / 2
  have hx_lt_succ : x < (⌊x⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one x
  have hfle : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le hx0
  have hxy : x < y := by dsimp [y]; linarith
  have hyu : y < (⌊x⌋₊ : ℝ) + 1 := by dsimp [y]; linarith
  have hyl : (⌊x⌋₊ : ℝ) ≤ y := by dsimp [y]; linarith
  have hfloor : ⌊y⌋₊ = ⌊x⌋₊ := Nat.floor_eq_on_Ico _ _ ⟨hyl, hyu⟩
  have hpi : _root_.pi x = _root_.pi y := by
    unfold _root_.pi
    rw [hfloor]
  have hy17 : y ≥ 17 := by linarith
  have hypos : (0 : ℝ) < y := by linarith
  have hge := Dusart.corollary_5_2_a hy17
  have hlogx := log_pos hx1
  have hlogy := log_pos (show (1 : ℝ) < y by linarith)
  have hz : (1 : ℝ) < y / x := (one_lt_div hxpos).mpr hxy
  have hlogz : log (y / x) < y / x - 1 :=
    log_lt_sub_one_of_pos (div_pos hypos hxpos) (ne_of_gt hz)
  have hlog_div : log (y / x) = log y - log x := log_div hypos.ne' hxpos.ne'
  have hlogx1 : (1 : ℝ) < log x := by
    have hexp : exp 1 < x :=
      lt_of_lt_of_le (lt_trans exp_one_lt_d9 (by norm_num : (2.7182818286 : ℝ) < 3))
        (by linarith : (3 : ℝ) ≤ x)
    rwa [← log_exp 1, log_lt_log_iff (exp_pos _) hxpos]
  have hstrict : x / log x < y / log y := by
    rw [div_lt_div_iff₀ hlogx hlogy]
    -- goal: x * log y < y * log x
    have hstep : log y < log x + y / x - 1 := by linarith [hlog_div, hlogz]
    have hmul : x * log y < x * (log x + y / x - 1) :=
      mul_lt_mul_of_pos_left hstep hxpos
    have hrw : x * (log x + y / x - 1) = x * log x + y - x := by
      simp [mul_add, mul_sub, mul_div_cancel₀ _ hxpos.ne']
    have h1 : x * log y < x * log x + y - x := by rwa [hrw] at hmul
    -- x ≤ y and log x > 1 ⇒ x * log x + y - x ≤ y * log x
    have h2 : x * log x + y - x ≤ y * log x := by nlinarith [hlogx1, hxy]
    linarith
  rw [hpi]
  exact lt_of_lt_of_le hstrict hge

@[blueprint
  "thm:rs-1962-c"
  (title := "Rosser-Schoenfeld 1962, part c")
  (statement := /-- For $x > 1$, we have $\sum_{p \leq x} \frac{1}{p} > \log \log x$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/UntrustedPnt0/Variant7801b24ab681c0337d93349b1d427961c5fe14e84a25a7588f340f8fa5ff1ef7.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04dd9185ccbc06b581c8737da51066f96c86705c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
