# exists_smodEq_pow_add_one_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cd81f33807254ee6729e94daa32cb3a68807c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6a54f64-6bef-7b46-c601-a210f0e512ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e0192c4-c8b4-6803-8db8-397bfc737957",
  "kind": "theorem",
  "lexical_name": "exists_smodEq_pow_add_one_smul",
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
  "slug": "exists-smodeq-pow-add-one-smul--e912d75a1d16642c0ff3a7ec",
  "source": {
    "blob": "8cd81f33807254ee6729e94daa32cb3a68807c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 374,
    "path": "GRWTSK/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e912d75a1d16642c0ff3a7ec58dd9f92fafe3eb87c05b4b57de19c537b104fba",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e0192c4-c8b4-6803-8db8-397bfc737957`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_smodEq_pow_add_one_smul {f : M →ₗ[R] N}
    (h : Function.Surjective (mkQ (I • ⊤) ∘ₗ f)) {y : N} {n : ℕ}
    (hy : y ∈ (I ^ n • ⊤ : Submodule R N)) :
    ∃ x ∈ (I ^ n • ⊤ : Submodule R M), f x ≡ y [SMOD (I ^ (n + 1) • ⊤ : Submodule R N)] := by
  induction hy using smul_induction_on' with
  | smul r hr y _ =>
    obtain ⟨x, hx⟩ := h (mkQ _ y)
    use r • x, smul_mem_smul hr mem_top
    simp only [coe_comp, Function.comp_apply, mkQ_apply, ← SModEq.def, map_smul] at ⊢ hx
    rw [pow_succ, ← smul_smul]
    exact SModEq.smul' hx hr
  | add y1 hy1 y2 hy2 ih1 ih2 =>
    obtain ⟨x1, hx1, hx1'⟩ := ih1
    obtain ⟨x2, hx2, hx2'⟩ := ih2
    use x1 + x2, add_mem hx1 hx2
    simp only [map_add]
    exact SModEq.add hx1' hx2'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cd81f33807254ee6729e94daa32cb3a68807c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
