# Projective.of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02c321ad3fb9135cff54a6eea621cce367ce0052",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d392c8f-6d0f-5d9f-3d4d-b155a99b7dbf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0070c334-852c-cdb1-5cd8-7382c0d0eba7",
  "kind": "theorem",
  "lexical_name": "Projective.of_equiv",
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
  "slug": "projective-of-equiv--cb6a55e1ac4333a32d156895",
  "source": {
    "blob": "02c321ad3fb9135cff54a6eea621cce367ce0052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 173,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variant8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb6a55e1ac4333a32d1568959b812f971aec639f07db4ac79b00ad4d61feaf76",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projective/Variant8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0070c334-852c-cdb1-5cd8-7382c0d0eba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Projective.of_equiv {R S} [Semiring R] [Semiring S] {M N}
    [AddCommMonoid M] [AddCommMonoid N] [Module R M] [Module S N]
    {σ : R →+* S} {σ' : S →+* R} [RingHomInvPair σ σ'] [RingHomInvPair σ' σ]
    (e₂ : M ≃ₛₗ[σ] N)
    [Projective R M] : Projective S N := by
  let e₁ : R ≃+* S := RingHomInvPair.toRingEquiv σ σ'
  obtain ⟨f, hf⟩ := ‹Projective R M›
  let g : N →ₗ[S] N →₀ S :=
  { toFun := fun x ↦ (equivCongrLeft e₂ (f (e₂.symm x))).mapRange e₁ e₁.map_zero
    map_add' := fun x y ↦ by ext; simp
    map_smul' := fun r v ↦ by ext i; simp [e₁, e₂.symm.map_smulₛₗ] }
  refine ⟨⟨g, fun x ↦ ?_⟩⟩
  replace hf := congr(e₂ $(hf (e₂.symm x)))
  simpa [linearCombination_apply, sum_mapRange_index, g, map_finsuppSum, e₂.map_smulₛₗ] using! hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projective/Variant8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projective/Variant8709ac0f99ad75ab33458c608297145d7afc86cec66c2fb03a0167ff7f6c137e.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02c321ad3fb9135cff54a6eea621cce367ce0052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
