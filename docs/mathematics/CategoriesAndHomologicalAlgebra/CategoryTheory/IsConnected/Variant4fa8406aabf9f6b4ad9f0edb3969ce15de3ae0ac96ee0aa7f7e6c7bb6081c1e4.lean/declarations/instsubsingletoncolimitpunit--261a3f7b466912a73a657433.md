# instSubsingletonColimitPUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5debd0a4286f008f03f10c58e899fa61a173ee9c7fdbbd8bb08d064172af2b6",
  "kind": "instance",
  "lexical_name": "instSubsingletonColimitPUnit",
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
  "slug": "instsubsingletoncolimitpunit--261a3f7b466912a73a657433",
  "source": {
    "blob": "9bf090980ae4ad4678be3ccf99a96fb2226cc0f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:261a3f7b466912a73a65743349c0d91d8c344db3f3afd16e13bbf8c99f336e50",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5debd0a4286f008f03f10c58e899fa61a173ee9c7fdbbd8bb08d064172af2b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSubsingletonColimitPUnit
    [IsPreconnected C] [HasColimit (constPUnitFunctor.{w} C)] :
    Subsingleton (colimit (constPUnitFunctor.{w} C)) where
  allEq a b := by
    obtain ⟨c, ⟨⟩, rfl⟩ := jointly_surjective' a
    obtain ⟨d, ⟨⟩, rfl⟩ := jointly_surjective' b
    apply constant_of_preserves_morphisms (colimit.ι (constPUnitFunctor C) · PUnit.unit)
    exact fun c d f => colimit_sound f rfl

/-- Given a connected index category, the colimit of the constant unit-valued functor is `PUnit`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant4fa8406aabf9f6b4ad9f0edb3969ce15de3ae0ac96ee0aa7f7e6c7bb6081c1e4.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf090980ae4ad4678be3ccf99a96fb2226cc0f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
