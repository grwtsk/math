# sumSqDiv_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f576d04a-b1fd-97e1-bd29-7edfd1dad7fa",
  "kind": "lemma",
  "lexical_name": "sumSqDiv_eventually",
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
  "slug": "sumsqdiv-eventually--cf50d9d43e9e49abc5434e8f",
  "source": {
    "blob": "0b7cd22ca7a05a27b73662f0731932eb76fffc5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 165,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf50d9d43e9e49abc5434e8f4445178a8056d66969b521a61479f8b2eaf49c33",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f576d04a-b1fd-97e1-bd29-7edfd1dad7fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sumSqDiv_eventually (hP : P.Valid) (hF : Fam.Hyps) : ∃ C₃ : ℝ, 0 ≤ C₃ ∧ ∀ᶠ T in atTop,
    sumSqDivW (Fam.c T) (P.X T) ≤ C₃ * l T ^ 2 := by
  obtain ⟨M, hM0, hM⟩ := D_bound hF
  obtain ⟨T₀, hT₀⟩ := hF.H3 1 one_pos
  refine ⟨M + 1, by positivity, ?_⟩
  filter_upwards [regime_eventually hP, eventually_ge_atTop T₀] with T ⟨ _, hl, _, hL, _, hLl, _⟩ hT
  have hl0 : 0 < l T := by linarith
  have h := hT₀ T hT (P.L T) (by linarith) hLl
  have hX : Real.exp (P.L T) = P.X T := rfl
  rw [hX] at h
  have hI : |∫ s in (0:ℝ)..(P.L T / l T), Fam.D s| ≤ M := by
    have hq1 : P.L T / l T ≤ 1 := by rw [div_le_one hl0]; exact hLl
    have hq0 : 0 ≤ P.L T / l T := by positivity
    have h1 := intervalIntegral.norm_integral_le_of_norm_le_const (a := (0:ℝ)) (b := P.L T / l T)
      (f := Fam.D) (C := M) (fun x hx => by
        rw [Set.uIoc_of_le hq0] at hx
        rw [Real.norm_eq_abs]; exact hM x ⟨hx.1.le, hx.2.trans hq1⟩)
    rw [Real.norm_eq_abs] at h1
    refine h1.trans ?_
    rw [sub_zero, abs_of_nonneg hq0]
    nlinarith
  have h2 := (abs_le.1 h).2
  have h3 := (abs_le.1 hI).2
  show ∑ n ∈ Finset.Ioc 0 ⌊P.X T⌋₊, ‖Fam.c T n‖ ^ 2 / n ≤ (M + 1) * l T ^ 2
  nlinarith [sq_nonneg (l T)]

/-- C¹ facts for the window moment `g = v² ⋆ v²` of an admissible window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b7cd22ca7a05a27b73662f0731932eb76fffc5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
