# integrated_prime_square_block_eventually_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e3d0355-4b0e-3345-35dd-6c8d31e31811",
  "kind": "theorem",
  "lexical_name": "integrated_prime_square_block_eventually_pos",
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
  "slug": "integrated-prime-square-block-eventually-pos--498fb1ed344145291e121dc5",
  "source": {
    "blob": "0b5d7505fd7ebf76847dad1ed505796f18c61f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantb90869c65629e9b330e4183ab47f60a7cdad634a28ddf90a4fb39b64b09cfc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:498fb1ed344145291e121dc584f89a6c559a3fe3cd13322d3a2c9e0fb5e9eefd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantb90869c65629e9b330e4183ab47f60a7cdad634a28ddf90a4fb39b64b09cfc16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e3d0355-4b0e-3345-35dd-6c8d31e31811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrated_prime_square_block_eventually_pos {p : ℕ} (hp : p.Prime) :
    ∀ᶠ A : ℝ in atTop,
      0 < primeWeight p * scaledKernel A (Real.log p / A) +
        primeWeight (p ^ 2) * scaledKernel A (Real.log (p ^ 2 : ℕ) / A) := by
  have h := ((scaled_kernel_fixed_index_tendsto p).const_mul (primeWeight p)).add
    ((scaled_kernel_fixed_index_tendsto (p ^ 2)).const_mul (primeWeight (p ^ 2)))
  have hpos : 0 < primeWeight p * 1 + primeWeight (p ^ 2) * 1 := by
    simpa only [mul_one] using add_pos_of_pos_of_nonneg (prime_weight_pos hp)
      (primeWeight_nonneg (p ^ 2))
  exact (tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ (0 : ℝ)) atTop (nhds 0)).eventually_lt h hpos

end

end FormalResearch.RiemannHypothesis.PhaseKernelBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantb90869c65629e9b330e4183ab47f60a7cdad634a28ddf90a4fb39b64b09cfc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantb90869c65629e9b330e4183ab47f60a7cdad634a28ddf90a4fb39b64b09cfc16.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b5d7505fd7ebf76847dad1ed505796f18c61f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
