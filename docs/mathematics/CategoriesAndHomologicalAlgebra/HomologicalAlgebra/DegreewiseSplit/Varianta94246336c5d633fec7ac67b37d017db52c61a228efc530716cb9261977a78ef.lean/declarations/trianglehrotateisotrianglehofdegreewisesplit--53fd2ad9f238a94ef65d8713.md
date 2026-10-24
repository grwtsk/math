# trianglehRotateIsoTrianglehOfDegreewiseSplit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e14fc34ab7c2ab1cec99ec6706b8a273fd4161eb6317e359a8cc925540b84b4",
  "kind": "def",
  "lexical_name": "trianglehRotateIsoTrianglehOfDegreewiseSplit",
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
  "slug": "trianglehrotateisotrianglehofdegreewisesplit--53fd2ad9f238a94ef65d8713",
  "source": {
    "blob": "03c89d79c4fc78ae315ac252e66861dd21590a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 219,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53fd2ad9f238a94ef65d8713b3397dcbd4144ef5790fa882cfe09b5db4cf5441",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e14fc34ab7c2ab1cec99ec6706b8a273fd4161eb6317e359a8cc925540b84b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def trianglehRotateIsoTrianglehOfDegreewiseSplit :
    (triangleh φ).rotate ≅
      trianglehOfDegreewiseSplit _ (triangleRotateShortComplexSplitting φ) :=
  (HomotopyCategory.quotient _ _).mapTriangleRotateIso.app _ ≪≫
    (HomotopyCategory.quotient _ _).mapTriangle.mapIso
      (triangleRotateIsoTriangleOfDegreewiseSplit φ)

end mappingCone

end CochainComplex

namespace HomotopyCategory

variable [HasZeroObject C] [HasBinaryBiproducts C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Varianta94246336c5d633fec7ac67b37d017db52c61a228efc530716cb9261977a78ef.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03c89d79c4fc78ae315ac252e66861dd21590a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
