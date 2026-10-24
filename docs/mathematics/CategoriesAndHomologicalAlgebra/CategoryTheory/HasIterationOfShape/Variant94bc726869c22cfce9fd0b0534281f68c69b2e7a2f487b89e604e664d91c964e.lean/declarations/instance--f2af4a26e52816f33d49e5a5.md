# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:114ee97269ba4eaa2cbd73ddaf909920f48545f583d2c9a1ba9676f9f81df1e4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f2af4a26e52816f33d49e5a5",
  "source": {
    "blob": "ef5f3d7c3ad8491d6a1821a71c20f3cfd0eefda4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2af4a26e52816f33d49e5a57e2eb27fcb02917bfeb6409f0b8380b4acdf5288",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:114ee97269ba4eaa2cbd73ddaf909920f48545f583d2c9a1ba9676f9f81df1e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HasIterationOfShape J (Arrow C) where
  hasColimitsOfShape_of_isSuccLimit j hj := by
    have := hasColimitsOfShape_of_isSuccLimit C j hj
    infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef5f3d7c3ad8491d6a1821a71c20f3cfd0eefda4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
