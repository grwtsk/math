# ae_mem_finset_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3431d6976e3a76bd141f5be517d8eb2fdc79436d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:acea76a0-858b-f4bd-c6e4-38fa99f7b044",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f243e6db-fa61-f3d3-625a-6f34ae643f53",
  "kind": "lemma",
  "lexical_name": "ae_mem_finset_iff",
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
  "slug": "ae-mem-finset-iff--2a67cf38a9f32ffea5c88d44",
  "source": {
    "blob": "3431d6976e3a76bd141f5be517d8eb2fdc79436d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 302,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a67cf38a9f32ffea5c88d446ab40e78cc40744580a7b542e5d66c290e75798a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f243e6db-fa61-f3d3-625a-6f34ae643f53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ae_mem_finset_iff : (∀ᵐ a ∂μ, a ∈ s) ↔ μ = ∑ a ∈ s, μ {a} • .dirac a where
  mp hμ := by
    ext t ht
    rw [← measure_sdiff_null (s := t) hμ]
    dsimp
    rw [Set.sdiff_compl, ← (s : Set α).biUnion_of_singleton]
    simp_rw [Finset.mem_coe, Set.inter_iUnion]
    rw [measure_biUnion_finset (fun i hi j hj hij ↦ .inter_left' _ <| .inter_right' _ ?_)
      (by measurability)]
    · simp only [coe_finsetSum, Finset.sum_apply, smul_apply]
      congr with a
      by_cases ha : a ∈ t <;> simp [*]
    simpa
  mpr hμ := by rw [hμ, ae_finsetSum_measure_iff]; exact fun i hi ↦ ae_smul_measure (by simpa) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3431d6976e3a76bd141f5be517d8eb2fdc79436d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
