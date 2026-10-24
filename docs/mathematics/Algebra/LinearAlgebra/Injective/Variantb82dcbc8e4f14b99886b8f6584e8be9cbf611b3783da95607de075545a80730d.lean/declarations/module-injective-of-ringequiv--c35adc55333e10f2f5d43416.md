# Module.Injective.of_ringEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fbadf88-4275-fb1d-3189-3e426a512a35",
  "kind": "theorem",
  "lexical_name": "Module.Injective.of_ringEquiv",
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
  "slug": "module-injective-of-ringequiv--c35adc55333e10f2f5d43416",
  "source": {
    "blob": "0fd2344c5d6119685a18f6afe9bd123a1d231599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 489,
    "path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variantb82dcbc8e4f14b99886b8f6584e8be9cbf611b3783da95607de075545a80730d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c35adc55333e10f2f5d4341619837e6eb00674de4cd4b3a8012785c7c4470b40",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Injective/Variantb82dcbc8e4f14b99886b8f6584e8be9cbf611b3783da95607de075545a80730d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fbadf88-4275-fb1d-3189-3e426a512a35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.Injective.of_ringEquiv {R : Type u} [Ring R] [Small.{v} R] {S : Type u'} [Ring S]
    {M : Type v} {N : Type v'} [AddCommGroup M] [AddCommGroup N] [Module R M] [Module S N]
    (e₁ : R ≃+* S) (e₂ : M ≃ₛₗ[RingHomClass.toRingHom e₁] N)
    [inj : Module.Injective R M] : Module.Injective S N := by
  apply Module.Baer.injective (fun I g ↦ ?_)
  let I' := Submodule.map e₁.symm.toSemilinearEquiv.toLinearMap I
  let e : I' ≃ₛₗ[RingHomClass.toRingHom e₁] I := (e₁.symm.toSemilinearEquiv.submoduleMap I).symm
  let f : I' →ₗ[R] M := e₂.symm.toLinearMap.comp (g.comp e.toLinearMap)
  have hf (x) (hx : x ∈ I') : f ⟨x, hx⟩ = e₂.symm (g ⟨e₁ x, by simp_all [I']⟩) := rfl
  obtain ⟨f', hf'⟩ := Module.Baer.of_injective ‹_› I' f
  exact ⟨e₂.toLinearMap ∘ₛₗ f' ∘ₛₗ e₁.toSemilinearEquiv.symm.toLinearMap, by simp_all [I']⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Injective/Variantb82dcbc8e4f14b99886b8f6584e8be9cbf611b3783da95607de075545a80730d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Injective/Variantb82dcbc8e4f14b99886b8f6584e8be9cbf611b3783da95607de075545a80730d.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fd2344c5d6119685a18f6afe9bd123a1d231599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
