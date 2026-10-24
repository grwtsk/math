# iff_quotient_mvPolynomial'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e28fe1ae-98ad-18da-ec67-d54845f6d5ee",
  "kind": "theorem",
  "lexical_name": "iff_quotient_mvPolynomial'",
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
  "slug": "iff-quotient-mvpolynomial--b832f505abd9b1abd48d91f7",
  "source": {
    "blob": "fe07b8e6a703c07f11da53a4e47663c372bc129b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 148,
    "path": "GRWTSK/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b832f505abd9b1abd48d91f7b2d73f9bc202dcf479cb9a9fd47f687720ecac10",
  "verification": {
    "reference": "docs/verification/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e28fe1ae-98ad-18da-ec67-d54845f6d5ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_quotient_mvPolynomial' :
    FinitePresentation R A ↔
      ∃ (ι : Type*) (_ : Fintype ι) (f : MvPolynomial ι R →ₐ[R] A),
        Surjective f ∧ (RingHom.ker f.toRingHom).FG := by
  constructor
  · rintro ⟨n, f, hfs, hfk⟩
    set ulift_var := MvPolynomial.renameEquiv R Equiv.ulift
    refine
      ⟨ULift (Fin n), inferInstance, f.comp ulift_var.toAlgHom, hfs.comp ulift_var.surjective,
        Ideal.fg_ker_comp _ _ ?_ hfk ulift_var.surjective⟩
    simpa using! Submodule.fg_bot
  · rintro ⟨ι, hfintype, f, hf⟩
    have equiv := MvPolynomial.renameEquiv R (Fintype.equivFin ι)
    use Fintype.card ι, f.comp equiv.symm, hf.1.comp (AlgEquiv.symm equiv).surjective
    refine Ideal.fg_ker_comp (S := MvPolynomial ι R) (A := A) _ f ?_ hf.2 equiv.symm.surjective
    simpa using! Submodule.fg_bot

universe v in
/-- If `A` is a finitely presented `R`-algebra, then `MvPolynomial (Fin n) A` is finitely presented
as `R`-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FinitePresentation/Variant5e65e07995b5011a9bbe6d1ddab1de1a267c9813eea8ad86f714384e5d34ed12.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe07b8e6a703c07f11da53a4e47663c372bc129b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
