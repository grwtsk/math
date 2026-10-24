# norm_inner_div_norm_mul_norm_eq_one_of_ne_zero_of_ne_zero_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52cb5275-56c5-6076-b4ef-47824a41f0ea",
  "kind": "theorem",
  "lexical_name": "norm_inner_div_norm_mul_norm_eq_one_of_ne_zero_of_ne_zero_mul",
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
  "slug": "norm-inner-div-norm-mul-norm-eq-one-of-ne-zero-of-ne-zero-mul--02dedb6e035a94d8082731e0",
  "source": {
    "blob": "39635b126c944c6a29cb9388234d16f51f4a30a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 653,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variante622997833c1864ab4fab45171d8f6fe3ce86df647169aaad2dce0faae81b981.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02dedb6e035a94d8082731e0b825b88ddf09f9c93125b642bfec5decdb6354c6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variante622997833c1864ab4fab45171d8f6fe3ce86df647169aaad2dce0faae81b981.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52cb5275-56c5-6076-b4ef-47824a41f0ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 653–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_inner_div_norm_mul_norm_eq_one_of_ne_zero_of_ne_zero_mul {x : E} {r : 𝕜} (hx : x ≠ 0)
    (hr : r ≠ 0) : ‖⟪x, r • x⟫‖ / (‖x‖ * ‖r • x‖) = 1 := by
  have hx' : ‖x‖ ≠ 0 := by simp [hx]
  have hr' : ‖r‖ ≠ 0 := by simp [hr]
  rw [inner_smul_right, norm_mul, ← inner_self_re_eq_norm, inner_self_eq_norm_mul_norm, norm_smul]
  rw [← mul_assoc, ← div_div, mul_div_cancel_right₀ _ hx', ← div_div, mul_comm,
    mul_div_cancel_right₀ _ hr', div_self hx']

/-- The inner product of a nonzero vector with a nonzero multiple of
itself, divided by the product of their norms, has absolute value
1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variante622997833c1864ab4fab45171d8f6fe3ce86df647169aaad2dce0faae81b981.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variante622997833c1864ab4fab45171d8f6fe3ce86df647169aaad2dce0faae81b981.lean#L653).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39635b126c944c6a29cb9388234d16f51f4a30a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
