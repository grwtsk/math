# Ideal.FG.of_FG_map_of_faithfullyFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3f801ab-544e-5089-7210-620b85102416",
  "kind": "lemma",
  "lexical_name": "Ideal.FG.of_FG_map_of_faithfullyFlat",
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
  "slug": "ideal-fg-of-fg-map-of-faithfullyflat--46dbcd61009eff4327504009",
  "source": {
    "blob": "62b46ddb162a450d7f99813fbfef47b9d9d3a6a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 58,
    "path": "GRWTSK/Algebra/LinearAlgebra/Descent/Variant839f57f3bee154863e0bd3c920bf09eeb09445ba21b96e899009bb68e0db7ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46dbcd61009eff4327504009d330862c49cfc61ce176250ef599533385a8ed83",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Descent/Variant839f57f3bee154863e0bd3c920bf09eeb09445ba21b96e899009bb68e0db7ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3f801ab-544e-5089-7210-620b85102416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.FG.of_FG_map_of_faithfullyFlat [Module.FaithfullyFlat R S] {I : Ideal R}
    (hI : (I.map (algebraMap R S)).FG) : I.FG := by
  change Submodule.FG I
  rw [← Module.Finite.iff_fg]
  let f : S ⊗[R] I →ₗ[S] S :=
    (AlgebraTensorModule.rid _ _ _).toLinearMap ∘ₗ AlgebraTensorModule.lTensor S S I.subtype
  have hf : Function.Injective f := by simp [f]
  have : I.map (algebraMap R S) = LinearMap.range f := by
    refine le_antisymm ?_ ?_
    · rw [Ideal.map_le_iff_le_comap]
      intro x hx
      use 1 ⊗ₜ ⟨x, hx⟩
      simp [f, Algebra.smul_def]
    · rintro - ⟨x, rfl⟩
      induction x with
      | add _ _ _ _ => simp_all [Ideal.add_mem]
      | tmul s x =>
        have : f (s ⊗ₜ[R] x) = s • f (1 ⊗ₜ x) := by simp [f]
        rw [this]
        apply Ideal.mul_mem_left
        simpa [f, Algebra.smul_def] using Ideal.mem_map_of_mem _ x.2
  let e : S ⊗[R] I ≃ₗ[S] I.map (algebraMap R S) := .ofInjective _ hf ≪≫ₗ .ofEq _ _ this.symm
  have : Module.Finite S (S ⊗[R] ↥I) := by
    rwa [Module.Finite.equiv_iff e, Module.Finite.iff_fg]
  apply Module.Finite.of_finite_tensorProduct_of_faithfullyFlat S

namespace Algebra

/-- If `T ⊗[R] S` is of finite type over `T` and `T` is `R`-faithfully flat,
then `S` is of finite type over `R` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Descent/Variant839f57f3bee154863e0bd3c920bf09eeb09445ba21b96e899009bb68e0db7ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Descent/Variant839f57f3bee154863e0bd3c920bf09eeb09445ba21b96e899009bb68e0db7ee6.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62b46ddb162a450d7f99813fbfef47b9d9d3a6a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
