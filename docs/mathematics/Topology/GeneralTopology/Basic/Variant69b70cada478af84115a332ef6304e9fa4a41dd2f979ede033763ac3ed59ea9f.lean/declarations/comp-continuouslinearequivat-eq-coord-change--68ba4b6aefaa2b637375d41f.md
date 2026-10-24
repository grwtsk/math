# comp_continuousLinearEquivAt_eq_coord_change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dccfa7168a9adea851592463256a7e13d96a346",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 534,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1ab3933-4fb6-4cbc-6837-f860409c1c35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19a4492d-278f-7581-d2a4-bd56e993fd72",
  "kind": "theorem",
  "lexical_name": "comp_continuousLinearEquivAt_eq_coord_change",
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
  "slug": "comp-continuouslinearequivat-eq-coord-change--68ba4b6aefaa2b637375d41f",
  "source": {
    "blob": "6dccfa7168a9adea851592463256a7e13d96a346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 534,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68ba4b6aefaa2b637375d41fe3ee92f7ce10e54d761018debccbbd7d6bda5a6e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19a4492d-278f-7581-d2a4-bd56e993fd72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_continuousLinearEquivAt_eq_coord_change (e e' : Trivialization F (π F E))
    [e.IsLinear R] [e'.IsLinear R] {b : B} (hb : b ∈ e.baseSet ∩ e'.baseSet) :
    (e.continuousLinearEquivAt R b hb.1).symm.trans (e'.continuousLinearEquivAt R b hb.2) =
      coordChangeL R e e' b := by
  ext v
  rw [coordChangeL_apply e e' hb]
  rfl
#align trivialization.comp_continuous_linear_equiv_at_eq_coord_change Trivialization.comp_continuousLinearEquivAt_eq_coord_change

end Trivialization

/-! ### Constructing vector bundles -/

variable (B F)

/-- Analogous construction of `FiberBundleCore` for vector bundles. This
construction gives a way to construct vector bundles from a structure registering how
trivialization changes act on fibers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dccfa7168a9adea851592463256a7e13d96a346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
