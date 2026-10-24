# nondegComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be34272522cfb312dd465a4918112c011507558af1c8e970e3700955e0489f81",
  "kind": "def",
  "lexical_name": "nondegComplex",
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
  "slug": "nondegcomplex--2ac89259bbb47eef639c9bc5",
  "source": {
    "blob": "fe409de05b6c9367288315ce2c239d8ba39f5fb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 164,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ac89259bbb47eef639c9bc56bb2c1658040888b247ac5744bb7f0871c98b117",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be34272522cfb312dd465a4918112c011507558af1c8e970e3700955e0489f81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def nondegComplex : ChainComplex C ℕ where
  X := s.N
  d := s.d
  shape i j hij := by simp only [d, K[X].shape i j hij, zero_comp, comp_zero]
  d_comp_d' i j k _ _ := by
    simp only [d, assoc]
    have eq : K[X].d i j ≫ 𝟙 (X.obj (op ⦋j⦌)) ≫ K[X].d j k ≫
        s.πSummand (IndexSet.id (op ⦋k⦌)) = 0 := by
      simp
    rw [s.decomposition_id] at eq
    classical
    rw [Fintype.sum_eq_add_sum_compl (IndexSet.id (op ⦋j⦌)), add_comp, comp_add, assoc,
      Preadditive.sum_comp, Preadditive.comp_sum, Finset.sum_eq_zero, add_zero] at eq
    swap
    · intro A hA
      simp only [Finset.mem_compl, Finset.mem_singleton] at hA
      simp only [assoc, ιSummand_comp_d_comp_πSummand_eq_zero _ _ _ _ hA, comp_zero]
    rw [eq, comp_zero]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The chain complex `s.nondegComplex` attached to a splitting of a simplicial object `X`
becomes isomorphic to the normalized Moore complex `N₁.obj X` defined as a formal direct
factor in the category `Karoubi (ChainComplex C ℕ)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe409de05b6c9367288315ce2c239d8ba39f5fb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
