# actual_support_half_le_two_sqrt_terminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a7b41c9-3a51-9acf-823e-3d591071538e",
  "kind": "theorem",
  "lexical_name": "actual_support_half_le_two_sqrt_terminal",
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
  "slug": "actual-support-half-le-two-sqrt-terminal--4000e7edcdd85103b6ea883f",
  "source": {
    "blob": "df28819fdf2a73eb9cd006489a4246a468789432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeBetaInteraction/Varianted1cfccdcabb97303081e7feb1c194046cb5311d4e3262934fa84329ddd0324e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4000e7edcdd85103b6ea883f152ae86940e13ca1260e48e2fd7c8642820bd884",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeBetaInteraction/Varianted1cfccdcabb97303081e7feb1c194046cb5311d4e3262934fa84329ddd0324e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a7b41c9-3a51-9acf-823e-3d591071538e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_support_half_le_two_sqrt_terminal {A : ℝ} (hA : 4 ≤ A) :
    Real.exp ((2 * A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) / 2) ≤
      2 * Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) := by
  let a := ((vaughanCutoff A + 1 : ℕ) : ℝ)
  let L := ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ)
  let E := Real.exp ((2 * A - Real.log a) / 2)
  have ha : 0 < a := by dsimp only [a]; positivity
  have he := actual_half_upper_quotient_exp_lower hA
  have hsq : E ^ 2 * a = Real.exp (2 * A) := by
    dsimp only [E]
    rw [pow_two, ← Real.exp_add,
      show (2 * A - Real.log a) / 2 + (2 * A - Real.log a) / 2 =
        2 * A - Real.log a by ring, Real.exp_sub, Real.exp_log ha]
    field_simp
  have hb : E ^ 2 ≤ 4 * L := by
    have hh : E ^ 2 * a ≤ (4 * L) * a := by
      dsimp only [a, L] at hsq ⊢
      nlinarith
    exact le_of_mul_le_mul_right hh ha
  have hL := Real.sq_sqrt (show 0 ≤ L from Nat.cast_nonneg _)
  have hEn : 0 < E := Real.exp_pos _
  change E ≤ 2 * Real.sqrt L
  nlinarith [Real.sqrt_nonneg L]

/-- The genuine actual finite beta defect times the actual closed row has quadratic decay. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeBetaInteraction/Varianted1cfccdcabb97303081e7feb1c194046cb5311d4e3262934fa84329ddd0324e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeBetaInteraction/Varianted1cfccdcabb97303081e7feb1c194046cb5311d4e3262934fa84329ddd0324e.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df28819fdf2a73eb9cd006489a4246a468789432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
