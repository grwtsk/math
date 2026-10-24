# dawson_lt_S6

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f191002a-3747-1939-1c25-917e7e17d85c",
  "kind": "lemma",
  "lexical_name": "dawson_lt_S6",
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
  "slug": "dawson-lt-s6--fea7068cf34d8ed8245cbf6d",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 369,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fea7068cf34d8ed8245cbf6dc60730c45ea30f0de17c0857efc84c5ec52dd9ea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f191002a-3747-1939-1c25-917e7e17d85c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dawson_lt_S6 (x : ℝ) (hx : x > 0) : dawson x < S6 x := by
  have hf0 : exp (0^2) * (S6 0 - dawson 0) = 0 := by
    unfold S6 dawson
    simp
  have h_deriv_f : ∀ y > 0, deriv (fun t ↦ exp (t^2) * (S6 t - dawson t)) y =
      exp (y^2) * (128 / 135135) * y^14 := by
    intro y hy
    have h_dawson : HasDerivAt dawson (1 - 2 * y * dawson y) y :=
      differentiable_dawson.differentiableAt.hasDerivAt.congr_deriv (deriv_dawson y)
    have h_exp := hasDerivAt_exp_sq y
    have h_comb := h_exp.mul ((hasDerivAt_S6 y).sub h_dawson)
    change deriv ((fun t ↦ exp (t^2)) * (S6 - dawson)) y = exp (y^2) * (128 / 135135) * y^14
    rw [h_comb.deriv]
    change 2 * y * exp (y^2) * (S6 y - dawson y) +
      exp (y^2) *
        (1 - 2 * y^2 + 4/3 * y^4 - 8/15 * y^6 + 16/105 * y^8 - 32/945 * y^10 + 64/10395 * y^12 -
          (1 - 2 * y * dawson y)) =
      exp (y^2) * (128 / 135135) * y^14
    unfold S6
    ring
  have h_deriv_pos : ∀ y > 0, deriv (fun t ↦ exp (t^2) * (S6 t - dawson t)) y > 0 := fun y hy => by
    rw [h_deriv_f y hy]
    exact mul_pos (mul_pos (exp_pos _) (by norm_num)) (pow_pos hy 14)
  have h_diff : Differentiable ℝ (fun t ↦ exp (t^2) * (S6 t - dawson t)) := by
    apply Differentiable.mul (by fun_prop)
    apply Differentiable.sub
    · unfold S6; fun_prop
    · exact differentiable_dawson
  have hf_pos : exp (x^2) * (S6 x - dawson x) > 0 :=
    pos_of_deriv_pos_of_zero h_diff hf0 h_deriv_pos hx
  exact lt_of_sub_pos (pos_of_mul_pos_right hf_pos (exp_pos _).le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
