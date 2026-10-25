# otherwise_directional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5c377e5-84d5-3e18-a088-6212368b9541",
  "kind": "theorem",
  "lexical_name": "otherwise_directional",
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
  "slug": "otherwise-directional--19fbb6895dad12ffb0c555f4",
  "source": {
    "blob": "f734857e60865c76676aea25405e1600d842212a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant92306c0c0be539e45bd3ca7896d998abb6fae65ef3eaed4db12bda9c06350dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19fbb6895dad12ffb0c555f45be7e45e6f71bc7aaaf749f8b6ef3972f63f24e4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant92306c0c0be539e45bd3ca7896d998abb6fae65ef3eaed4db12bda9c06350dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5c377e5-84d5-3e18-a088-6212368b9541`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem otherwise_directional
    (F : BinarySurfaceFlow)
    (t : F.base.Time)
    (hNotRelaxed : ¬ F.RelaxedAt t)
    (hNotUniformRadial : ¬ F.UniformRadialAt t) :
    F.DirectionalAt t := by
  classical
  by_cases hdir : F.DirectionalAt t
  · exact hdir
  · have hrad :
        F.UniformRadialAt t :=
      nonrelaxed_nondirectional_is_uniform_radial
        F t hNotRelaxed hdir
    exact False.elim (hNotUniformRadial hrad)

end BinarySurfaceFlow

/--
A directional surface flow is a `BinarySurfaceFlow` whose directional branch is
backed by homological defect accounting.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant92306c0c0be539e45bd3ca7896d998abb6fae65ef3eaed4db12bda9c06350dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant92306c0c0be539e45bd3ca7896d998abb6fae65ef3eaed4db12bda9c06350dba.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f734857e60865c76676aea25405e1600d842212a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
