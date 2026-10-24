# MatrixModCat.unitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6557324f8b9c4a753a9139d60887e953e99732de2ba1bc27d7efaa4419a6c09c",
  "kind": "def",
  "lexical_name": "MatrixModCat.unitIso",
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
  "slug": "matrixmodcat-unitiso--8e927e2a835466682bed3b9e",
  "source": {
    "blob": "fbd3806641358a1b520ad3d2ee0b7fb338c309bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 135,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e927e2a835466682bed3b9ed6a06ae3ec3e2465131bbeddc3f56bdf3bf9e086",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6557324f8b9c4a753a9139d60887e953e99732de2ba1bc27d7efaa4419a6c09c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MatrixModCat.unitIso (i : ι) :
    ModuleCat.toMatrixModCat R ι ⋙ MatrixModCat.toModuleCat R i ≅ 𝟭 (ModuleCat R) :=
  NatIso.ofComponents (fun X ↦ (fromModuleCatToModuleCatLinearEquivtoModuleCatObj R X i ≪≫ₗ
    (fromModuleCatToModuleCatLinearEquiv R X i)).toModuleIso) <| by
    intros
    ext
    simp [fromModuleCatToModuleCatLinearEquivtoModuleCatObj]

/-- The linear equiv induced by the equality `toMatrixModCat (toModuleCat M) = Mⁿ` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbd3806641358a1b520ad3d2ee0b7fb338c309bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
