# iff_quotient_mvPolynomial'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2865db97e058bf0cd6bb3d050deb700004ad5220",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5480d825-8d40-fb7b-ff73-017930b6dfe6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59d9f8d0-3013-4d53-31e2-beb44444cb77",
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
  "slug": "iff-quotient-mvpolynomial--dff1520c51879bc3c519ef6e",
  "source": {
    "blob": "2865db97e058bf0cd6bb3d050deb700004ad5220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 140,
    "path": "GRWTSK/Algebra/FinitePresentation/Variant32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dff1520c51879bc3c519ef6e90fa6d892d356850972c0273c3ebcfd017dee17f",
  "verification": {
    "reference": "docs/verification/Algebra/FinitePresentation/Variant32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59d9f8d0-3013-4d53-31e2-beb44444cb77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–159.

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

[Verification target and public status](../../../../../verification/Algebra/FinitePresentation/Variant32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FinitePresentation/Variant32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2865db97e058bf0cd6bb3d050deb700004ad5220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
