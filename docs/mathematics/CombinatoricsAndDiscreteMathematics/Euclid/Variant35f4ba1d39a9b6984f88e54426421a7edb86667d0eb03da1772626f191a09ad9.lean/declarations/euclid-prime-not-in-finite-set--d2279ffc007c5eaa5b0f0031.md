# euclid_prime_not_in_finite_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dffc7d4a-e660-b627-c6d6-93fc5fcaeb2e",
  "kind": "theorem",
  "lexical_name": "euclid_prime_not_in_finite_set",
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
  "slug": "euclid-prime-not-in-finite-set--d2279ffc007c5eaa5b0f0031",
  "source": {
    "blob": "938cfee42ac1e64fef73c77a8603e560ec84cddf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Euclid/Variant35f4ba1d39a9b6984f88e54426421a7edb86667d0eb03da1772626f191a09ad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2279ffc007c5eaa5b0f003150820ef0d8eba63e376467fcf74123cedcb5a9d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Euclid/Variant35f4ba1d39a9b6984f88e54426421a7edb86667d0eb03da1772626f191a09ad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dffc7d4a-e660-b627-c6d6-93fc5fcaeb2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem euclid_prime_not_in_finite_set
    (S : Finset Nat)
    (hS : ∀ p ∈ S, Nat.Prime p) :
    ∃ q, Nat.Prime q ∧ q ∉ S := by
  let M : Nat := ∏ p ∈ S, p
  have hMpos : 0 < M := by
    exact Finset.prod_pos (fun p hp => (hS p hp).pos)
  let n : PositiveNat := ⟨M + 1, by omega⟩
  have hn : 1 < n.val := by
    dsimp [n, PositiveNat.val]
    omega
  rcases exists_prime_support_of_gt_one n hn with ⟨q, hqSupport, hqPrime⟩
  refine ⟨q, hqPrime, ?_⟩
  intro hqS
  have hqM : q ∣ M := by
    exact Finset.dvd_prod_of_mem (fun p => p) hqS
  have hqn : q ∣ n.val := by
    exact Nat.dvd_of_factorization_pos hqSupport
  have hq1 : q ∣ 1 := by
    have hsub : q ∣ n.val - M := Nat.dvd_sub hqn hqM
    simpa [n, PositiveNat.val, M] using hsub
  exact hqPrime.not_dvd_one hq1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Euclid/Variant35f4ba1d39a9b6984f88e54426421a7edb86667d0eb03da1772626f191a09ad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Euclid/Variant35f4ba1d39a9b6984f88e54426421a7edb86667d0eb03da1772626f191a09ad9.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `938cfee42ac1e64fef73c77a8603e560ec84cddf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
