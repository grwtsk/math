# polynomial_induction

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
      "line": 467,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae0e42a4-3df3-ae76-5d97-62991dc3fb48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3dca5507-022d-6aba-b785-7dc7f0601e7b",
  "kind": "lemma",
  "lexical_name": "polynomial_induction",
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
  "slug": "polynomial-induction--cb9b7f0b2daa12cbb0e0d4df",
  "source": {
    "blob": "2865db97e058bf0cd6bb3d050deb700004ad5220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 467,
    "path": "GRWTSK/Algebra/FinitePresentation/Variant32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb9b7f0b2daa12cbb0e0d4df977e39f2c95e47481ba13186e17fa475767a0e72",
  "verification": {
    "reference": "docs/verification/Algebra/FinitePresentation/Variant32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dca5507-022d-6aba-b785-7dc7f0601e7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma polynomial_induction
    (P : ∀ (R : Type u) [CommRing R] (S : Type u) [CommRing S], (R →+* S) → Prop)
    (Q : ∀ (R : Type u) [CommRing R] (S : Type v) [CommRing S], (R →+* S) → Prop)
    (polynomial : ∀ (R) [CommRing R], P R R[X] C)
    (fg_ker : ∀ (R : Type u) [CommRing R] (S : Type v) [CommRing S] (f : R →+* S),
      Surjective f → (ker f).FG → Q R S f)
    (comp : ∀ (R) [CommRing R] (S) [CommRing S] (T) [CommRing T] (f : R →+* S) (g : S →+* T),
      P R S f → Q S T g → Q R T (g.comp f))
    {R : Type u} {S : Type v} [CommRing R] [CommRing S] (f : R →+* S) (hf : f.FinitePresentation) :
    Q R S f := by
  let := f.toAlgebra
  obtain ⟨n, g, hg, hg'⟩ := hf
  let g' := g.toRingHom
  change Surjective g' at hg
  change (ker g').FG at hg'
  have : g'.comp MvPolynomial.C = f := g.comp_algebraMap
  clear_value g'
  subst this
  clear g
  induction n generalizing R S with
  | zero =>
    refine fg_ker _ _ _ (hg.comp (MvPolynomial.C_surjective (Fin 0))) ?_
    rw [← comap_ker]
    convert! hg'.map (MvPolynomial.isEmptyRingEquiv R (Fin 0)).toRingHom using 1
    simp only [RingEquiv.toRingHom_eq_coe, ← MvPolynomial.isEmptyRingEquiv_symm_toRingHom]
    exact Ideal.comap_symm (MvPolynomial.isEmptyRingEquiv R (Fin 0))
  | succ n IH =>
    let e : MvPolynomial (Fin (n + 1)) R ≃ₐ[R] MvPolynomial (Fin n) R[X] :=
      (MvPolynomial.renameEquiv R (finSuccEquiv n)).trans (MvPolynomial.optionEquivRight R (Fin n))
    have he : (ker (g'.comp <| RingHomClass.toRingHom e.symm)).FG := by
      rw [← RingHom.comap_ker]
      convert! hg'.map e.toAlgHom.toRingHom using 1
      exact Ideal.comap_symm e.toRingEquiv
    have := IH (R := R[X]) (S := S) (g'.comp e.symm) (hg.comp e.symm.surjective) he
    convert! comp _ _ _ _ _ (polynomial _) this using 1
    rw [comp_assoc, comp_assoc]
    congr 1 with r
    simp [e]

end RingHom.FinitePresentation

namespace AlgHom

variable {R A B C : Type*} [CommRing R]
variable [CommRing A] [CommRing B] [CommRing C]
variable [Algebra R A] [Algebra R B] [Algebra R C]

/-- An algebra morphism `A →ₐ[R] B` is of `AlgHom.FinitePresentation` if it is of finite
presentation as ring morphism. In other words, if `B` is finitely presented as `A`-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FinitePresentation/Variant32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FinitePresentation/Variant32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2865db97e058bf0cd6bb3d050deb700004ad5220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
