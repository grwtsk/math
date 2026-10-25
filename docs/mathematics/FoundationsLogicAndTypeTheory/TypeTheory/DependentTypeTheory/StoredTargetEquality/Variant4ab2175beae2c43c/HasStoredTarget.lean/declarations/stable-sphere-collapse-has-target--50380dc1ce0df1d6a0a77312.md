# stable_sphere_collapse_has_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b669855a-2f41-b33e-6365-676d70abc6bc",
  "kind": "theorem",
  "lexical_name": "stable_sphere_collapse_has_target",
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
  "slug": "stable-sphere-collapse-has-target--50380dc1ce0df1d6a0a77312",
  "source": {
    "blob": "25f41a35b59e04ce1d217824077f841d79cdd912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/StoredTargetEquality/Variant4ab2175beae2c43c/HasStoredTarget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50380dc1ce0df1d6a0a77312aaa45aaf66dabe5380038d8cd626a0899791e26e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/StoredTargetEquality/Variant4ab2175beae2c43c/HasStoredTarget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b669855a-2f41-b33e-6365-676d70abc6bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stable_sphere_collapse_has_target
    (C : Folder.ResearchTopos.StableSphereCollapse) :
    ∃ S : Folder.ResearchTopos.StableSphere, S = C.targetSphere :=
  Folder.ResearchTopos.stable_sphere_collapse_has_target C

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.StoredTargetEquality.Variant4ab2175beae2c43c
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/StoredTargetEquality/Variant4ab2175beae2c43c/HasStoredTarget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/StoredTargetEquality/Variant4ab2175beae2c43c/HasStoredTarget.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25f41a35b59e04ce1d217824077f841d79cdd912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
