# pointedToTwoPFstForgetCompBipointedToPointedFstAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2f4d91ea5d3e5d1ffd052d801778e357a44084ce43ca5148e41b74d3bd74428",
  "kind": "def",
  "lexical_name": "pointedToTwoPFstForgetCompBipointedToPointedFstAdjunction",
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
  "slug": "pointedtotwopfstforgetcompbipointedtopointedfstadjunction--fe773de6614660b90b8b5296",
  "source": {
    "blob": "37beae0b8be6732abea3bde71d3cce32cc692027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 154,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Variant69c6e2b37070fb91138fc5c59edeaa72e623adc1573a5befc98cab64ed8fcfe8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe773de6614660b90b8b52967ce0c2db20c97f74f14fe50dbf9c996a89643e8d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Variant69c6e2b37070fb91138fc5c59edeaa72e623adc1573a5befc98cab64ed8fcfe8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2f4d91ea5d3e5d1ffd052d801778e357a44084ce43ca5148e41b74d3bd74428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pointedToTwoPFstForgetCompBipointedToPointedFstAdjunction :
    pointedToTwoPFst ⊣ forget₂ TwoP Bipointed ⋙ bipointedToPointedFst :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun X Y =>
        { toFun := fun f => ⟨f.hom.toFun ∘ Option.some, f.hom.map_fst⟩
          invFun := fun f => ⟨fun o => o.elim Y.toTwoPointing.toProd.2 f.toFun, f.map_point, rfl⟩
          left_inv := fun f => by
            ext (_ | _) : 4
            · exact f.hom.map_snd.symm
            · rfl }
      homEquiv_naturality_left_symm := fun f g => by ext (_ | _) : 4 <;> rfl }

/-- Adding a first point is left adjoint to forgetting the first point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Variant69c6e2b37070fb91138fc5c59edeaa72e623adc1573a5befc98cab64ed8fcfe8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoP/Variant69c6e2b37070fb91138fc5c59edeaa72e623adc1573a5befc98cab64ed8fcfe8.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37beae0b8be6732abea3bde71d3cce32cc692027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
