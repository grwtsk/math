# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa384d7743098a02e0897503c8052bc5e04f959a3032cc868aba38d2e6d84164",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ead7e33688ec0216f50ce9eb",
  "source": {
    "blob": "e6ddaeb958f449642b8bec8ef27f09765afabc95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 47,
    "path": "GRWTSK/Algebra/UniversalAlgebra/IsFinite/Variant37c7d6fe24c310955276f235971a50dcc34b9a49793ae4dacbc11b101064d087.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ead7e33688ec0216f50ce9eb03980816beb37589433c7c88139c1e87c73d1c92",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/IsFinite/Variant37c7d6fe24c310955276f235971a50dcc34b9a49793ae4dacbc11b101064d087.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa384d7743098a02e0897503c8052bc5e04f959a3032cc868aba38d2e6d84164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : isFinite.{u}.IsSerreClass where
  exists_zero := ⟨↧PUnit, isZero_of_subsingleton _,
    by rw [prop_isFinite_iff]; infer_instance⟩
  prop_of_mono {M N} f hf hN := by
    rw [AddCommGrpCat.mono_iff_injective] at hf
    simp only [prop_isFinite_iff] at hN ⊢
    exact Finite.of_injective _ hf
  prop_of_epi {M N} f hf hM := by
    rw [AddCommGrpCat.epi_iff_surjective] at hf
    simp only [prop_isFinite_iff] at hM ⊢
    exact Finite.of_surjective _ hf
  prop_X₂_of_shortExact {S} hS h₁ h₃ := by
    simp only [prop_isFinite_iff] at h₁ h₃ ⊢
    have hg := hS.epi_g
    rw [AddCommGrpCat.epi_iff_surjective] at hg
    obtain ⟨s, hs⟩ := hg.hasRightInverse
    have hφ : Function.Surjective (fun (x₁, x₃) ↦ S.f x₁ + s x₃) := fun x₂ ↦ by
      obtain ⟨x₁, hx₁⟩ := (ShortComplex.ab_exact_iff S).1 hS.exact (x₂ - s (S.g x₂))
        (by simp [hs (S.g x₂)])
      exact ⟨⟨x₁, S.g x₂⟩, by simp [hx₁]⟩
    exact Finite.of_surjective _ hφ

end AddCommGrpCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/IsFinite/Variant37c7d6fe24c310955276f235971a50dcc34b9a49793ae4dacbc11b101064d087.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/IsFinite/Variant37c7d6fe24c310955276f235971a50dcc34b9a49793ae4dacbc11b101064d087.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6ddaeb958f449642b8bec8ef27f09765afabc95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
