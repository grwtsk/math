# typeToPointedForgetAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65f0320a83f0975baf7817cbe03a17040dec76b2404c4bc09b21a27bf427b380",
  "kind": "def",
  "lexical_name": "typeToPointedForgetAdjunction",
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
  "slug": "typetopointedforgetadjunction--0170bf39b348c7452121741c",
  "source": {
    "blob": "fee62cfe4b0fc0a07fc7e93548db5ddb6bf5112f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0170bf39b348c7452121741cb1b9fc3687234e8b80a38a781a92c8acc640a695",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65f0320a83f0975baf7817cbe03a17040dec76b2404c4bc09b21a27bf427b380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def typeToPointedForgetAdjunction : typeToPointed ⊣ forget Pointed :=
  Adjunction.mkOfHomEquiv {
    homEquiv := fun X Y =>
        { toFun := fun f => ↾(f.toFun ∘ Option.some)
          invFun := fun f => ⟨fun o => o.elim Y.point f, rfl⟩
          left_inv := fun f => by
            apply Pointed.Hom.ext
            funext x
            cases x
            · exact f.map_point.symm
            · rfl }
    homEquiv_naturality_left_symm := fun f g => by
      apply Pointed.Hom.ext
      funext x
      cases x <;> rfl }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variant588a64b34cf285729df847503ad1c8a035a191338bf3cbd1816fabbb6488700c.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fee62cfe4b0fc0a07fc7e93548db5ddb6bf5112f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
