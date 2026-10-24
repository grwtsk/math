# S5_lt_dawson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a64784e-b964-f20e-9e56-a93bf375c955",
  "kind": "lemma",
  "lexical_name": "S5_lt_dawson",
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
  "slug": "s5-lt-dawson--5ac3ffa42fb95f57fa41bfd4",
  "source": {
    "blob": "4bc63a57afc465f27db885b1686b1f5e58591aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 408,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ac3ffa42fb95f57fa41bfd497ede784396871d58705f125d96e77ea8329304e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a64784e-b964-f20e-9e56-a93bf375c955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma S5_lt_dawson (x : ℝ) (hx : x > 0) : S5 x < dawson x := by
  have hf0 : exp (0^2) * (dawson 0 - S5 0) = 0 := by
    unfold S5 dawson
    simp
  have h_deriv_f : ∀ y > 0, deriv (fun t ↦ exp (t^2) * (dawson t - S5 t)) y =
      exp (y^2) * (64 / 10395) * y^12 := by
    intro y hy
    have h_dawson : HasDerivAt dawson (1 - 2 * y * dawson y) y :=
      differentiable_dawson.differentiableAt.hasDerivAt.congr_deriv (deriv_dawson y)
    have h_exp := hasDerivAt_exp_sq y
    have h_comb := h_exp.mul (h_dawson.sub (hasDerivAt_S5 y))
    change deriv ((fun t ↦ exp (t^2)) * (dawson - S5)) y = exp (y^2) * (64 / 10395) * y^12
    rw [h_comb.deriv]
    change 2 * y * exp (y^2) * (dawson y - S5 y) +
      exp (y^2) *
        (1 - 2 * y * dawson y - (1 - 2 * y^2 + 4/3 * y^4 - 8/15 * y^6 + 16/105 * y^8 - 32/945 * y^10)) =
      exp (y^2) * (64 / 10395) * y^12
    unfold S5
    ring
  have h_deriv_pos : ∀ y > 0, deriv (fun t ↦ exp (t^2) * (dawson t - S5 t)) y > 0 := fun y hy => by
    rw [h_deriv_f y hy]
    exact mul_pos (mul_pos (exp_pos _) (by norm_num)) (pow_pos hy 12)
  have h_diff : Differentiable ℝ (fun t ↦ exp (t^2) * (dawson t - S5 t)) := by
    apply Differentiable.mul (by fun_prop)
    apply Differentiable.sub
    · exact differentiable_dawson
    · unfold S5; fun_prop
  have hf_pos : exp (x^2) * (dawson x - S5 x) > 0 :=
    pos_of_deriv_pos_of_zero h_diff hf0 h_deriv_pos hx
  exact lt_of_sub_pos (pos_of_mul_pos_right hf_pos (exp_pos _).le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc63a57afc465f27db885b1686b1f5e58591aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
