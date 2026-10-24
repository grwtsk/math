# instIsTopologicalAddGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3ca324047014e4321ab765d9601a4b35429817b6fe0d35a8967cb99afdb143e",
  "kind": "instance",
  "lexical_name": "instIsTopologicalAddGroup",
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
  "slug": "instistopologicaladdgroup--2f6fb3f326d94345f7d34295",
  "source": {
    "blob": "b60dc7bddcd73b8e6136c134fe374efa9d4ca242",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 164,
    "path": "GRWTSK/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f6fb3f326d94345f7d342958883ad6e1d87aa2895bb92ba09293320335813a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3ca324047014e4321ab765d9601a4b35429817b6fe0d35a8967cb99afdb143e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsTopologicalAddGroup [ContinuousAdd 𝕜] : IsTopologicalAddGroup (WeakBilin B) where
  toContinuousAdd := by infer_instance
  continuous_neg := by
    refine continuous_induced_rng.2 (continuous_pi_iff.mpr fun y => ?_)
    refine cast (congr_arg _ ?_) (eval_continuous B (-y))
    ext x
    simp only [map_neg, Function.comp_apply, LinearMap.neg_apply]

end Ring

end WeakBilin

end WeakTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b60dc7bddcd73b8e6136c134fe374efa9d4ca242` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
