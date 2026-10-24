# correction_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9772adee-963a-54ae-1e5f-db02962fdd2a",
  "kind": "theorem",
  "lexical_name": "correction_bound",
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
  "slug": "correction-bound--93e525b4c7e083b914a4dc6d",
  "source": {
    "blob": "64ebf675692d28b7732d080273b07719b850e64f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 112,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d08505fc004SourceActualSignedDyadicSummableError/Variant4cc7fcd5d49accc1d1d290eea523e8999a6eb1c902b2be2e91ede31631d8d7f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93e525b4c7e083b914a4dc6d373cd9989e1ec970fed1d2d676b1e57b66e0e464",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d08505fc004SourceActualSignedDyadicSummableError/Variant4cc7fcd5d49accc1d1d290eea523e8999a6eb1c902b2be2e91ede31631d8d7f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9772adee-963a-54ae-1e5f-db02962fdd2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem correction_bound (A c R D : ℝ) (hA : 1 ≤ A)
    (hb : ∀ y : ℝ, (y = R ∨ y = -R) → ‖actualCompletedHorizontalIntegral A c y‖ ≤ D) :
    ‖actualFiniteHorizontalCorrection A c R‖ ≤ D / Real.pi := by
  unfold actualFiniteHorizontalCorrection
  simp_rw [initial_bilateral hA]
  change ‖(1 / (2 * (Real.pi : ℂ) * I)) *
    (actualCompletedHorizontalIntegral A c (-R) - actualCompletedHorizontalIntegral A c R)‖ ≤ _
  have hn : ‖(1 / (2 * (Real.pi : ℂ) * I))‖ = 1 / (2 * Real.pi) := by
    norm_num [norm_div, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos Real.pi_pos]
  rw [norm_mul, hn]
  calc
    _ ≤ (1 / (2 * Real.pi)) * (‖actualCompletedHorizontalIntegral A c (-R)‖ +
        ‖actualCompletedHorizontalIntegral A c R‖) :=
      mul_le_mul_of_nonneg_left (norm_sub_le _ _) (by positivity)
    _ ≤ (1 / (2 * Real.pi)) * (D + D) :=
      mul_le_mul_of_nonneg_left (add_le_add (hb _ (Or.inr rfl))
        (hb _ (Or.inl rfl))) (by positivity)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d08505fc004SourceActualSignedDyadicSummableError/Variant4cc7fcd5d49accc1d1d290eea523e8999a6eb1c902b2be2e91ede31631d8d7f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d08505fc004SourceActualSignedDyadicSummableError/Variant4cc7fcd5d49accc1d1d290eea523e8999a6eb1c902b2be2e91ede31631d8d7f6.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64ebf675692d28b7732d080273b07719b850e64f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
