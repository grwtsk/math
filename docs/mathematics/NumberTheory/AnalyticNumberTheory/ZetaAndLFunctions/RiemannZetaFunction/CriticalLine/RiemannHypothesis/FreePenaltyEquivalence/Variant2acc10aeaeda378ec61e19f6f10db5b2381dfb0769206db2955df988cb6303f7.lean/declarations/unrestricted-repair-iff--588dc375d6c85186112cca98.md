# unrestricted_repair_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c48bc5f8-02b1-579b-9b9e-b7792d07e144",
  "kind": "theorem",
  "lexical_name": "unrestricted_repair_iff",
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
  "slug": "unrestricted-repair-iff--588dc375d6c85186112cca98",
  "source": {
    "blob": "865029e37941e3876a925f4b8714fc36c07d051f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:588dc375d6c85186112cca98d929fc5832955c9e9e39473d9a1a4b502fd0a359",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c48bc5f8-02b1-579b-9b9e-b7792d07e144`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unrestricted_repair_iff {a c d : ℝ} :
    (∃ b : ℝ, 0 ≤ b ∧ repairPositive a c d b) ↔
      0 ≤ a ∧ (a = 0 → c = 0) := by
  constructor
  · rintro ⟨b, _, hp⟩
    exact ⟨repair_requires_source_nonnegative hp, fun ha ↦
      zero_slack_requires_zero_cross (ha ▸ hp)⟩
  · rintro ⟨ha, hcross⟩
    rcases ha.eq_or_lt with ha0 | ha1
    · have hc := hcross ha0.symm
      refine ⟨max 0 (-d), le_max_left _ _, ?_⟩
      intro x y
      simp only [repairQuadratic, ← ha0, hc, zero_mul, mul_zero, zero_add]
      exact mul_nonneg (show 0 ≤ d + max 0 (-d) by
        linarith [le_max_right (0 : ℝ) (-d)]) (sq_nonneg y)
    · exact positive_slack_has_nonnegative_repair ha1 c d

/-- The eventually free penalty in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def EventuallyFreePenalty (f Z c d : ℝ → ℝ) : Prop := ∃ m : ℕ, ∃ D R : ℝ, 0 ≤ D ∧ 1 ≤ R ∧ ∀ A
: ℝ, R ≤ A → ∃ b : ℝ, 0 ≤ b ∧ repairPositive (Z A * (D * A ^ m - f A)) (c A) (d A) b
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865029e37941e3876a925f4b8714fc36c07d051f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
