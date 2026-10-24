# esymm_mul_psum_summand_to_weight

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
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8fe5a001-0b61-6689-e401-4985824d730b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8291f4f-5a61-3f4d-e405-6d2ce0d28338",
  "kind": "theorem",
  "lexical_name": "esymm_mul_psum_summand_to_weight",
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
  "slug": "esymm-mul-psum-summand-to-weight--c3806bef995dbc65410a7aaf",
  "source": {
    "blob": "dcbf732c525dc09762ed377c84677068852da44d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 202,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3806bef995dbc65410a7aafbb42a231bcc530228ce08379b9c1500771dab1c9",
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

Occurrence: `result:c8291f4f-5a61-3f4d-e405-6d2ce0d28338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem esymm_mul_psum_summand_to_weight (k : ℕ) (a : ℕ × ℕ) (ha : a ∈ antidiagonal k) :
    ∑ A ∈ powersetCard a.fst univ, ∑ j, weight σ R k (A, j) =
    (-1) ^ a.fst * esymm σ R a.fst * psum σ R a.snd := by
  simp only [esymm, psum, weight, ← mul_assoc, mul_sum]
  rw [sum_comm]
  refine sum_congr rfl fun x _ ↦ ?_
  rw [sum_mul]
  refine sum_congr rfl fun s hs ↦ ?_
  rw [mem_powersetCard_univ.mp hs, ← mem_antidiagonal.mp ha, add_sub_self_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variantd77cef42bfb53422041006f4ddfe49ef1987c1ef77625acd93fa142d0cdcd8c8.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcbf732c525dc09762ed377c84677068852da44d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
