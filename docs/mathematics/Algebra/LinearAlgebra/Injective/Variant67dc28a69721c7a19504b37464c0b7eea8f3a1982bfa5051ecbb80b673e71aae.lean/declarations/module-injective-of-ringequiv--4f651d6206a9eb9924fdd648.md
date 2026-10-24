# Module.Injective.of_ringEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6dc775ddd648a4cd36760639741d1a62649ec6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 481,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23337ae1-7eb8-578f-7ad3-aa8b94f5f332",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66bedbd3-c7f9-eb99-1541-dc6196eaee45",
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
  "slug": "module-injective-of-ringequiv--4f651d6206a9eb9924fdd648",
  "source": {
    "blob": "a6dc775ddd648a4cd36760639741d1a62649ec6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 481,
    "path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variant67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f651d6206a9eb9924fdd648cacd93754436a180703d53aa4a7ba88700773d00",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Injective/Variant67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66bedbd3-c7f9-eb99-1541-dc6196eaee45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–491.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Injective/Variant67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Injective/Variant67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6dc775ddd648a4cd36760639741d1a62649ec6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
