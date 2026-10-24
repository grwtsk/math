# pullbackZeroZeroIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f4bc4ac741a8be958470a04e1460fd35803590871a1e19ffcf61e76c7cc8032",
  "kind": "def",
  "lexical_name": "pullbackZeroZeroIso",
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
  "slug": "pullbackzerozeroiso--1dee91875130a9a4831def2d",
  "source": {
    "blob": "15fadbf99624b7dbde2c71c928e68fe01a79eccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1dee91875130a9a4831def2d605758a52ec692d25c64bd44504c07793cff36df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f4bc4ac741a8be958470a04e1460fd35803590871a1e19ffcf61e76c7cc8032`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackZeroZeroIso (X Y : C) [HasBinaryProduct X Y] :
    pullback (0 : X ⟶ 0) (0 : Y ⟶ 0) ≅ X ⨯ Y :=
  limit.isoLimitCone
    ⟨_, isPullbackOfIsTerminalIsProduct _ _ _ _ HasZeroObject.zeroIsTerminal (prodIsProd X Y)⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroObjects/Variantea6c326ff10a1884f723e323b088b6e2b90633b592063e926cb16c5bcaa21de7.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15fadbf99624b7dbde2c71c928e68fe01a79eccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
