# HasProd.congr_cofinite₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "997b679f9c2f7f50facdd803466fed05c1558b13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 439,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99b615a7-3dd6-5b0a-4a73-234d84c8e85a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e84df53-971c-2ebe-916c-1fc9936471e9",
  "kind": "lemma",
  "lexical_name": "HasProd.congr_cofinite₀",
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
  "slug": "hasprod-congr-cofinite--f87610a269f7a05d493db9ee",
  "source": {
    "blob": "997b679f9c2f7f50facdd803466fed05c1558b13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 439,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f87610a269f7a05d493db9eefbc254e270a3185d2000fc71bc64c8a0b365c4c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e84df53-971c-2ebe-916c-1fc9936471e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasProd.congr_cofinite₀ {c : K} (hc : HasProd f c) {s : Finset α}
    (hs : ∀ a ∈ s, f a ≠ 0) (hs' : ∀ a ∉ s, f a = g a) :
    HasProd g (c * ((∏ i ∈ s, g i) / ∏ i ∈ s, f i)) := by
  classical
  refine (Tendsto.mul_const ((∏ i ∈ s, g i) / ∏ i ∈ s, f i) hc).congr' ?_
  filter_upwards [eventually_ge_atTop s] with t ht
  calc (∏ i ∈ t, f i) * ((∏ i ∈ s, g i) / ∏ i ∈ s, f i)
  _ = ((∏ i ∈ s, f i) * ∏ i ∈ t \ s, g i) * _ := by
    conv_lhs => rw [← union_sdiff_of_subset ht, prod_union disjoint_sdiff,
      prod_congr rfl fun i hi ↦ hs' i (mem_sdiff.mp hi).2]
  _ = (∏ i ∈ s, g i) * ∏ i ∈ t \ s, g i := by
    rw [← mul_div_assoc, ← div_mul_eq_mul_div, ← div_mul_eq_mul_div, div_self, one_mul, mul_comm]
    exact prod_ne_zero_iff.mpr hs
  _ = ∏ i ∈ t, g i := by
    rw [← prod_union disjoint_sdiff, union_sdiff_of_subset ht]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `997b679f9c2f7f50facdd803466fed05c1558b13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
