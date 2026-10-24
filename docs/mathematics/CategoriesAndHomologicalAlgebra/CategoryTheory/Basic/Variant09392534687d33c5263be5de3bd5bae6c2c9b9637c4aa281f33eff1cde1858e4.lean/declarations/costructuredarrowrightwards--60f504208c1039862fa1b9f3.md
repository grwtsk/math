# costructuredArrowRightwards

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66ba3f29302169f82dbca3029323ae823fc7a35f10c1a35df7c9b4ec2dfd32ac",
  "kind": "def",
  "lexical_name": "costructuredArrowRightwards",
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
  "slug": "costructuredarrowrightwards--60f504208c1039862fa1b9f3",
  "source": {
    "blob": "12da845dc388be8af57a56585ad58975691c08bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 80,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant09392534687d33c5263be5de3bd5bae6c2c9b9637c4aa281f33eff1cde1858e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60f504208c1039862fa1b9f3460eaeb1732c13d2e9e70c02567d14c6997990ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant09392534687d33c5263be5de3bd5bae6c2c9b9637c4aa281f33eff1cde1858e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66ba3f29302169f82dbca3029323ae823fc7a35f10c1a35df7c9b4ec2dfd32ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def costructuredArrowRightwards (X₃ : C₃) :
    CostructuredArrow L X₃ ⥤ CostructuredArrow R (B.obj X₃) :=
  CostructuredArrow.post L B X₃ ⋙ Comma.mapLeft _ w ⋙
    CostructuredArrow.pre T R (B.obj X₃)

/-- Given `w : TwoSquare T L R B` and `X₂ : C₂`, this is the obvious functor
`StructuredArrow X₂ T ⥤ StructuredArrow (R.obj X₂) B`. -/
@[simps! obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant09392534687d33c5263be5de3bd5bae6c2c9b9637c4aa281f33eff1cde1858e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant09392534687d33c5263be5de3bd5bae6c2c9b9637c4aa281f33eff1cde1858e4.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12da845dc388be8af57a56585ad58975691c08bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
