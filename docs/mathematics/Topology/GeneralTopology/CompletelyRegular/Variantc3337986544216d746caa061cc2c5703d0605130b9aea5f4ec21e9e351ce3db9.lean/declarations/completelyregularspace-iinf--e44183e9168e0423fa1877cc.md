# completelyRegularSpace_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78757f98f10a2a14fa36649f4aa13d5a11650a99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85bb3a10-4543-1d88-97f9-36a0b3398acd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d43fca5-d8aa-e3b8-1b7f-b2de5737b77c",
  "kind": "lemma",
  "lexical_name": "completelyRegularSpace_iInf",
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
  "slug": "completelyregularspace-iinf--e44183e9168e0423fa1877cc",
  "source": {
    "blob": "78757f98f10a2a14fa36649f4aa13d5a11650a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 131,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e44183e9168e0423fa1877cc17f9231430ff6ff79b12142236ce52cdb07b1535",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d43fca5-d8aa-e3b8-1b7f-b2de5737b77c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completelyRegularSpace_iInf {ι X : Type*} {t : ι → TopologicalSpace X}
    (ht : ∀ i, @CompletelyRegularSpace X (t i)) : @CompletelyRegularSpace X (⨅ i, t i) := by
  let := (⨅ i, t i) -- register this as default topological space to reduce `@`s
  rw [completelyRegularSpace_iff_isOpen]
  intro x K hK hxK
  simp_rw [← hK.mem_nhds_iff, nhds_iInf, mem_iInf, exists_finite_iff_finset,
    Finset.coe_sort_coe] at hxK; clear hK
  obtain ⟨I', V, hV, rfl⟩ := hxK
  simp only [mem_nhds_iff] at hV
  choose U hUV hU hxU using hV
  replace hU := fun (i : ↥I') =>
    @CompletelyRegularSpace.completely_regular_isOpen _ (t i) (ht i) x (U i) (hU i) (hxU i)
  clear hxU
  choose fs hfs hxfs hfsU using hU
  use I'.attach.sup fs
  constructorm* _ ∧ _
  · solve_by_elim [Continuous.finset_sup, continuous_iInf_dom]
  · simpa [show (0 : ↥I) = ⊥ from rfl] using hxfs
  · simp only [EqOn, Pi.one_apply, show (1 : ↥I) = ⊤ from rfl] at hfsU ⊢
    conv => equals ∀ x i, x ∈ (V i)ᶜ → ∃ b, fs b x = ⊤ => simp [Finset.sup_eq_top_iff]
    intro x i hxi
    specialize hfsU i (by tauto_set)
    exists i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78757f98f10a2a14fa36649f4aa13d5a11650a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
