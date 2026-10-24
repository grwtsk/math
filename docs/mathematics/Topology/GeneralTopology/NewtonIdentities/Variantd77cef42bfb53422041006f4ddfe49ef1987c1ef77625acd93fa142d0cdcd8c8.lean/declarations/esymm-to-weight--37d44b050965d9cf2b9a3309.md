# esymm_to_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcbf732c525dc09762ed377c84677068852da44d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9a95116-6fb6-9c57-d2b1-fa59b7b4ab81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36b393a2-f43d-1dac-3f18-c7210ce88ec4",
  "kind": "theorem",
  "lexical_name": "esymm_to_weight",
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
  "slug": "esymm-to-weight--37d44b050965d9cf2b9a3309",
  "source": {
    "blob": "dcbf732c525dc09762ed377c84677068852da44d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 196,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37d44b050965d9cf2b9a3309874800d8cffd26f1fd33b6bddee890bd8ae0ec05",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36b393a2-f43d-1dac-3f18-c7210ce88ec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem esymm_to_weight [DecidableEq σ] (k : ℕ) : k * esymm σ R k =
    (-1) ^ k * ∑ t ∈ pairs σ k with #t.1 = k, weight σ R k t := by
  rw [esymm, sum_filter_pairs_eq_sum_powersetCard_sum σ R k (fun t ↦ weight σ R k t),
    sum_congr rfl (esymm_summand_to_weight σ R k), mul_comm (k : MvPolynomial σ R) ((-1) ^ k),
    ← mul_sum, ← mul_assoc, ← mul_assoc, ← pow_add, Even.neg_one_pow ⟨k, rfl⟩, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcbf732c525dc09762ed377c84677068852da44d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
