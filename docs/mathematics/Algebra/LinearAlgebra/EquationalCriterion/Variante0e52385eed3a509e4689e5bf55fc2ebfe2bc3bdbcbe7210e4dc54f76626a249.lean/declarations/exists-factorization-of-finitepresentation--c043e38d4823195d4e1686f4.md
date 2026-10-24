# exists_factorization_of_finitePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7a251d0-f167-46cc-0d07-0a2164e5a460",
  "kind": "theorem",
  "lexical_name": "exists_factorization_of_finitePresentation",
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
  "slug": "exists-factorization-of-finitepresentation--c043e38d4823195d4e1686f4",
  "source": {
    "blob": "743e9721468e82eda444d1533a52c5f486305d01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 278,
    "path": "GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variante0e52385eed3a509e4689e5bf55fc2ebfe2bc3bdbcbe7210e4dc54f76626a249.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c043e38d4823195d4e1686f41aaa09fb3e3efdaebdf80d5e3199835fb034cf8d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EquationalCriterion/Variante0e52385eed3a509e4689e5bf55fc2ebfe2bc3bdbcbe7210e4dc54f76626a249.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7a251d0-f167-46cc-0d07-0a2164e5a460`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_factorization_of_finitePresentation [Flat R M] {P : Type*} [AddCommGroup P]
    [Module R P] [FinitePresentation R P] (h₁ : P →ₗ[R] M) :
    ∃ (k : ℕ) (h₂ : P →ₗ[R] (Fin k →₀ R)) (h₃ : (Fin k →₀ R) →ₗ[R] M), h₁ = h₃ ∘ₗ h₂ := by
  have ⟨_, K, ϕ, hK⟩ := FinitePresentation.exists_fin R P
  have : Module.Finite R K := .of_fg hK
  have : (h₁ ∘ₗ ϕ.symm ∘ₗ K.mkQ) ∘ₗ K.subtype = 0 := by
    simp_rw [comp_assoc, (LinearMap.exact_subtype_mkQ K).linearMap_comp_eq_zero, comp_zero]
  obtain ⟨k, a, y, hay, ha⟩ := exists_factorization_of_comp_eq_zero_of_free this
  use k, (K.liftQ a (by rwa [← range_le_ker_iff, Submodule.range_subtype] at ha)) ∘ₗ ϕ, y
  apply (cancel_right ϕ.symm.surjective).mp
  apply (cancel_right K.mkQ_surjective).mp
  simpa [comp_assoc]

@[deprecated (since := "2026-05-23")]
alias exists_factorization_of_isFinitelyPresented := exists_factorization_of_finitePresentation

@[stacks 00NX "(1) → (2)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EquationalCriterion/Variante0e52385eed3a509e4689e5bf55fc2ebfe2bc3bdbcbe7210e4dc54f76626a249.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variante0e52385eed3a509e4689e5bf55fc2ebfe2bc3bdbcbe7210e4dc54f76626a249.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743e9721468e82eda444d1533a52c5f486305d01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
