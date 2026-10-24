# euclid_prime_not_in_finite_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b84d97533aef8d0ffbd77c36fa23d39d91140bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 16,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/206d6bfd1e2a9d49fdeb8bddaeb8a274e4e48309825f3036a22bcca25889de4f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6fbe3717-8ddd-cd68-c57d-283ca10df6b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d94e2922-0df3-0e2a-e0a7-11d2eabab43e",
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
  "slug": "euclid-prime-not-in-finite-set--986d07f4317a588d7ccbc23b",
  "source": {
    "blob": "3b84d97533aef8d0ffbd77c36fa23d39d91140bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 16,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Euclid/Variant206d6bfd1e2a9d49fdeb8bddaeb8a274e4e48309825f3036a22bcca25889de4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:986d07f4317a588d7ccbc23b123561d6716d5712fbdc3dbe7e8eed051a956af5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Euclid/Variant206d6bfd1e2a9d49fdeb8bddaeb8a274e4e48309825f3036a22bcca25889de4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d94e2922-0df3-0e2a-e0a7-11d2eabab43e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–38.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Euclid/Variant206d6bfd1e2a9d49fdeb8bddaeb8a274e4e48309825f3036a22bcca25889de4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Euclid/Variant206d6bfd1e2a9d49fdeb8bddaeb8a274e4e48309825f3036a22bcca25889de4f.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b84d97533aef8d0ffbd77c36fa23d39d91140bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
