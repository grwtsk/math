# residual_growth_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1588312-2b6f-3c11-53f6-0f6e16c77ffd",
  "kind": "theorem",
  "lexical_name": "residual_growth_iff",
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
  "slug": "residual-growth-iff--a8b96f751c49c0905c632abf",
  "source": {
    "blob": "7ee2b0992c61692d0d1bea138fe5ba4e217d0a9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 67,
    "path": "GRWTSK/Analysis/Asymptotics/LogarithmicGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8b96f751c49c0905c632abf9da5d084ba13197159b9819a4bd584f2de024858",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1588312-2b6f-3c11-53f6-0f6e16c77ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_growth_iff (β J : ℕ → ℝ)
    (hβ : ∀ n, 0 ≤ β n) (hJ : ∀ n, 0 ≤ J n)
    (hlower : ∀ n, (5/9:ℝ)*β n^6 ≤ J n)
    (hupper : ∀ n, J n ≤ (n:ℝ)*β n^6) :
    UpperSublinear (fun n => Real.log (1+β n)) ↔
    UpperSublinear (fun n => Real.log (1+J n)) := by
  constructor
  · intro hb
    have hs := log_one_add_nat_upperSublinear.add (scale_upperSublinear _ hb 6 (by norm_num))
    apply hs.mono
    intro n
    have hh := Real.log_le_log (by linarith [hJ n] : 0 < 1+J n)
      (residual_one_add_bound _ _ n (hβ n) (hupper n))
    rw [Real.log_mul (by positivity : (1+(n:ℝ)) ≠ 0)
      (pow_ne_zero 6 (ne_of_gt (by linarith [hβ n] : 0 < 1+β n))), Real.log_pow] at hh
    norm_num at hh ⊢
    exact hh
  · intro hj
    have hs := (constant_upperSublinear (Real.log 2)).add hj
    apply hs.mono
    intro n
    have hh := Real.log_le_log (by linarith [hβ n] : 0 < 1+β n)
      (relative_le_of_sixth _ _ (hβ n) (hJ n) (hlower n))
    rw [Real.log_mul (by norm_num : (2:ℝ) ≠ 0) (ne_of_gt (by linarith [hJ n] : 0 < 1+J n))] at hh
    exact hh

/-- Any fixed positive exponent floor fails the actual little-o condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/LogarithmicGrowth.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ee2b0992c61692d0d1bea138fe5ba4e217d0a9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
