# second_deriv_prime_square_defect_packet_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "accde29eaafd7ccd80e1acbea45c2cbd0fb9ae5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fa148b4-0033-a6c7-fcd2-a45b06d3340f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d65e114d-8c04-c556-4463-f811ab90f331",
  "kind": "theorem",
  "lexical_name": "second_deriv_prime_square_defect_packet_zero",
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
  "slug": "second-deriv-prime-square-defect-packet-zero--6f3e877daacd8b7f5c7c5a91",
  "source": {
    "blob": "accde29eaafd7ccd80e1acbea45c2cbd0fb9ae5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 304,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f3e877daacd8b7f5c7c5a91452777be9ab35b7cdc1c888db3b98e8cfe9293bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d65e114d-8c04-c556-4463-f811ab90f331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_deriv_prime_square_defect_packet_zero {p : ℕ} (hp : p.Prime) :
    deriv (deriv (fun ξ : ℝ ↦
      primeWeight p * Complex.normSq (1 - chi ξ p) +
        primeWeight (p ^ 2) * Complex.normSq (1 - chi ξ (p ^ 2 : ℕ)))) 0 =
      2 * (Real.log p / Real.sqrt p + 4 * (Real.log p / (p : ℝ))) * Real.log p ^ 2 := by
  have heq : deriv (fun ξ : ℝ ↦
      primeWeight p * Complex.normSq (1 - chi ξ p) +
        primeWeight (p ^ 2) * Complex.normSq (1 - chi ξ (p ^ 2 : ℕ))) =
      (fun ξ ↦ primeWeight p * singleDefectDerivative ξ p +
        primeWeight (p ^ 2) * singleDefectDerivative ξ (p ^ 2 : ℕ)) := by
    funext ξ
    exact (((has_deriv_at_single_defect p ξ).const_mul (primeWeight p)).add
      ((has_deriv_at_single_defect (p ^ 2 : ℕ) ξ).const_mul (primeWeight (p ^ 2)))).deriv
  have h := ((has_deriv_at_single_defect_derivative_zero p).const_mul (primeWeight p)).fun_add
    ((has_deriv_at_single_defect_derivative_zero (p ^ 2 : ℕ)).const_mul (primeWeight (p ^ 2)))
  rw [heq, h.deriv, prime_weight_prime_pow hp (by decide),
    show primeWeight p = Real.log p / Real.sqrt p from by
      rw [primeWeight, ArithmeticFunction.vonMangoldt_apply_prime hp],
    Nat.cast_pow, Real.log_pow, Real.sq_sqrt (Nat.cast_nonneg p)]
  norm_num only [Nat.cast_ofNat]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `accde29eaafd7ccd80e1acbea45c2cbd0fb9ae5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
