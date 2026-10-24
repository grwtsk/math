# source_zero_fiber_jacobson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70b38f84e7a7578eaf3199b8ca09adc193e2bb7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7bff94a-5014-7080-7692-a4735963ce5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bca7ae7-4a82-1d2c-4f7b-bb5b401e0c73",
  "kind": "theorem",
  "lexical_name": "source_zero_fiber_jacobson",
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
  "slug": "source-zero-fiber-jacobson--17d81a300c97875999daab8e",
  "source": {
    "blob": "70b38f84e7a7578eaf3199b8ca09adc193e2bb7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864SourceZeroCharac/Variant4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17d81a300c97875999daab8e64e48467c0fe54de4f79821ec7cc11455fd3648e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864SourceZeroCharac/Variant4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bca7ae7-4a82-1d2c-4f7b-bb5b401e0c73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_zero_fiber_jacobson (A : ℝ) :
    Ring.jacobson (LowerPowerZeroFiber A) = lowerPowerInfinitesimalIdeal A := by
  apply le_antisymm
  · intro x hx
    change ∀ n, x n ∈ Ring.jacobson CharacteristicOne
    intro n
    let e : LowerPowerZeroFiber A →ₐ[ℂ] ℂ :=
      observeOne.comp (Pi.evalAlgHom ℂ (fun _ : LowerPowerLabel A ↦ CharacteristicOne) n)
    have he : Function.Surjective e := by
      intro z
      obtain ⟨t, ht⟩ := observe_one_surjective z
      exact ⟨fun _ ↦ t, ht⟩
    let : (RingHom.ker e.toRingHom).IsMaximal :=
      RingHom.ker_isMaximal_of_surjective e.toRingHom he
    have hx' := Ring.jacobson_le_of_isMaximal (RingHom.ker e.toRingHom) hx
    rw [← observe_one_ker_eq_jacobson, RingHom.mem_ker]
    exact RingHom.mem_ker.mp hx'
  · intro x hx
    have hs : x ^ 2 = 0 := by
      funext n
      exact observe_one_kernel_square_zero
        ((observe_one_ker_eq_jacobson.symm ▸ hx n))
    rw [← Ideal.jacobson_bot]
    exact Ideal.radical_le_jacobson (mem_nilradical.mpr ⟨2, hs⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864SourceZeroCharac/Variant4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864SourceZeroCharac/Variant4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70b38f84e7a7578eaf3199b8ca09adc193e2bb7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
