# integrated_prime_square_block_eventually_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd62a36f63bbca81cdc105230a28a94e4d86637a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9aeca09-cab7-22e9-214f-7cf0019d37d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0758f5d-d3cf-5473-2027-318276d58efe",
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
  "slug": "integrated-prime-square-block-eventually-pos--9b1af78001142902b7469ba4",
  "source": {
    "blob": "bd62a36f63bbca81cdc105230a28a94e4d86637a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantefc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b1af78001142902b7469ba47006e324a6784ddce099633fb64f1ee7108b0553",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantefc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0758f5d-d3cf-5473-2027-318276d58efe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–98.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantefc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Efc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28ScaledFixedPrime/Variantefc9b830f53e09f8c7ca135261401ee61d5af281847462b5e9950f7245d45b28.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd62a36f63bbca81cdc105230a28a94e4d86637a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
