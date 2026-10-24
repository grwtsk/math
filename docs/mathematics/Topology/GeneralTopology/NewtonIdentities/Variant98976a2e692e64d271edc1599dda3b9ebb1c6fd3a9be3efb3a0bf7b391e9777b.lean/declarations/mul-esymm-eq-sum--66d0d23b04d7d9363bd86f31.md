# mul_esymm_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5629241e74412e7f343152304c81fbc5124e8821",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a03100cc-9d26-e82c-61bb-91856dd647da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb0ddd0b-90eb-45a0-fca7-28f675959845",
  "kind": "theorem",
  "lexical_name": "mul_esymm_eq_sum",
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
  "slug": "mul-esymm-eq-sum--66d0d23b04d7d9363bd86f31",
  "source": {
    "blob": "5629241e74412e7f343152304c81fbc5124e8821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 239,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66d0d23b04d7d9363bd86f312aba03f1b4dec8fffaf77e5f4f017490b3253966",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb0ddd0b-90eb-45a0-fca7-28f675959845`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_esymm_eq_sum (k : ℕ) : k * esymm σ R k =
    (-1) ^ (k + 1) * ∑ a in (antidiagonal k).filter (fun a ↦ a.fst < k),
    (-1) ^ a.fst * esymm σ R a.fst * psum σ R a.snd := by
  rw [NewtonIdentities.esymm_to_weight σ R k, NewtonIdentities.esymm_mul_psum_to_weight σ R k,
    eq_comm, ← sub_eq_zero, sub_eq_add_neg, neg_mul_eq_neg_mul,
    neg_eq_neg_one_mul ((-1 : MvPolynomial σ R) ^ k)]
  nth_rw 2 [← pow_one (-1 : MvPolynomial σ R)]
  rw [← pow_add, add_comm 1 k, ← left_distrib,
    ← sum_disjUnion (NewtonIdentities.disjoint_filter_pairs_lt_filter_pairs_eq σ k),
    NewtonIdentities.disjUnion_filter_pairs_eq_pairs σ k, NewtonIdentities.weight_sum σ R k,
    neg_one_pow_mul_eq_zero_iff.mpr rfl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant98976a2e692e64d271edc1599dda3b9ebb1c6fd3a9be3efb3a0bf7b391e9777b.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5629241e74412e7f343152304c81fbc5124e8821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
