# tendsto_exp_div_rpow_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb7b565f-6e65-7668-e29a-48b72a0bbd98",
  "kind": "theorem",
  "lexical_name": "tendsto_exp_div_rpow_atTop",
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
  "slug": "tendsto-exp-div-rpow-attop--5c09bb45e7ee311e6b97d1ec",
  "source": {
    "blob": "5e2d1db210e52b9011fcf5c78f7d54d0998b7437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 146,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c09bb45e7ee311e6b97d1ec1f2052d53ce9e0c4bed6b6b0c1afe768a2cd4b7c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb7b565f-6e65-7668-e29a-48b72a0bbd98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_exp_div_rpow_atTop (s : ℝ) : Tendsto (fun x : ℝ => exp x / x ^ s) atTop atTop := by
  cases' archimedean_iff_nat_lt.1 Real.instArchimedean s with n hn
  refine' tendsto_atTop_mono' _ _ (tendsto_exp_div_pow_atTop n)
  filter_upwards [eventually_gt_atTop (0 : ℝ), eventually_ge_atTop (1 : ℝ)]with x hx₀ hx₁
  rw [div_le_div_left (exp_pos _) (pow_pos hx₀ _) (rpow_pos_of_pos hx₀ _), ← Real.rpow_nat_cast]
  exact rpow_le_rpow_of_exponent_le hx₁ hn.le
#align tendsto_exp_div_rpow_at_top tendsto_exp_div_rpow_atTop

/-- The function `exp (b * x) / x ^ s` tends to `+∞` at `+∞`, for any real `s` and `b > 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant2179411e8951216fd0d5fc2babe6665d0a6eabbdaa564c4102524fcce7d4873a.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e2d1db210e52b9011fcf5c78f7d54d0998b7437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
