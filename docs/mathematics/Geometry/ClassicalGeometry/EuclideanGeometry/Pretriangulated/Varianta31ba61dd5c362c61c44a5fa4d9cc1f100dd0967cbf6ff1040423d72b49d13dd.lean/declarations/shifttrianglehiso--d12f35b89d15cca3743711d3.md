# shiftTrianglehIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:900402fb139b3d3234d18e6d10cc0cae97ee8f49a6d23601dd08ca2b8bbb39a5",
  "kind": "def",
  "lexical_name": "shiftTrianglehIso",
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
  "slug": "shifttrianglehiso--d12f35b89d15cca3743711d3",
  "source": {
    "blob": "f717c56b307f453a9753554abd9725284f07413a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 379,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d12f35b89d15cca3743711d33168d6bf50baef754cdd99ce79c7c3375c307b7a",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:900402fb139b3d3234d18e6d10cc0cae97ee8f49a6d23601dd08ca2b8bbb39a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def shiftTrianglehIso (n : ℤ) :
    (Triangle.shiftFunctor _ n).obj (triangleh φ) ≅ triangleh (φ⟦n⟧') :=
  ((HomotopyCategory.quotient _ _).mapTriangle.commShiftIso n).symm.app _ ≪≫
    (HomotopyCategory.quotient _ _).mapTriangle.mapIso (shiftTriangleIso φ n)

end Shift

section

open Preadditive

variable (G : C ⥤ D) [G.Additive]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f717c56b307f453a9753554abd9725284f07413a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
