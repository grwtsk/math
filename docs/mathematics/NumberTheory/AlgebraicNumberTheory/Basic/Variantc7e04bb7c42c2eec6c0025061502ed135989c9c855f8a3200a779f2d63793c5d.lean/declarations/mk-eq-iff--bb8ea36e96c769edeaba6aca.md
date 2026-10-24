# mk_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "568afd2a17d01d31917937ed1495b1a9c63786fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b958a268-cd74-74d2-09a1-95467c9c81d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19034ae1-505b-72fa-28d9-89007bb6ff02",
  "kind": "theorem",
  "lexical_name": "mk_eq_iff",
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
  "slug": "mk-eq-iff--bb8ea36e96c769edeaba6aca",
  "source": {
    "blob": "568afd2a17d01d31917937ed1495b1a9c63786fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 145,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb8ea36e96c769edeaba6aca013ab06dca193c6064a51f9a72339242cd9537c9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19034ae1-505b-72fa-28d9-89007bb6ff02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_eq_iff {φ ψ : K →+* ℂ} : mk φ = mk ψ ↔ φ = ψ ∨ ComplexEmbedding.conjugate φ = ψ := by
  constructor
  · -- We prove that the map ψ ∘ φ⁻¹ between φ(K) and ℂ is uniform continuous, thus it is either the
    -- inclusion or the complex conjugation using `Complex.uniformContinuous_ringHom_eq_id_or_conj`
    intro h₀
    obtain ⟨j, hiφ⟩ := (φ.injective).hasLeftInverse
    let ι := RingEquiv.ofLeftInverse hiφ
    have hlip : LipschitzWith 1 (RingHom.comp ψ ι.symm.toRingHom) := by
      change LipschitzWith 1 (ψ ∘ ι.symm)
      apply LipschitzWith.of_dist_le_mul
      intro x y
      rw [NNReal.coe_one, one_mul, dist_eq_norm, Function.comp_apply, Function.comp_apply,
        ← map_sub, ← map_sub]
      apply le_of_eq
      suffices ‖φ (ι.symm (x - y))‖ = ‖ψ (ι.symm (x - y))‖ by
        rw [← this, ← RingEquiv.ofLeftInverse_apply hiφ _, RingEquiv.apply_symm_apply ι _,
          dist_eq_norm]
        rfl
      exact congrFun (congrArg (↑) h₀) _
    cases
      Complex.uniformContinuous_ringHom_eq_id_or_conj φ.fieldRange hlip.uniformContinuous with
    | inl h =>
        left; ext1 x
        conv_rhs => rw [← hiφ x]
        exact (congrFun h (ι x)).symm
    | inr h =>
        right; ext1 x
        conv_rhs => rw [← hiφ x]
        exact (congrFun h (ι x)).symm
  · rintro (⟨h⟩ | ⟨h⟩)
    · exact congr_arg mk h
    · rw [← mk_conjugate_eq]
      exact congr_arg mk h

/-- An infinite place `w` of `L / K` lies over the infinite place `v` of `K` if `v` is the
restriction of `w` to `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `568afd2a17d01d31917937ed1495b1a9c63786fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
