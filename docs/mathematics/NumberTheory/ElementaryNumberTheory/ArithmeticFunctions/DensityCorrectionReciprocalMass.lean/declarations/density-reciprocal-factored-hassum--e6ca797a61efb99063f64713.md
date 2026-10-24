# density_reciprocal_factored_hasSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91c19d02-4e59-1a40-e78e-d4ee7a3c8b54",
  "kind": "theorem",
  "lexical_name": "density_reciprocal_factored_hasSum",
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
  "slug": "density-reciprocal-factored-hassum--e6ca797a61efb99063f64713",
  "source": {
    "blob": "67e445104c082a7578b47f032723d6043f62a235",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 70,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6ca797a61efb99063f647138fabc544f4f86dae9522b5e7fdd43c0fc112c66f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91c19d02-4e59-1a40-e78e-d4ee7a3c8b54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_reciprocal_factored_hasSum (s : Finset ℕ) :
    HasSum (fun n : Nat.factoredNumbers s => densityCorrectionReciprocal n)
      (∑' n : Nat.factoredNumbers s, reciprocalSquare n) := by
  have hf := EulerProduct.summable_and_hasSum_factoredNumbers_prod_filter_prime_tsum
    density_reciprocal_one (fun h => density_reciprocal_mul h)
    (fun hp => (density_reciprocal_prime_hasSum hp).summable.norm) s
  have hg := EulerProduct.summable_and_hasSum_factoredNumbers_prod_filter_prime_tsum
    (by norm_num [reciprocalSquare]) (fun {_ _} _ => reciprocal_square_mul _ _)
    (fun hp => (reciprocal_square_prime_hasSum hp).summable.norm) s
  have he : (∏ p ∈ s with p.Prime, ∑' k : ℕ, densityCorrectionReciprocal (p^k)) =
      (∏ p ∈ s with p.Prime, ∑' k : ℕ, reciprocalSquare (p^k)) := by
    apply Finset.prod_congr rfl
    intro p hp
    rw [(density_reciprocal_prime_hasSum (Finset.mem_filter.mp hp).2).tsum_eq,
      (reciprocal_square_prime_hasSum (Finset.mem_filter.mp hp).2).tsum_eq]
  rw [he, ← hg.2.tsum_eq] at hf
  exact hf.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e445104c082a7578b47f032723d6043f62a235` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
