# _root_.GRWTSK.Algebra.LinearAlgebra.InvtSubmodule.Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.LinearEquiv.map_mem_invtSubmodule_conj_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04b9ff28-c0af-39f8-28ea-3603e93524ba",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.InvtSubmodule.Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.LinearEquiv.map_mem_invtSubmodule_conj_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-invtsubmodule-variantf7b64c2ebfb76a063--d40a1eed4ae0af0ad45f0d10",
  "source": {
    "blob": "66089c2afb29a0a10124404d3e761a40f4bc643d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 151,
    "path": "GRWTSK/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d40a1eed4ae0af0ad45f0d107765ad08886d0377c6256f4959d1034375dc71e0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04b9ff28-c0af-39f8-28ea-3603e93524ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma _root_.GRWTSK.Algebra.LinearAlgebra.InvtSubmodule.Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.LinearEquiv.map_mem_invtSubmodule_conj_iff {R M N : Type*} [CommSemiring R]
    [AddCommMonoid M] [Module R M] [AddCommMonoid N] [Module R N] {f : End R M}
    {e : M ≃ₗ[R] N} {p : Submodule R M} :
    p.map e ∈ (e.conj f).invtSubmodule ↔ p ∈ f.invtSubmodule := by
  change p.map e.toLinearMap ∈ _ ↔ _
  have : e.symm.toLinearMap ∘ₗ ((e ∘ₗ f) ∘ₗ e.symm.toLinearMap) ∘ₗ e = f := by ext; simp
  rw [LinearEquiv.conj_apply, mem_invtSubmodule, mem_invtSubmodule, Submodule.map_le_iff_le_comap,
    Submodule.map_equiv_eq_comap_symm, ← Submodule.comap_comp, ← Submodule.comap_comp, this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Invariant/Variant68bda017833a192d22b8704f3d94141a519026551771b5377a635385044651e3.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66089c2afb29a0a10124404d3e761a40f4bc643d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
