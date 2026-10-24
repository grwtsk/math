# tensorH1CotangentOfFormallyEtale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:826323b0853179031364e22fb34496a044f32ea933af07b8836c396454b2335b",
  "kind": "def",
  "lexical_name": "tensorH1CotangentOfFormallyEtale",
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
  "slug": "tensorh1cotangentofformallyetale--a060b29221ece4b634a482e7",
  "source": {
    "blob": "48bfeee74dc527e412956ee6ada4055339e5e187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 233,
    "path": "GRWTSK/Algebra/Kaehler/Varianta92f7d28a44b1b7eff8d6509510b8354b5ed24c6adede42e539de5a32be2c1c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a060b29221ece4b634a482e7f3ba5bf79e94a93c4773d206d3a8040a5a6a2281",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Varianta92f7d28a44b1b7eff8d6509510b8354b5ed24c6adede42e539de5a32be2c1c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:826323b0853179031364e22fb34496a044f32ea933af07b8836c396454b2335b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorH1CotangentOfFormallyEtale [alg : Algebra P.Ring Q.Ring]
    (halg : algebraMap P.Ring Q.Ring = f.toRingHom) [Module.Flat S T]
    (H₁ : f.toRingHom.FormallyEtale)
    (H₂ : Function.Bijective ((f.mapKer halg).liftBaseChange Q.Ring)) :
    T ⊗[S] P.H1Cotangent ≃ₗ[T] Q.H1Cotangent := by
  refine .ofBijective ((H1Cotangent.map f).liftBaseChange T) ?_
  constructor
  · rw [injective_iff_map_eq_zero]
    intro x hx
    apply Module.Flat.lTensor_preserves_injective_linearMap _ h1Cotangentι_injective
    apply (Extension.tensorCotangent f halg H₂).injective
    simp only [map_zero]
    rw [← h1Cotangentι.map_zero, ← hx]
    change ((Cotangent.map f).liftBaseChange T ∘ₗ h1Cotangentι.baseChange T) x =
      (h1Cotangentι ∘ₗ _) x
    congr 1
    ext x
    simp
  · intro x
    have : Function.Exact (h1Cotangentι.baseChange T) (P.cotangentComplex.baseChange T) :=
      Module.Flat.lTensor_exact T (LinearMap.exact_subtype_ker_map _)
    obtain ⟨a, ha⟩ := (this ((Extension.tensorCotangent f halg H₂).symm x.1)).mp (by
      apply (Extension.tensorCotangentSpaceOfFormallyEtale f H₁).injective
      rw [LinearEquiv.map_zero, ← x.2]
      have : (CotangentSpace.map f).liftBaseChange T ∘ₗ P.cotangentComplex.baseChange T =
          Q.cotangentComplex ∘ₗ (Cotangent.map f).liftBaseChange T := by
        ext x; obtain ⟨x, rfl⟩ := Cotangent.mk_surjective x; dsimp
        simp only [CotangentSpace.map_tmul,
          map_one, Hom.toAlgHom_apply, one_smul, cotangentComplex_mk]
      exact (DFunLike.congr_fun this _).trans (DFunLike.congr_arg Q.cotangentComplex
        ((tensorCotangent f halg H₂).apply_symm_apply x.1)))
    refine ⟨a, Subtype.ext (.trans ?_ ((LinearEquiv.eq_symm_apply _).mp ha))⟩
    change (h1Cotangentι ∘ₗ (H1Cotangent.map f).liftBaseChange T) _ =
      ((Cotangent.map f).liftBaseChange T ∘ₗ h1Cotangentι.baseChange T) _
    congr 1
    ext; dsimp

end Extension

variable {S}

set_option backward.isDefEq.respectTransparency false in
/-- let `p` be a submonoid of an `R`-algebra `S`. Then `Sₚ ⊗ H¹(L_{S/R}) ≃ H¹(L_{Sₚ/R})`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Varianta92f7d28a44b1b7eff8d6509510b8354b5ed24c6adede42e539de5a32be2c1c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Varianta92f7d28a44b1b7eff8d6509510b8354b5ed24c6adede42e539de5a32be2c1c4.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48bfeee74dc527e412956ee6ada4055339e5e187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
