# epi_pullback_of_epi_g

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7752d84a024b9e555541e73e5553151b934d551aec1f8711cd602c485d04f2fb",
  "kind": "instance",
  "lexical_name": "epi_pullback_of_epi_g",
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
  "slug": "epi-pullback-of-epi-g--feacb68de3bb0409e8cbaee4",
  "source": {
    "blob": "143fe964376d73bccb6a1e35b4c4f637e83256f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 712,
    "line": 682,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3f8351e169a4ae3396623e416971b84dbc25b007e8ffe5e89fdd88504d35bf13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:feacb68de3bb0409e8cbaee40814a065728a2ef82057b62e2a0307d9dfb1ad13",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3f8351e169a4ae3396623e416971b84dbc25b007e8ffe5e89fdd88504d35bf13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7752d84a024b9e555541e73e5553151b934d551aec1f8711cd602c485d04f2fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 682–712.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance epi_pullback_of_epi_g [Epi g] : Epi (pullback.fst f g) :=
  -- It will suffice to consider some morphism e : X ⟶ R such that
  -- pullback.fst f g ≫ e = 0 and show that e = 0.
  epi_of_cancel_zero _ fun {R} e h => by
    -- Consider the morphism u := (e, 0) : X ⊞ Y ⟶ R.
    let u := biprod.desc e (0 : Y ⟶ R)
    -- The composite pullback f g ⟶ X ⊞ Y ⟶ R is zero by assumption.
    have hu : PullbackToBiproductIsKernel.pullbackToBiproduct f g ≫ u = 0 := by simpa [u]
    -- pullbackToBiproduct f g is a kernel of (f, -g), so (f, -g) is a
    -- cokernel of pullbackToBiproduct f g
    have :=
      epiIsCokernelOfKernel _
        (PullbackToBiproductIsKernel.isLimitPullbackToBiproduct f g)
    -- We use this fact to obtain a factorization of u through (f, -g) via some d : Z ⟶ R.
    obtain ⟨d, hd⟩ := CokernelCofork.IsColimit.desc' this u hu
    dsimp at d; dsimp [u] at hd
    -- But then (-g) ≫ d = 0:
    have : (-g) ≫ d = 0 := calc
      (-g) ≫ d = (biprod.inr ≫ biprod.desc f (-g)) ≫ d := by rw [biprod.inr_desc]
      _ = biprod.inr ≫ u := by rw [Category.assoc, hd]
      _ = 0 := biprod.inr_desc _ _
    -- But g is an epimorphism, thus so is -g, so d = 0...
    have : d = 0 := (cancel_epi (-g)).1 (by simpa)
    -- ...or, in other words, e = 0.
    calc
      e = biprod.inl ≫ biprod.desc e (0 : Y ⟶ R) := by rw [biprod.inl_desc]
      _ = biprod.inl ≫ biprod.desc f (-g) ≫ d := by rw [← hd]
      _ = biprod.inl ≫ biprod.desc f (-g) ≫ 0 := by rw [this]
      _ = (biprod.inl ≫ biprod.desc f (-g)) ≫ 0 := by rw [← Category.assoc]
      _ = 0 := HasZeroMorphisms.comp_zero _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3f8351e169a4ae3396623e416971b84dbc25b007e8ffe5e89fdd88504d35bf13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3f8351e169a4ae3396623e416971b84dbc25b007e8ffe5e89fdd88504d35bf13.lean#L682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `143fe964376d73bccb6a1e35b4c4f637e83256f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
