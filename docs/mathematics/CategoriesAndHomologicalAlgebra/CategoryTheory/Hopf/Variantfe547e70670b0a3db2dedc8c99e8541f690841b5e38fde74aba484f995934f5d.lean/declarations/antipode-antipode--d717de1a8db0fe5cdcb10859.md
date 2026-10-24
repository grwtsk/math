# antipode_antipode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59811a5b-2509-2724-f823-11558fb14e09",
  "kind": "theorem",
  "lexical_name": "antipode_antipode",
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
  "slug": "antipode-antipode--d717de1a8db0fe5cdcb10859",
  "source": {
    "blob": "05e092319b760c3557eaa999efeb961c644b14af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 493,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d717de1a8db0fe5cdcb108595c2f5dc4a7b756fb7c7ce711dea87cf15ff6274d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59811a5b-2509-2724-f823-11558fb14e09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antipode_antipode (A : Hopf_ C) (comm : (β_ _ _).hom ≫ A.X.X.mul = A.X.X.mul) :
    A.antipode ≫ A.antipode = 𝟙 A.X.X.X := by
  -- Again, it is a "left inverse equals right inverse" argument in the convolution monoid.
  apply left_inv_eq_right_inv
    (M := Conv ((Bimon_.toComon_ C).obj A.X) A.X.X)
    (a := A.antipode)
  · -- Unfold the algebra structure in the convolution monoid,
    -- then `simp?`.
    erw [Conv.mul_eq, Conv.one_eq]
    simp only [Bimon_.toComon__obj_X, Bimon_.toComon__obj_comul, comp_whiskerRight, Category.assoc,
      Bimon_.toComon__obj_counit]
    rw [← comm, ← tensorHom_def_assoc, ← mul_antipode]
    simp
  · erw [Conv.mul_eq, Conv.one_eq]
    simp

end Hopf_

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05e092319b760c3557eaa999efeb961c644b14af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
