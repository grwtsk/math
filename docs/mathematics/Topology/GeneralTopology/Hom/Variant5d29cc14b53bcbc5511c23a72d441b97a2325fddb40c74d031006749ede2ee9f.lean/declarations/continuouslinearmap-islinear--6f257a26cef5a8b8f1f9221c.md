# continuousLinearMap.isLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fb6de4a2fa7f658056aedabd8159be08ab0e83520f1c618d8fe2d6a8fe7ee17",
  "kind": "instance",
  "lexical_name": "continuousLinearMap.isLinear",
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
  "slug": "continuouslinearmap-islinear--6f257a26cef5a8b8f1f9221c",
  "source": {
    "blob": "3bcd60575268952101c9876171e5116af0dc10e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f257a26cef5a8b8f1f9221cbb4e150bb2b394386fa2f5716e33942fbf52c9eb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fb6de4a2fa7f658056aedabd8159be08ab0e83520f1c618d8fe2d6a8fe7ee17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance continuousLinearMap.isLinear [∀ x, ContinuousAdd (E₂ x)] [∀ x, ContinuousSMul 𝕜₂ (E₂ x)] :
    (Pretrivialization.continuousLinearMap σ e₁ e₂).IsLinear 𝕜₂ where
  linear x _ :=
    { map_add L L' := by simp [continuousLinearMap, Pretrivialization.toFun']
      map_smul c L := by simp [continuousLinearMap, Pretrivialization.toFun'] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bcd60575268952101c9876171e5116af0dc10e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
