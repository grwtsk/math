# mkHomToSingle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f6d4b4ac95af50e3bab6826c80508597ed80aa4879383b6e38e8505c3dddaf2",
  "kind": "def",
  "lexical_name": "mkHomToSingle",
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
  "slug": "mkhomtosingle--0b92d7e14a60f8e83ded227b",
  "source": {
    "blob": "a887d974ebf5e302c3c9bef173627c00089ff24d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7630f92aced5fdc58af4e3f1fa79e38ebf9dfb90011437d4493d7539c2e4ce3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b92d7e14a60f8e83ded227b751117b7def6bd29fc5733017a87b103f4608397",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7630f92aced5fdc58af4e3f1fa79e38ebf9dfb90011437d4493d7539c2e4ce3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f6d4b4ac95af50e3bab6826c80508597ed80aa4879383b6e38e8505c3dddaf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mkHomToSingle {K : HomologicalComplex V c} {j : ι} {A : V} (φ : K.X j ⟶ A)
    (hφ : ∀ (i : ι), c.Rel i j → K.d i j ≫ φ = 0) :
    K ⟶ (single V c j).obj A where
  f i :=
    if hi : i = j
      then (K.XIsoOfEq hi).hom ≫ φ ≫ (singleObjXIsoOfEq c j A i hi).inv
      else 0
  comm' i k hik := by
    dsimp
    rw [comp_zero]
    split_ifs with hk
    · subst hk
      simp only [XIsoOfEq_rfl, Iso.refl_hom, id_comp, reassoc_of% hφ i hik, zero_comp]
    · apply (isZero_single_obj_X c j A k hk).eq_of_tgt

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7630f92aced5fdc58af4e3f1fa79e38ebf9dfb90011437d4493d7539c2e4ce3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7630f92aced5fdc58af4e3f1fa79e38ebf9dfb90011437d4493d7539c2e4ce3d.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a887d974ebf5e302c3c9bef173627c00089ff24d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
