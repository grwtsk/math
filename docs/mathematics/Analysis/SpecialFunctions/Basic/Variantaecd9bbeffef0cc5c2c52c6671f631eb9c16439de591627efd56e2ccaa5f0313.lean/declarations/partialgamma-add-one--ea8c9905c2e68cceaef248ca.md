# partialGamma_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78241d02a3ed3f1e088d42bf3bc8e87a85456767",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/aecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53ffb4e8-0f6a-2598-517f-6c7989cca965",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6f49fad-211f-adf2-3f76-8270410fd06b",
  "kind": "theorem",
  "lexical_name": "partialGamma_add_one",
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
  "slug": "partialgamma-add-one--ea8c9905c2e68cceaef248ca",
  "source": {
    "blob": "78241d02a3ed3f1e088d42bf3bc8e87a85456767",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 203,
    "path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea8c9905c2e68cceaef248ca4e67a5fea5d3260cbc6b5d844ee698151d2b678c",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6f49fad-211f-adf2-3f76-8270410fd06b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialGamma_add_one {s : ℂ} (hs : 0 < s.re) {X : ℝ} (hX : 0 ≤ X) :
    partialGamma (s + 1) X = s * partialGamma s X - (-X).exp * X ^ s := by
  rw [partialGamma, partialGamma, add_sub_cancel]
  have F_der_I : ∀ x : ℝ, x ∈ Ioo 0 X → HasDerivAt (fun x => (-x).exp * x ^ s : ℝ → ℂ)
      (-((-x).exp * x ^ s) + (-x).exp * (s * x ^ (s - 1))) x := by
    intro x hx
    have d1 : HasDerivAt (fun y : ℝ => (-y).exp) (-(-x).exp) x := by
      simpa using (hasDerivAt_neg x).exp
    have d2 : HasDerivAt (fun y : ℝ => ↑y ^ s) (s * x ^ (s - 1)) x := by
      have t := @HasDerivAt.cpow_const _ _ _ s (hasDerivAt_id ↑x) ?_
      simpa only [mul_one] using t.comp_ofReal
      simpa only [id.def, ofReal_re, ofReal_im, Ne.def, eq_self_iff_true, not_true, or_false_iff,
        mul_one] using hx.1
    simpa only [ofReal_neg, neg_mul] using d1.ofReal_comp.mul d2
  have cont := (continuous_ofReal.comp continuous_neg.exp).mul (continuous_ofReal_cpow_const hs)
  have der_ible :=
    (Gamma_integrand_deriv_integrable_A hs hX).add (Gamma_integrand_deriv_integrable_B hs hX)
  have int_eval := integral_eq_sub_of_hasDerivAt_of_le hX cont.continuousOn F_der_I der_ible
  -- We are basically done here but manipulating the output into the right form is fiddly.
  apply_fun fun x : ℂ => -x at int_eval
  rw [intervalIntegral.integral_add (Gamma_integrand_deriv_integrable_A hs hX)
      (Gamma_integrand_deriv_integrable_B hs hX),
    intervalIntegral.integral_neg, neg_add, neg_neg] at int_eval
  rw [eq_sub_of_add_eq int_eval, sub_neg_eq_add, neg_sub, add_comm, add_sub]
  have : (fun x => (-x).exp * (s * x ^ (s - 1)) : ℝ → ℂ) =
      (fun x => s * (-x).exp * x ^ (s - 1) : ℝ → ℂ) := by ext1; ring
  rw [this]
  have t := @integral_const_mul 0 X volume _ _ s fun x : ℝ => (-x).exp * x ^ (s - 1)
  rw [← t, ofReal_zero, zero_cpow]
  · rw [mul_zero, add_zero]; congr 2; ext1; ring
  · contrapose! hs; rw [hs, zero_re]
#align complex.partial_Gamma_add_one Complex.partialGamma_add_one

/-- The recurrence relation for the `Γ` integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Basic/Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78241d02a3ed3f1e088d42bf3bc8e87a85456767` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
