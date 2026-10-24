# TendstoUniformlyOn.eventually_forall_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4cf3800e45336029897ee8d2150f43abf537943c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c3f7c05a9da0954ceee13aa31600e61ecf10472ff454c175a416fd73d7bcb9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4813071b-6b1d-68f2-37b0-865be5f63f1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ca179d2-9344-1783-d6e6-6fb5b90a6062",
  "kind": "lemma",
  "lexical_name": "TendstoUniformlyOn.eventually_forall_lt",
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
  "slug": "tendstouniformlyon-eventually-forall-lt--47e8d81f080333a939732507",
  "source": {
    "blob": "4cf3800e45336029897ee8d2150f43abf537943c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variant1c3f7c05a9da0954ceee13aa31600e61ecf10472ff454c175a416fd73d7bcb9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47e8d81f080333a939732507297f8cf226594070bc970e812f7bdc3ac22485b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variant1c3f7c05a9da0954ceee13aa31600e61ecf10472ff454c175a416fd73d7bcb9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ca179d2-9344-1783-d6e6-6fb5b90a6062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TendstoUniformlyOn.eventually_forall_lt {u v : β} (huv : u < v)
    (hf : TendstoUniformlyOn f g p K) (hg : ∀ x ∈ K, g x ≤ u) :
    ∀ᶠ i in p, ∀ x ∈ K, f i x < v := by
  simp only [tendstoUniformlyOn_iff_tendsto, uniformity_eq_comap_neg_add_nhds_zero,
    tendsto_iff_eventually, eventually_comap, Prod.forall] at *
  conv at hf => enter [2]; rw [eventually_iff_exists_mem]
  have hf2 := hf (fun x ↦ -x.1 + x.2 < -u + v) ⟨_, (isOpen_gt' (-u + v)).mem_nhds (by simp [huv]),
    fun y hy a b hab ↦ (hab.symm ▸ hy :)⟩
  filter_upwards [eventually_prod_principal_iff.mp hf2] with i hi x hx
  simpa using add_lt_add_of_le_of_lt (hg x hx) (hi x hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variant1c3f7c05a9da0954ceee13aa31600e61ecf10472ff454c175a416fd73d7bcb9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variant1c3f7c05a9da0954ceee13aa31600e61ecf10472ff454c175a416fd73d7bcb9c.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cf3800e45336029897ee8d2150f43abf537943c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
