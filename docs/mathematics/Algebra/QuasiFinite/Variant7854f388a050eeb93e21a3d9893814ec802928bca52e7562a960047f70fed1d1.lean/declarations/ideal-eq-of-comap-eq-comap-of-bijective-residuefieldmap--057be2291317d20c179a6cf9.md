# Ideal.eq_of_comap_eq_comap_of_bijective_residueFieldMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8aecc1e0-559d-a9fa-4e3e-02b78b0a87ed",
  "kind": "lemma",
  "lexical_name": "Ideal.eq_of_comap_eq_comap_of_bijective_residueFieldMap",
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
  "slug": "ideal-eq-of-comap-eq-comap-of-bijective-residuefieldmap--057be2291317d20c179a6cf9",
  "source": {
    "blob": "9880cf7adeb55b07f7e181ed922db4e8c66ee794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 75,
    "path": "GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:057be2291317d20c179a6cf9b51611da95335a204e2a312ffa476854965f4e62",
  "verification": {
    "reference": "docs/verification/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aecc1e0-559d-a9fa-4e3e-02b78b0a87ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.eq_of_comap_eq_comap_of_bijective_residueFieldMap
    (H : Function.Bijective (Ideal.ResidueField.mapₐ p q (Algebra.ofId _ _) (q.over_def p)))
    (P₁ P₂ : Ideal (R' ⊗[R] S)) [P₁.IsPrime] [P₂.IsPrime] [P₁.LiesOver q] [P₂.LiesOver q]
    (H₂ : P₁.comap Algebra.TensorProduct.includeRight.toRingHom =
      P₂.comap Algebra.TensorProduct.includeRight.toRingHom) : P₁ = P₂ := by
  refine congr_arg Subtype.val ((Ideal.fiberIsoOfBijectiveResidueField
  (S := S) H).injective (a₁ := ⟨P₁, ‹_›, ‹_›⟩) (a₂ := ⟨P₂, ‹_›, ‹_›⟩) (by ext1; simpa))

end BijectiveResidueField

section

open Polynomial

universe u v

variable {R : Type u} {S : Type v} {T : Type*}
  [CommRing R] [CommRing S] [CommRing T] [Algebra R S] [Algebra R T]

set_option backward.isDefEq.respectTransparency false in
/-- Suppose `f : S →ₐ[R] T` is an `R`-algebra homomorphism with `S` integral and `T` of finite type,
such that the induced map `S[1/g] → T[1/g]` is surjective for some `g : S`.
Then for any prime `p` of `R` such that `1 ⊗ₜ g` is invertible in `κ(p) ⊗ S`,
there exists `r ∉ p` such that `T[1/r]` is finite over `R[1/r]`. -/
@[stacks 00UI]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9880cf7adeb55b07f7e181ed922db4e8c66ee794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
