# tendsto_mul_log_one_plus_div_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ee2009f6d646ef51374b9d073da5dd6180533c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:654cd7db-d9b6-86cf-cb00-83e36b563f76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32c59570-b5ee-2609-a102-1674deecaee8",
  "kind": "theorem",
  "lexical_name": "tendsto_mul_log_one_plus_div_atTop",
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
  "slug": "tendsto-mul-log-one-plus-div-attop--b6e171895304119910c9e876",
  "source": {
    "blob": "2ee2009f6d646ef51374b9d073da5dd6180533c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 209,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6e171895304119910c9e876a5ae739b2ccb5431a1f286617a866ea34326eb9e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32c59570-b5ee-2609-a102-1674deecaee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_mul_log_one_plus_div_atTop (t : ℝ) :
    Tendsto (fun x => x * log (1 + t / x)) atTop (𝓝 t) := by
  have h₁ : Tendsto (fun h => h⁻¹ * log (1 + t * h)) (𝓝[≠] 0) (𝓝 t) := by
    simpa [hasDerivAt_iff_tendsto_slope, slope_fun_def] using
      (((hasDerivAt_id (0 : ℝ)).const_mul t).const_add 1).log (by simp)
  have h₂ : Tendsto (fun x : ℝ => x⁻¹) atTop (𝓝[≠] 0) :=
    tendsto_inv_atTop_zero'.mono_right (nhdsWithin_mono _ fun x hx => (Set.mem_Ioi.mp hx).ne')
  simpa only [(· ∘ ·), inv_inv] using h₁.comp h₂
#align real.tendsto_mul_log_one_plus_div_at_top Real.tendsto_mul_log_one_plus_div_atTop

open scoped BigOperators

/-- A crude lemma estimating the difference between `log (1-x)` and its Taylor series at `0`,
where the main point of the bound is that it tends to `0`. The goal is to deduce the series
expansion of the logarithm, in `hasSum_pow_div_log_of_abs_lt_1`.

Porting note: TODO: use one of generic theorems about Taylor's series to prove this estimate.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ee2009f6d646ef51374b9d073da5dd6180533c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
