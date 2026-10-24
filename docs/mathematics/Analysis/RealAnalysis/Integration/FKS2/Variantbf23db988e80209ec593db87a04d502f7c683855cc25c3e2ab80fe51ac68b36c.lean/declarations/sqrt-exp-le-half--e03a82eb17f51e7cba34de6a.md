# sqrt_exp_le_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:034560f5-c50c-34c8-8e18-0c1bd6d26a23",
  "kind": "lemma",
  "lexical_name": "sqrt_exp_le_half",
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
  "slug": "sqrt-exp-le-half--e03a82eb17f51e7cba34de6a",
  "source": {
    "blob": "b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4140,
    "line": 4130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e03a82eb17f51e7cba34de6a0a82c9f5efc942f4994b2d15ee08570de691c957",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:034560f5-c50c-34c8-8e18-0c1bd6d26a23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4130–4140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sqrt_exp_le_half (v : ℝ) (hv : v ≥ 0) : Real.sqrt v * Real.exp (-v) ≤ 1/2 := by
  -- Let $u = \sqrt{v}$, then the inequality becomes $u e^{-u^2} \leq \frac{1}{2}$.
  set u : ℝ := Real.sqrt v
  have hu : u * Real.exp (-u^2) ≤ 1 / 2 := by
    -- We'll use the fact that $u e^{-u^2} \leq \frac{1}{2}$ for all $u \geq 0$. This follows from the fact that the maximum of $u e^{-u^2}$ occurs at $u = \frac{1}{\sqrt{2}}$.
    have h_max : ∀ u : ℝ, 0 ≤ u → u * Real.exp (-u ^ 2) ≤ 1 / 2 := by
      intro u hu; rw [ Real.exp_neg ] ; ring_nf; norm_num; (
      rw [ ← div_eq_mul_inv, div_le_iff₀ ( Real.exp_pos _ ) ] ; nlinarith [ sq_nonneg ( u - 1 ), Real.add_one_le_exp ( u ^ 2 ) ] ;);
    exact h_max u <| Real.sqrt_nonneg v;
  rwa [ Real.sq_sqrt hv ] at hu

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean#L4130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
