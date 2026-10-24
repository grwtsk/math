# tmul_of_gradedMul_of_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "211f269a90fb27ed9f21b1f73cc890de4be5491d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea7a0840-0b44-eba8-7392-91f8dc45c20e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66ce7557-c1d3-e889-a580-4391d2d1ce5d",
  "kind": "theorem",
  "lexical_name": "tmul_of_gradedMul_of_tmul",
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
  "slug": "tmul-of-gradedmul-of-tmul--71041685175097d8675cdce9",
  "source": {
    "blob": "211f269a90fb27ed9f21b1f73cc890de4be5491d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 189,
    "path": "GRWTSK/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71041685175097d8675cdce95b820e7029d39cad76c81ff8aac70dc4c90b4a04",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66ce7557-c1d3-e889-a580-4391d2d1ce5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmul_of_gradedMul_of_tmul (j₁ i₂ : ι)
    (a₁ : ⨁ i, 𝒜 i) (b₁ : ℬ j₁) (a₂ : 𝒜 i₂) (b₂ : ⨁ i, ℬ i) :
    gradedMul R 𝒜 ℬ (a₁ ⊗ₜ lof R _ ℬ j₁ b₁) (lof R _ 𝒜 i₂ a₂ ⊗ₜ b₂) =
      (-1 : ℤˣ)^(j₁ * i₂) • ((a₁ * lof R _ 𝒜 _ a₂) ⊗ₜ (lof R _ ℬ _ b₁ * b₂)) := by
  rw [gradedMul]
  dsimp only [curry_apply, LinearMap.coe_comp, LinearEquiv.coe_coe, Function.comp_apply, assoc_tmul,
    map_tmul, LinearMap.id_coe, id_eq, assoc_symm_tmul, LinearMap.rTensor_tmul,
    LinearMap.lTensor_tmul]
  rw [mul_comm j₁ i₂, gradedComm_of_tmul_of]
  -- the tower smul lemmas elaborate too slowly
  rw [Units.smul_def, Units.smul_def, ← Int.cast_smul_eq_zsmul R, ← Int.cast_smul_eq_zsmul R]
  -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 had to specialize `map_smul` to avoid timeouts.
  rw [← smul_tmul', LinearEquiv.map_smul, tmul_smul, LinearEquiv.map_smul, LinearMap.map_smul]
  dsimp

variable {R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/External/Variantdd5ca6b8d776bc70b4b45b295d374e671e0a3caa65087602c3e771a674a0e51f.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `211f269a90fb27ed9f21b1f73cc890de4be5491d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
