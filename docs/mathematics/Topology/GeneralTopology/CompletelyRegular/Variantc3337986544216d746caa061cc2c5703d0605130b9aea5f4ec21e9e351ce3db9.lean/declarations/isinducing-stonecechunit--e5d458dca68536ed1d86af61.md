# isInducing_stoneCechUnit

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
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac990517-a984-995b-d15b-1c42cf7a6a5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1567d6d9-82e9-3fe4-4001-a98123f46af9",
  "kind": "lemma",
  "lexical_name": "isInducing_stoneCechUnit",
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
  "slug": "isinducing-stonecechunit--e5d458dca68536ed1d86af61",
  "source": {
    "blob": "78757f98f10a2a14fa36649f4aa13d5a11650a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d458dca68536ed1d86af619014496a5a2210d3314b1165bfc76813791b8201",
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

Occurrence: `result:1567d6d9-82e9-3fe4-4001-a98123f46af9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isInducing_stoneCechUnit [CompletelyRegularSpace X] :
    IsInducing (stoneCechUnit : X → StoneCech X) := by
  rw [isInducing_iff_nhds]
  intro x
  apply le_antisymm
  · rw [← map_le_iff_le_comap]; exact continuous_stoneCechUnit.continuousAt
  · simp_rw [le_nhds_iff, ((nhds_basis_opens _).comap _).mem_iff, and_assoc]
    intro U hxU hU
    obtain ⟨f, hf, efx, hfU⟩ :=
      CompletelyRegularSpace.completely_regular_isOpen x U hU hxU
    conv at hfU => equals Uᶜ ⊆ f ⁻¹' {1} => simp [EqOn, subset_def]
    rw [← compl_subset_comm, ← preimage_compl, ← stoneCechExtend_extends hf, preimage_comp] at hfU
    refine ⟨stoneCechExtend hf ⁻¹' {1}ᶜ, ?_,
      isOpen_compl_singleton.preimage (continuous_stoneCechExtend hf), hfU⟩
    rw [mem_preimage, stoneCechExtend_stoneCechUnit, efx, mem_compl_iff, mem_singleton_iff]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78757f98f10a2a14fa36649f4aa13d5a11650a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
