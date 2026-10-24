# BKLNW_a1_le_two_of_ge_1000

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c771b29-a24c-cfb9-501b-75aa89bdc52f",
  "kind": "lemma",
  "lexical_name": "BKLNW_a1_le_two_of_ge_1000",
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
  "slug": "bklnw-a1-le-two-of-ge-1000--1100be3b80fdf018f42f1b68",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 587,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1100be3b80fdf018f42f1b680d49b03ea00a7ff4650282aefd196b81a220e10e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c771b29-a24c-cfb9-501b-75aa89bdc52f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 587–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma BKLNW_a1_le_two_of_ge_1000 (t : ℝ) (ht : t ≥ 1000) :
    BKLNW.a₁ t ≤ 2 := by
  -- Sketch:
  -- unfold `BKLNW.a₁` -> `Inputs.default.a₁`.
  -- split on `t ≤ 2*log x₁`; in either branch it is `1 + ε(...)` with ε tiny.
  -- For the branch `1 + table_8_ε (t/2)`, use:
  --   `BKLNW_app.table_8_ε_le_of_row (b₀ := 20) (ε := 4.2676e-5) ...`
  -- because `20 ≤ t/2` when `t ≥ 1000`.
  -- conclude by `linarith` / `nlinarith`.
  have h_exp20 : exp (20 : ℝ) ≤ (1e19 : ℝ) := by
    grw [← exp_one_rpow 20, Real.exp_one_lt_d9]
    norm_num only
  have h20_log : (20 : ℝ) ≤ log (1e19 : ℝ) := by
    have := log_le_log (exp_pos (20 : ℝ)) h_exp20
    simpa [log_exp] using this
  have hmain :
      (if t ≤ 2 * log (1e19 : ℝ) then 1 + BKLNW_app.table_8_ε (log (1e19 : ℝ))
       else 1 + BKLNW_app.table_8_ε (t / 2)) ≤ 2 := by
    by_cases hif : t ≤ 2 * log (1e19 : ℝ)
    · have h_eps : BKLNW_app.table_8_ε (log (1e19 : ℝ)) ≤ 4.2676e-5 := by
        exact BKLNW_app.table_8_ε_le_of_row
          (b₀ := 20) (ε := 4.2676e-5) BKLNW_app.table_8_mem_20 h20_log
      simp [hif]
      linarith
    · have h20 : (20 : ℝ) ≤ t / 2 := by linarith [ht]
      have h_eps : BKLNW_app.table_8_ε (t / 2) ≤ 4.2676e-5 := by
        exact BKLNW_app.table_8_ε_le_of_row
          (b₀ := 20) (ε := 4.2676e-5) BKLNW_app.table_8_mem_20 h20
      simp [hif]
      linarith
  simpa [BKLNW.a₁, BKLNW.Inputs.a₁, BKLNW.Inputs.default, BKLNW.Pre_inputs.default] using hmain

/--
A crude linear bound on `BKLNW.a₂` at large `t`.
Any linear bound is enough; `≤ 5*t` is extremely safe for `t ≥ 1000`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L587).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
