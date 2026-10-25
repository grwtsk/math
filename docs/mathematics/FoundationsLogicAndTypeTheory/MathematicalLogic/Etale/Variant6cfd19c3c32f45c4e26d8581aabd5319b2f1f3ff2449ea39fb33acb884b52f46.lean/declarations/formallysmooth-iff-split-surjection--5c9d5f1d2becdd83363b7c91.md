# FormallySmooth.iff_split_surjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45fdea5251f372e68b0d71e202ba62243570e20f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a51bf96-fcb7-b046-06ff-201e028897ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a141f474-dd99-9629-a862-2ba135090b8b",
  "kind": "theorem",
  "lexical_name": "FormallySmooth.iff_split_surjection",
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
  "slug": "formallysmooth-iff-split-surjection--5c9d5f1d2becdd83363b7c91",
  "source": {
    "blob": "45fdea5251f372e68b0d71e202ba62243570e20f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 357,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c9d5f1d2becdd83363b7c91a800b36241b6dec11df00aaf44b976fa86637dd2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a141f474-dd99-9629-a862-2ba135090b8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FormallySmooth.iff_split_surjection [FormallySmooth R P] :
    FormallySmooth R A ↔ ∃ g, f.kerSquareLift.comp g = AlgHom.id R A := by
  constructor
  · intro
    have surj : Function.Surjective f.kerSquareLift := fun x =>
      ⟨Submodule.Quotient.mk (hf x).choose, (hf x).choose_spec⟩
    have sqz : RingHom.ker f.kerSquareLift.toRingHom ^ 2 = 0 := by
      rw [AlgHom.ker_kerSquareLift, Ideal.cotangentIdeal_square, Ideal.zero_eq_bot]
    refine'
      ⟨FormallySmooth.lift _ ⟨2, sqz⟩ (Ideal.quotientKerAlgEquivOfSurjective surj).symm.toAlgHom,
        _⟩
    ext x
    have :=
      (Ideal.quotientKerAlgEquivOfSurjective surj).toAlgHom.congr_arg
        (FormallySmooth.mk_lift _ ⟨2, sqz⟩
          (Ideal.quotientKerAlgEquivOfSurjective surj).symm.toAlgHom x)
    -- Porting note: was
    -- dsimp at this
    -- rw [AlgEquiv.apply_symm_apply] at this
    erw [AlgEquiv.apply_symm_apply] at this
    conv_rhs => rw [← this, AlgHom.id_apply]
    -- Porting note: lean3 was not finished here:
    -- obtain ⟨y, e⟩ :=
    --   Ideal.Quotient.mk_surjective
    --     (FormallySmooth.lift _ ⟨2, sqz⟩
    --       (Ideal.quotientKerAlgEquivOfSurjective surj).symm.toAlgHom
    --       x)
    -- dsimp at e ⊢
    -- rw [← e]
    -- rfl
  · rintro ⟨g, hg⟩; exact FormallySmooth.of_split f g hg
#align algebra.formally_smooth.iff_split_surjection Algebra.FormallySmooth.iff_split_surjection

end OfSurjective

section UnramifiedDerivation

open scoped TensorProduct

variable {R S : Type u} [CommRing R] [CommRing S] [Algebra R S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45fdea5251f372e68b0d71e202ba62243570e20f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
