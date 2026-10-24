# prodIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a3a0dea1557a99e1d4bd1261101f826c3a9187cbc9f95514e8acfdf547e93af",
  "kind": "def",
  "lexical_name": "prodIso",
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
  "slug": "prodiso--ec0c6977b24dca67cdb0a8fc",
  "source": {
    "blob": "49489373d88dcd52fb690b06de2cfd267bb3c441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 159,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7658d783c343bae6b5140b484790fc79e16d7528dd5e4ce126d4d4768a00475e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec0c6977b24dca67cdb0a8fc36eaa8da2fa60af3deff08844a284d50e2134578",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7658d783c343bae6b5140b484790fc79e16d7528dd5e4ce126d4d4768a00475e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a3a0dea1557a99e1d4bd1261101f826c3a9187cbc9f95514e8acfdf547e93af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodIso {X Y : SSet.{u}} (A : X.Subcomplex) (B : Y.Subcomplex) :
    (A.prod B).toSSet ≅ A ⊗ B where
  hom := CartesianMonoidalCategory.lift
    (lift ((A.prod B).ι ≫ CartesianMonoidalCategory.fst _ _) (by
      intro _ _ ⟨⟨_, ⟨_, _⟩⟩, _⟩
      cat_disch))
    (lift ((A.prod B).ι ≫ CartesianMonoidalCategory.snd _ _) (by
      intro _ _ ⟨⟨_, ⟨_, _⟩⟩, _⟩
      cat_disch))
  inv := lift (A.ι ⊗ₘ B.ι) (by
    rintro m _ ⟨⟨y₁, y₂⟩, ⟨⟩⟩
    exact ⟨Subtype.coe_prop _, Subtype.coe_prop _⟩)

end Subcomplex

/-- The inclusion `X ⟶ X ⊗ Δ[1]` which is `0` on the second factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7658d783c343bae6b5140b484790fc79e16d7528dd5e4ce126d4d4768a00475e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7658d783c343bae6b5140b484790fc79e16d7528dd5e4ce126d4d4768a00475e.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49489373d88dcd52fb690b06de2cfd267bb3c441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
