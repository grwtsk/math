# unrestricted_family_iff_source_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41037d06-8c3b-3f25-c220-72c1e4dbb46b",
  "kind": "theorem",
  "lexical_name": "unrestricted_family_iff_source_upper",
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
  "slug": "unrestricted-family-iff-source-upper--9e83253adcfab340611e4fb0",
  "source": {
    "blob": "865029e37941e3876a925f4b8714fc36c07d051f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e83253adcfab340611e4fb0b8a5a8fc0a83ee4184edce44ad4441c52da79e6f",
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

Occurrence: `result:41037d06-8c3b-3f25-c220-72c1e4dbb46b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unrestricted_family_iff_source_upper (f Z c d : ℝ → ℝ)
    (hZ : ∀ A, 1 ≤ A → 0 < Z A) :
    EventuallyFreePenalty f Z c d ↔ EventuallyPolynomialUpper f := by
  constructor
  · rintro ⟨m, D, R, hD, hR, hrepair⟩
    refine ⟨m, D, R, hD, hR, ?_⟩
    intro A hA
    obtain ⟨b, _, hp⟩ := hrepair A hA
    have hs := repair_requires_source_nonnegative hp
    have h := (mul_nonneg_iff_of_pos_left (hZ A (hR.trans hA))).mp hs
    linarith
  · rintro ⟨m, D, R, hD, hR, hbound⟩
    refine ⟨m, D + 1, R, by linarith, hR, ?_⟩
    intro A hA
    have hA0 : 0 < A := lt_of_lt_of_le (by norm_num) (hR.trans hA)
    have hpower := pow_pos hA0 m
    have hslack : 0 < (D + 1) * A ^ m - f A := by
      have := hbound A hA
      nlinarith
    exact positive_slack_has_nonnegative_repair (mul_pos (hZ A (hR.trans hA)) hslack) _ _

/-- The free certificate still requires the exact actual closed prime upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FreePenaltyEquivalence/Variant2acc10aeaeda378ec61e19f6f10db5b2381dfb0769206db2955df988cb6303f7.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865029e37941e3876a925f4b8714fc36c07d051f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
