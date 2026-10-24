# absNorm_mul_finprod_finitePlace_eq_one_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7b9f8680e1e7806ca62343835bbb665248bc127",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3839996d-1fb2-af78-6e37-baf3e631b1d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec2ab819-00fc-01b9-12af-24b0cac4bc22",
  "kind": "lemma",
  "lexical_name": "absNorm_mul_finprod_finitePlace_eq_one_aux",
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
  "slug": "absnorm-mul-finprod-finiteplace-eq-one-aux--8de737d097232847bee66e62",
  "source": {
    "blob": "f7b9f8680e1e7806ca62343835bbb665248bc127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 173,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8de737d097232847bee66e620eed46a1c913bc560b57e2362988a9c828a38dac",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec2ab819-00fc-01b9-12af-24b0cac4bc22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma absNorm_mul_finprod_finitePlace_eq_one_aux [Nonempty ι] (hx : ∀ i, x i ≠ 0) :
    (span <| Set.range x).absNorm * ∏ᶠ v : FinitePlace K, ⨆ i, v (x i) = 1 := by
  have H j : span {x j} ≠ ⊥ := mt span_singleton_eq_bot.mp (hx j)
  have hx' : ⨆ i, span {x i} ≠ ⊥ :=
    iSup_eq_bot.not.mpr <| not_forall.mpr ⟨Classical.ofNonempty, H _⟩
  rw [span_range_eq_iSup, ← finprod_finitePlace_pow_multiplicity hx',
    map_finprod _ <| hasFiniteMulSupport_fun_pow_multiplicity hx' (·), Nat.cast_finprod',
    ← finprod_mul_distrib ?hf <| .iSup (FinitePlace.hasFiniteMulSupport <| mod_cast hx ·)]
  case hf =>
    simp only [map_pow, Nat.cast_pow]
    exact hasFiniteMulSupport_fun_pow_multiplicity hx' fun v ↦ (v.absNorm : ℝ)
  refine finprod_eq_one_of_forall_eq_one fun v ↦ ?_
  have hn := absNorm_eq_zero_iff.not.mpr v.maximalIdeal.ne_bot
  have h {m : ℕ} : (0 : ℝ) < ↑(absNorm v.maximalIdeal.asIdeal ^ m) := by positivity
  rw [multiplicity_iSup _ H, map_pow, mul_eq_one_iff_inv_eq₀ h.ne',
    map_iInf_of_monotone (fun _ ↦ multiplicity ..) (pow_right_monotone <| by lia),
    map_iInf_of_monotone _ Nat.mono_cast,
    map_iInf_of_antitoneOn antitoneOn_inv_pos fun _ ↦ Set.mem_ofPred.mpr h]
  refine iSup_congr fun i ↦ ?_
  rw [← mul_eq_one_iff_inv_eq₀ h.ne', mul_comm, Nat.cast_pow]
  exact apply_mul_absNorm_pow_eq_one v (hx i)

-- TODO: Generalize the following to integral closures of `ℤ` in `K` in place of `𝓞 K`.
open Ideal in
/-- This statement is equivalent to the fact that the "finite part" of the multiplicative
height of a (non-zero) tuple `x` is the inverse of the absolute norm of the ideal generated
by the values of `x`. We state it in a way that avoids taking an inverse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7b9f8680e1e7806ca62343835bbb665248bc127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
