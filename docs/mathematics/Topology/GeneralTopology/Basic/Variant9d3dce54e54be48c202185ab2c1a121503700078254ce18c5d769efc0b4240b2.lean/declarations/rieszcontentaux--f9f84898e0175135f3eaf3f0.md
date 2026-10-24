# rieszContentAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e57a6e23fb59408851d5bf095d18b3d587fdd58dbae70cf233c31da734014730",
  "kind": "def",
  "lexical_name": "rieszContentAux",
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
  "slug": "rieszcontentaux--f9f84898e0175135f3eaf3f0",
  "source": {
    "blob": "58f395a4c479e254b20ff7e3d40997094ea96bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9f84898e0175135f3eaf3f0914f361689e0f4e7c31df6fb7685fb1ce83d4158",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e57a6e23fb59408851d5bf095d18b3d587fdd58dbae70cf233c31da734014730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rieszContentAux : Compacts X → ℝ≥0 := fun K =>
  sInf (Λ '' { f : C_c(X, ℝ≥0) | ∀ x ∈ K, (1 : ℝ≥0) ≤ f x })

section RieszMonotone

variable [T2Space X] [LocallyCompactSpace X]

/-- For any compact subset `K ⊆ X`, there exist some compactly supported continuous nonnegative
functions `f` on `X` such that `f ≥ 1` on `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58f395a4c479e254b20ff7e3d40997094ea96bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
