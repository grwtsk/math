# uniformity_lift_le_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f068a41cafe8605be201dd24b3843bcbba45a6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 372,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a818a802-9a4e-7d10-e1ed-e40503265bf9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:543c8725-f5b3-8391-17b3-b3d493a143b8",
  "kind": "theorem",
  "lexical_name": "uniformity_lift_le_swap",
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
  "slug": "uniformity-lift-le-swap--28d5d5b33fb536ec566a38b9",
  "source": {
    "blob": "3f068a41cafe8605be201dd24b3843bcbba45a6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 372,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28d5d5b33fb536ec566a38b94c4832b92963d9d1a6cc2efbe45e999ff895b802",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:543c8725-f5b3-8391-17b3-b3d493a143b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformity_lift_le_swap {g : SetRel α α → Filter β} {f : Filter β} (hg : Monotone g)
    (h : ((𝓤 α).lift fun s => g (preimage Prod.swap s)) ≤ f) : (𝓤 α).lift g ≤ f :=
  calc
    (𝓤 α).lift g ≤ (Filter.map (@Prod.swap α α) <| 𝓤 α).lift g :=
      lift_mono uniformity_le_symm le_rfl
    _ ≤ _ := by rw [map_lift_eq2 hg, image_swap_eq_preimage_swap]; exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f068a41cafe8605be201dd24b3843bcbba45a6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
