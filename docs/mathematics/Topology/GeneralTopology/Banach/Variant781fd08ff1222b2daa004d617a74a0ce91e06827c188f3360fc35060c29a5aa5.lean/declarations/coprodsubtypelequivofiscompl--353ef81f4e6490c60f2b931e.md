# coprodSubtypeLEquivOfIsCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f8aa1dd2c0d3e7f03dc0add434c597e406aaabd5564133edf4f1af4e4546652",
  "kind": "def",
  "lexical_name": "coprodSubtypeLEquivOfIsCompl",
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
  "slug": "coprodsubtypelequivofiscompl--353ef81f4e6490c60f2b931e",
  "source": {
    "blob": "36dc4e2ae56a5f270d6fb9c3dfd1593c3c759d73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 504,
    "path": "GRWTSK/Topology/GeneralTopology/Banach/Variant781fd08ff1222b2daa004d617a74a0ce91e06827c188f3360fc35060c29a5aa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:353ef81f4e6490c60f2b931ecf43d96abe66ee88e566d7509b3f50b7e037ac34",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Banach/Variant781fd08ff1222b2daa004d617a74a0ce91e06827c188f3360fc35060c29a5aa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f8aa1dd2c0d3e7f03dc0add434c597e406aaabd5564133edf4f1af4e4546652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coprodSubtypeLEquivOfIsCompl {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [CompleteSpace F] (f : E →L[𝕜] F) {G : Submodule 𝕜 F}
    (h : IsCompl f.range G) [CompleteSpace G] (hker : f.ker = ⊥) : (E × G) ≃L[𝕜] F :=
  ContinuousLinearEquiv.ofBijective (f.coprod G.subtypeL)
    (by
      rw [ker_coprod_of_disjoint_range]
      · simp [hker]
      · simp [h.disjoint])
    (by simp [LinearMap.range_coprod, h.sup_eq_top])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Banach/Variant781fd08ff1222b2daa004d617a74a0ce91e06827c188f3360fc35060c29a5aa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Banach/Variant781fd08ff1222b2daa004d617a74a0ce91e06827c188f3360fc35060c29a5aa5.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36dc4e2ae56a5f270d6fb9c3dfd1593c3c759d73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
