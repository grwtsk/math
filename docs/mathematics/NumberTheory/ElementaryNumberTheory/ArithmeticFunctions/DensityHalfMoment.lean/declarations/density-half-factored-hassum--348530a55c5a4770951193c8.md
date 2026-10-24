# density_half_factored_hasSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4dd7e6fa-e441-d021-d367-5f97edf7f9fa",
  "kind": "theorem",
  "lexical_name": "density_half_factored_hasSum",
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
  "slug": "density-half-factored-hassum--348530a55c5a4770951193c8",
  "source": {
    "blob": "6ae8ef5cf24176a8a9c4f6fa48b4e1e9775f8337",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 82,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfMoment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:348530a55c5a4770951193c8100bcc7419bae6622379c96f19c41b1f1446bd30",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4dd7e6fa-e441-d021-d367-5f97edf7f9fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_half_factored_hasSum (s : Finset ℕ) :
    HasSum (fun n : Nat.factoredNumbers s => densityCorrectionHalf n)
      (∏ p ∈ s with p.Prime, (1 + 1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1)))) := by
  have h := EulerProduct.summable_and_hasSum_factoredNumbers_prod_filter_prime_tsum
    density_half_one (fun h => density_half_mul h)
    (fun hp => (density_half_prime_hasSum hp).summable.norm) s
  have he : (∏ p ∈ s with p.Prime, ∑' k : ℕ, densityCorrectionHalf (p^k)) =
      (∏ p ∈ s with p.Prime, (1 + 1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1)))) := by
    apply Finset.prod_congr rfl
    intro p hp
    exact (density_half_prime_hasSum (Finset.mem_filter.mp hp).2).tsum_eq
  rw [he] at h
  exact h.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfMoment.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ae8ef5cf24176a8a9c4f6fa48b4e1e9775f8337` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
