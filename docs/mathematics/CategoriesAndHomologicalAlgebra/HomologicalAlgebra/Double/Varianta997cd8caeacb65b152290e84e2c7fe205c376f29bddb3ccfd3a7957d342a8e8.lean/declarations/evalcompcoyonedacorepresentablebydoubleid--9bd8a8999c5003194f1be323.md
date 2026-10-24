# evalCompCoyonedaCorepresentableByDoubleId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64be6f26ea396fd52532dd17d2e5357b5f1bef8cb88bedffa2946b951bc66ec4",
  "kind": "def",
  "lexical_name": "evalCompCoyonedaCorepresentableByDoubleId",
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
  "slug": "evalcompcoyonedacorepresentablebydoubleid--9bd8a8999c5003194f1be323",
  "source": {
    "blob": "bafe42ad974bc91b8610a6be3b42711f4961b2ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 158,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Varianta997cd8caeacb65b152290e84e2c7fe205c376f29bddb3ccfd3a7957d342a8e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bd8a8999c5003194f1be3232f0f9300aed838496d105ae707b20ce9632394dd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Varianta997cd8caeacb65b152290e84e2c7fe205c376f29bddb3ccfd3a7957d342a8e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64be6f26ea396fd52532dd17d2e5357b5f1bef8cb88bedffa2946b951bc66ec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def evalCompCoyonedaCorepresentableByDoubleId (h : i₀ ≠ i₁) (X : C) :
    (eval C c i₀ ⋙ coyoneda.obj (op X)).CorepresentableBy (double (𝟙 X) hi₀₁) where
  homEquiv {K} :=
    { toFun g := (doubleXIso₀ _ hi₀₁).inv ≫ g.f i₀
      invFun φ₀ := mkHomFromDouble _ h φ₀ (φ₀ ≫ K.d i₀ i₁) (by simp) (by simp)
      left_inv g := by
        ext
        · simp
        · simp [double_d _ _ h]
      right_inv _ := by simp }
  homEquiv_comp _ _ := by simp

end

variable {ι : Type*} (c : ComplexShape ι)

/-- If `i` has no successor for the complex shape `c`,
then for any `X : C`, the functor which sends `K : HomologicalComplex C c`
to `X ⟶ K.X i` is corepresentable by `(single C c i).obj X`. -/
@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Varianta997cd8caeacb65b152290e84e2c7fe205c376f29bddb3ccfd3a7957d342a8e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Varianta997cd8caeacb65b152290e84e2c7fe205c376f29bddb3ccfd3a7957d342a8e8.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafe42ad974bc91b8610a6be3b42711f4961b2ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
