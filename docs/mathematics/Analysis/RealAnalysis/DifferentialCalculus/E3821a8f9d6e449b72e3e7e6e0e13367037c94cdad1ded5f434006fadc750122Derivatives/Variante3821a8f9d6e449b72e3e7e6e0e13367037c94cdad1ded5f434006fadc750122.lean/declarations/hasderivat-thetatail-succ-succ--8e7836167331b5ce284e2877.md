# hasDerivAt_thetaTail_succ_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66d88f9cbfbd169cf374a393ce25b899ca1bba40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39c59620-e080-6cb9-63c5-38695f1d3e8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83fd4040-6eca-8dd7-bf36-2d966102bb90",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_thetaTail_succ_succ",
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
  "slug": "hasderivat-thetatail-succ-succ--8e7836167331b5ce284e2877",
  "source": {
    "blob": "66d88f9cbfbd169cf374a393ce25b899ca1bba40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e7836167331b5ce284e2877f18cb85bdca8a9decc7016e0b1a343b7b03be356",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83fd4040-6eca-8dd7-bf36-2d966102bb90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_thetaTail_succ_succ (r : ℕ) (t : ℝ) :
    HasDerivAt (thetaTail (r + 1 + 1)) (-thetaTail (r + 1) t) t := by
  have heq : thetaTail (r + 1 + 1) = fun t =>
      (∑ i ∈ Finset.range (r + 1 + 1), tailBinomialCoeff (r + 1) i t *
        sourcePowerTail i t) / ((r + 1).factorial : ℝ) := funext (thetaTail_eq_binomial (r + 1))
  rw [heq]
  have hd := (HasDerivAt.fun_sum (u := Finset.range (r + 1 + 1))
    fun i _ => (hasDerivAt_tailBinomialCoeff (r + 1) i t).mul
      (hasDerivAt_sourcePowerTail i t)).div_const ((r + 1).factorial : ℝ)
  convert! hd using 1
  have hz : ∑ i ∈ Finset.range (r + 1 + 1),
      tailBinomialCoeff (r + 1) i t * (thetaPhi t * t ^ i) = 0 := by
    simp_rw [show ∀ i, tailBinomialCoeff (r + 1) i t * (thetaPhi t * t ^ i) =
      thetaPhi t * (tailBinomialCoeff (r + 1) i t * t ^ i) by intro i; ring]
    rw [← Finset.mul_sum, tailBinomialCoeff_sum]
    simp
  have hs : ∑ i ∈ Finset.range (r + 1 + 1),
      (deriv (tailBinomialCoeff (r + 1) i) t * sourcePowerTail i t +
        tailBinomialCoeff (r + 1) i t * -(thetaPhi t * t ^ i)) =
      -(r + 1 : ℝ) * ∫ u in Ici t, thetaPhi u * (u - t) ^ r := by
    simp_rw [mul_neg, ← sub_eq_add_neg]
    rw [Finset.sum_sub_distrib, hz, sub_zero,
      ← integral_source_coeff_sum (r + 1) (fun i => deriv (tailBinomialCoeff (r + 1) i) t) t]
    simp_rw [tailBinomialCoeff_deriv_sum, Nat.add_sub_cancel]
    rw [← integral_const_mul]
    apply integral_congr_ae
    filter_upwards [] with u
    push_cast
    ring
  rw [hs]
  simp only [thetaTail]
  rw [integral_div, Nat.factorial_succ]
  push_cast
  field_simp


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122Derivatives/Variante3821a8f9d6e449b72e3e7e6e0e13367037c94cdad1ded5f434006fadc750122.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66d88f9cbfbd169cf374a393ce25b899ca1bba40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
