# Continuous.of_coeHom_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53f18f912db98510cdac71c94bc5ee125281111f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b695d9a3-5669-41dc-6e73-4a9a282d4e78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:308ca49a-02d9-e1d8-0217-9d99ad684a31",
  "kind": "lemma",
  "lexical_name": "Continuous.of_coeHom_comp",
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
  "slug": "continuous-of-coehom-comp--7ac7750c656854061484cf9e",
  "source": {
    "blob": "53f18f912db98510cdac71c94bc5ee125281111f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ac7750c656854061484cf9ecf5da0c50dbc2e182171f4eac2dbe8b737dd90a3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:308ca49a-02d9-e1d8-0217-9d99ad684a31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Continuous.of_coeHom_comp [Group G] [Monoid H] [TopologicalSpace G] [TopologicalSpace H]
    [ContinuousInv G] {f : G →* Hˣ} (hf : Continuous ((Units.coeHom H).comp f)) : Continuous f := by
  apply continuous_induced_rng.mpr ?_
  refine continuous_prodMk.mpr ⟨hf, ?_⟩
  simp_rw [← map_inv]
  exact MulOpposite.continuous_op.comp (hf.comp continuous_inv)

namespace Units

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variantfbd26b700d3dd6a530af859d8345056d8ecdc08891b15a635184f1f8b4b8647e.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f18f912db98510cdac71c94bc5ee125281111f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
