# fromSingle₀Equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ba44821999a0798a7914a0962a1b1523d8e5e90dbe645b9f733f1e48a816ad9",
  "kind": "def",
  "lexical_name": "fromSingle₀Equiv",
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
  "slug": "fromsingle-equiv--af89c73aeade5d9ee0e78fab",
  "source": {
    "blob": "35a086edfe9a0b39417f234e4ac289de2a5313fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 430,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variantf2c61f41d31ca7c2754b44db74299067fdca9c21b62fe35e86d7bff1f43866ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af89c73aeade5d9ee0e78fab11de500bad016f267bac76dc343d4268bb8c1ef6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variantf2c61f41d31ca7c2754b44db74299067fdca9c21b62fe35e86d7bff1f43866ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ba44821999a0798a7914a0962a1b1523d8e5e90dbe645b9f733f1e48a816ad9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromSingle₀Equiv (C : CochainComplex V ℕ) (X : V) :
    ((single₀ V).obj X ⟶ C) ≃ { f : X ⟶ C.X 0 // f ≫ C.d 0 1 = 0 } where
  toFun f :=
    ⟨f.f 0, by
      rw [f.comm 0 1]
      simp⟩
  invFun f :=
    { f := fun i =>
        match i with
        | 0 => f.1
        | n + 1 => 0
      comm' := fun i j h => by
        rcases f with ⟨f, hf⟩
        rcases j with (_|_|j) <;> cases i <;> simp only [single₀_obj_X_d, zero_comp]
        · rw [C.shape, comp_zero]
          simp
        · exact hf
        · rw [C.shape, comp_zero]
          simp
          exact j.succ_succ_ne_one.symm }
  left_inv f := by
    ext i
    rcases i with ⟨⟩
    · rfl
    · dsimp
      ext
  right_inv := by aesop_cat
#align cochain_complex.from_single₀_equiv CochainComplex.fromSingle₀Equiv

-- porting note: added to ease the following definition
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variantf2c61f41d31ca7c2754b44db74299067fdca9c21b62fe35e86d7bff1f43866ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variantf2c61f41d31ca7c2754b44db74299067fdca9c21b62fe35e86d7bff1f43866ff.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35a086edfe9a0b39417f234e4ac289de2a5313fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
