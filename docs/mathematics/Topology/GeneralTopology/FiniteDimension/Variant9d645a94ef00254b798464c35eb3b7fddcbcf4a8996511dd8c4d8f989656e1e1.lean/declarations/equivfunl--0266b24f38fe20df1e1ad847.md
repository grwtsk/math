# equivFunL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf4a9b0ba6e2dac579359cb2141c88aa03edb9d32cb6c408aecfa68d55c70746",
  "kind": "def",
  "lexical_name": "equivFunL",
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
  "slug": "equivfunl--0266b24f38fe20df1e1ad847",
  "source": {
    "blob": "2be48f91fcc6b0932c9b3bb4810f8851c7b492d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 452,
    "path": "GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0266b24f38fe20df1e1ad8472c94570ff7b44eaa2dabfb6645bebef7d8c468f1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf4a9b0ba6e2dac579359cb2141c88aa03edb9d32cb6c408aecfa68d55c70746`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivFunL (v : Basis ι 𝕜 E) : E ≃L[𝕜] ι → 𝕜 :=
  { v.equivFun with
    continuous_toFun :=
      haveI : FiniteDimensional 𝕜 E := FiniteDimensional.of_fintype_basis v
      v.equivFun.toLinearMap.continuous_of_finiteDimensional
    continuous_invFun := by
      change Continuous v.equivFun.symm.toFun
      exact v.equivFun.symm.toLinearMap.continuous_of_finiteDimensional }
#align basis.equiv_funL Basis.equivFunL

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2be48f91fcc6b0932c9b3bb4810f8851c7b492d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
