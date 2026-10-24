# iff_split_surjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb3297b1-11ee-4ebd-7cf8-217b38452f1b",
  "kind": "theorem",
  "lexical_name": "iff_split_surjection",
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
  "slug": "iff-split-surjection--598e3711e6820862c9e43812",
  "source": {
    "blob": "c3de15b4c05eb49750cbdac2a306df484922177f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 228,
    "path": "GRWTSK/Algebra/Basic/Variant1c3290e672dc502120ba216e0bf1a17904569326efdba8b72e870b53796a4258.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:598e3711e6820862c9e43812e5b394b6ec0c3f44a95538b757d2260b53f49235",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1c3290e672dc502120ba216e0bf1a17904569326efdba8b72e870b53796a4258.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb3297b1-11ee-4ebd-7cf8-217b38452f1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_split_surjection [FormallySmooth R P] :
    FormallySmooth R A ↔ ∃ g, f.kerSquareLift.comp g = AlgHom.id R A := by
  constructor
  · intro
    have surj : Function.Surjective f.kerSquareLift := fun x =>
      ⟨Submodule.Quotient.mk (hf x).choose, (hf x).choose_spec⟩
    have sqz : RingHom.ker f.kerSquareLift.toRingHom ^ 2 = 0 := by
      rw [AlgHom.ker_kerSquareLift, Ideal.cotangentIdeal_square, Ideal.zero_eq_bot]
    dsimp only [AlgHom.toRingHom_eq_coe, RingHom.ker_coe_toRingHom] at sqz
    refine
      ⟨FormallySmooth.lift _ ⟨2, sqz⟩ (Ideal.quotientKerAlgEquivOfSurjective surj).symm.toAlgHom,
        ?_⟩
    dsimp only [AlgHom.toRingHom_eq_coe, AlgEquiv.toAlgHom_eq_coe]
    ext x
    have :=
      (Ideal.quotientKerAlgEquivOfSurjective surj).congr_arg
        (FormallySmooth.mk_lift (R := R) _ ⟨2, sqz⟩
          (Ideal.quotientKerAlgEquivOfSurjective surj).symm x)
    dsimp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_coe] at this
    rw [AlgEquiv.apply_symm_apply] at this
    conv_rhs => rw [← this, AlgHom.id_apply]
    rfl
  · rintro ⟨g, hg⟩; exact FormallySmooth.of_split f g hg

end OfSurjective

section BaseChange

open scoped TensorProduct

variable {R : Type u} [CommSemiring R]
variable {A : Type u} [Semiring A] [Algebra R A]
variable (B : Type u) [CommSemiring B] [Algebra R B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1c3290e672dc502120ba216e0bf1a17904569326efdba8b72e870b53796a4258.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1c3290e672dc502120ba216e0bf1a17904569326efdba8b72e870b53796a4258.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3de15b4c05eb49750cbdac2a306df484922177f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
