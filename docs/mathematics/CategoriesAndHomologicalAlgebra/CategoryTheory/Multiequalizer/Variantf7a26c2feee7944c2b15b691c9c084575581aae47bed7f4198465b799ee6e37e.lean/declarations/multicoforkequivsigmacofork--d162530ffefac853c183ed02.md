# multicoforkEquivSigmaCofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eebba79c216d54c9174920794f8a1e4f03211fddcee4498432533414728f6014",
  "kind": "def",
  "lexical_name": "multicoforkEquivSigmaCofork",
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
  "slug": "multicoforkequivsigmacofork--d162530ffefac853c183ed02",
  "source": {
    "blob": "0003dd4551829fe0ea43019ce030fbd7447d1d27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 727,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantf7a26c2feee7944c2b15b691c9c084575581aae47bed7f4198465b799ee6e37e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d162530ffefac853c183ed0247c787d7305b16f9eabd57d114c2c474b7ee313a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantf7a26c2feee7944c2b15b691c9c084575581aae47bed7f4198465b799ee6e37e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eebba79c216d54c9174920794f8a1e4f03211fddcee4498432533414728f6014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 727–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def multicoforkEquivSigmaCofork :
    Multicofork I ≌ Cofork I.fstSigmaMap I.sndSigmaMap where
  functor := toSigmaCoforkFunctor I
  inverse := ofSigmaCoforkFunctor I
  unitIso := NatIso.ofComponents fun K => Cocones.ext (Iso.refl _) (by
      rintro (_ | _) <;> simp)
  counitIso := NatIso.ofComponents fun K =>
    Cofork.ext (Iso.refl _)
      (by
        -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): in mathlib3 this was just `ext` and I don't know why it's not here
        apply Limits.colimit.hom_ext
        rintro ⟨j⟩
        dsimp
        simp only [Category.comp_id, colimit.ι_desc, Cofan.mk_ι_app]
        rfl)

end MultispanIndex

/-- For `I : MulticospanIndex J C`, we say that it has a multiequalizer if the associated
  multicospan has a limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantf7a26c2feee7944c2b15b691c9c084575581aae47bed7f4198465b799ee6e37e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantf7a26c2feee7944c2b15b691c9c084575581aae47bed7f4198465b799ee6e37e.lean#L727).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0003dd4551829fe0ea43019ce030fbd7447d1d27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
