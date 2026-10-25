# HeatCompatibleEndomorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e22de0847ee6c29d6555184144724a38aa87c0b1020ad113dab85bafeab64c0",
  "kind": "structure",
  "lexical_name": "HeatCompatibleEndomorphism",
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
  "slug": "heatcompatibleendomorphism--25eab8fcc714109afe8c78a8",
  "source": {
    "blob": "05e8083236bc36d42e43a783e829833b174e2fb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeatCompatibleEndomorphism/Variant2285c9c638c68ef233966ed27c45b6c1b366a7a12c99071dc66ef39a3ec4aef0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25eab8fcc714109afe8c78a86120b1b0b463f11cad95fcadad53d1538e8e3bd4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeatCompatibleEndomorphism/Variant2285c9c638c68ef233966ed27c45b6c1b366a7a12c99071dc66ef39a3ec4aef0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e22de0847ee6c29d6555184144724a38aa87c0b1020ad113dab85bafeab64c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HeatCompatibleEndomorphism
    {C : CrystallineSite}
    {F : Crystal C}
    (H : HeatFlowAction F)
    (e : CrystalEndomorphism F) where
  commutesWithHeat : Prop
  commutesWithHeat_certified : commutesWithHeat
  preservesHorizontal :
    ∀ (nabla : Connection F)
      (X : C.Site.Obj)
      (s : F.Section X),
        nabla.horizontal X s →
          nabla.horizontal X (e.map X s)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeatCompatibleEndomorphism/Variant2285c9c638c68ef233966ed27c45b6c1b366a7a12c99071dc66ef39a3ec4aef0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeatCompatibleEndomorphism/Variant2285c9c638c68ef233966ed27c45b6c1b366a7a12c99071dc66ef39a3ec4aef0.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05e8083236bc36d42e43a783e829833b174e2fb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
