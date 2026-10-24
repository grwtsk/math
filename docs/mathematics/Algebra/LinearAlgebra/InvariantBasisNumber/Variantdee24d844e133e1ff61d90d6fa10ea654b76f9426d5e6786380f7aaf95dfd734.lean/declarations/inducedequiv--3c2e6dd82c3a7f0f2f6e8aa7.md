# inducedEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43cee35cd552f4e0e98eb4ba7bc7d534367b4bc53d5e13a6cc339b83eaa89875",
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
  "slug": "inducedequiv--3c2e6dd82c3a7f0f2f6e8aa7",
  "source": {
    "blob": "3464e0e1accf49b2e8f2c12c14dc7b0ee8a88a7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c2e6dd82c3a7f0f2f6e8aa7b12faa9b8b0f45d8c59d3109040063d0f1efb37a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43cee35cd552f4e0e98eb4ba7bc7d534367b4bc53d5e13a6cc339b83eaa89875`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–318.

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

/-- Nontrivial commutative rings have the invariant basis number property.

There are two stronger results in mathlib: `commRing_strongRankCondition`, which says that any
nontrivial commutative ring satisfies the strong rank condition, and
`rankCondition_of_nontrivial_of_commSemiring`, which says that any nontrivial commutative semiring
satisfies the rank condition.

We prove this instance separately to avoid dependency on
`Mathlib/LinearAlgebra/Charpoly/Basic.lean` or `Mathlib/LinearAlgebra/Matrix/ToLin.lean`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantdee24d844e133e1ff61d90d6fa10ea654b76f9426d5e6786380f7aaf95dfd734.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3464e0e1accf49b2e8f2c12c14dc7b0ee8a88a7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
