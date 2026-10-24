# inducedEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad5f1b5e373d14fe8ca50309c0fe7fe177a8ce0cb09061e884ec5df35a14adba",
  "kind": "def",
  "lexical_name": "inducedEquiv",
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
  "slug": "inducedequiv--9a5da66f6cf7a522f99d4cfe",
  "source": {
    "blob": "6f1dd95ebb2e8af2edc1572aca3f015df3ae5432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 284,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a5da66f6cf7a522f99d4cfe7de7e5bc646ed054ef9892adb65a631446676f09",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variant063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad5f1b5e373d14fe8ca50309c0fe7fe177a8ce0cb09061e884ec5df35a14adba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def inducedEquiv [Fintype ι'] (I : Ideal R) (e : (ι → R) ≃ₗ[R] ι' → R) :
    ((ι → R) ⧸ Ideal.pi fun _ ↦ I) ≃ₗ[R ⧸ I] (ι' → R) ⧸ Ideal.pi fun _ ↦ I where
  toFun := induced_map I e
  invFun := induced_map I e.symm
  map_add' := by rintro ⟨a⟩ ⟨b⟩; exact congr_arg _ (map_add ..)
  map_smul' := by rintro ⟨a⟩ ⟨b⟩; exact congr_arg _ (map_smul ..)
  left_inv := by rintro ⟨a⟩; exact congr_arg _ (e.left_inv ..)
  right_inv := by rintro ⟨a⟩; exact congr_arg _ (e.right_inv ..)

end

section

attribute [local instance] Ideal.Quotient.field

/--
Nontrivial commutative rings satisfy the invariant basis number property.

There are two stronger results in mathlib:
1.  `CommRing.orzechProperty` in `Mathlib.RingTheory.FiniteType`,
    which says that any commutative ring satisfies the Orzech property, and hence
    (by `strongRankCondition_of_orzechProperty`) that nontrivial commutative rings satisfy
    the strong rank condition. A shortcut instance `commRing_strongRankCondition` is also provided.
2.  `rankCondition_of_nontrivial_of_commSemiring` in
    `Mathlib.LinearAlgebra.Matrix.InvariantBasisNumber`, which says that
    any nontrivial commutative semiring satisfies the rank condition.

We prove this instance here anyway to reduce the required imports.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variant063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f1dd95ebb2e8af2edc1572aca3f015df3ae5432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
