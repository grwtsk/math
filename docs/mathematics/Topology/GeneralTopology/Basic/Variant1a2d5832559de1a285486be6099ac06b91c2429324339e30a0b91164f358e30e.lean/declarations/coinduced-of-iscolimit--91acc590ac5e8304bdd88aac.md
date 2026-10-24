# coinduced_of_isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c97bb3e9f7870e49fd906ffa0be434489682361",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:048167f8-246c-3ddc-62c5-c4392a32f245",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d093598a-9870-7f3a-d221-5173b64690d0",
  "kind": "theorem",
  "lexical_name": "coinduced_of_isColimit",
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
  "slug": "coinduced-of-iscolimit--91acc590ac5e8304bdd88aac",
  "source": {
    "blob": "3c97bb3e9f7870e49fd906ffa0be434489682361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 245,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91acc590ac5e8304bdd88aacf4a08fb1b58f54494de8f356e3c570d0f497d714",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d093598a-9870-7f3a-d221-5173b64690d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coinduced_of_isColimit :
    c.pt.str = ⨆ j, (F.obj j).str.coinduced (c.ι.app j) := by
  let c' := coconeOfCoconeForget ((forget).mapCocone c)
  let hc' : IsColimit c' := isColimitCoconeOfForget _ (isColimitOfPreserves forget hc)
  let e := IsColimit.coconePointUniqueUpToIso hc' hc
  have he (j : J) : c'.ι.app j ≫ e.hom = c.ι.app j :=
    IsColimit.comp_coconePointUniqueUpToIso_hom hc' hc j
  apply (homeoOfIso e).coinduced_eq.symm.trans
  dsimp [coconeOfCoconeForget_pt, c', topologicalSpaceCoconePtOfCoconeForget]
  simp only [coinduced_iSup]
  conv_rhs => simp only [← he]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1a2d5832559de1a285486be6099ac06b91c2429324339e30a0b91164f358e30e.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c97bb3e9f7870e49fd906ffa0be434489682361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
