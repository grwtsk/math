# exists_extension_of_le_sublinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ef9f9aa0afb7e955491159007a3c85d0622bd48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90985bb5-606d-719a-ffb6-ff9ed5a2b3d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01409c15-7cd9-2c71-dc32-c2da32d6ee22",
  "kind": "theorem",
  "lexical_name": "exists_extension_of_le_sublinear",
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
  "slug": "exists-extension-of-le-sublinear--b740588ebc4b7e6945a1d2c9",
  "source": {
    "blob": "2ef9f9aa0afb7e955491159007a3c85d0622bd48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 154,
    "path": "GRWTSK/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b740588ebc4b7e6945a1d2c916b759f1e5ee5aee6e7cfd73ec0fb6fe86070b86",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01409c15-7cd9-2c71-dc32-c2da32d6ee22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_extension_of_le_sublinear (f : E →ₗ.[ℝ] ℝ) (N : E → ℝ)
    (N_hom : ∀ c : ℝ, 0 < c → ∀ x, N (c • x) = c * N x) (N_add : ∀ x y, N (x + y) ≤ N x + N y)
    (hf : ∀ x : f.domain, f x ≤ N x) :
    ∃ g : E →ₗ[ℝ] ℝ, (∀ x : f.domain, g x = f x) ∧ ∀ x, g x ≤ N x := by
  let s : ConvexCone ℝ (E × ℝ) :=
    { carrier := { p : E × ℝ | N p.1 ≤ p.2 }
      smul_mem' := fun c hc p hp =>
        calc
          N (c • p.1) = c * N p.1 := N_hom c hc p.1
          _ ≤ c * p.2 := mul_le_mul_of_nonneg_left hp hc.le
      add_mem' := fun x hx y hy => (N_add _ _).trans (add_le_add hx hy) }
  set f' := (-f).coprod (LinearMap.id.toPMap ⊤)
  have hf'_nonneg : ∀ x : f'.domain, x.1 ∈ s → 0 ≤ f' x := fun x (hx : N x.1.1 ≤ x.1.2) ↦ by
    simpa [f'] using le_trans (hf ⟨x.1.1, x.2.1⟩) hx
  have hf'_dense : ∀ y : E × ℝ, ∃ x : f'.domain, ↑x + y ∈ s := by
    rintro ⟨x, y⟩
    refine ⟨⟨(0, N x - y), ⟨f.domain.zero_mem, trivial⟩⟩, ?_⟩
    simp only [s, ConvexCone.mem_mk, mem_setOf_eq, Prod.fst_add, Prod.snd_add, zero_add,
      sub_add_cancel, le_rfl]
  obtain ⟨g, g_eq, g_nonneg⟩ := riesz_extension s f' hf'_nonneg hf'_dense
  replace g_eq : ∀ (x : f.domain) (y : ℝ), g (x, y) = y - f x := fun x y ↦
    (g_eq ⟨(x, y), ⟨x.2, trivial⟩⟩).trans (sub_eq_neg_add _ _).symm
  refine ⟨-g.comp (inl ℝ E ℝ), fun x ↦ ?_, fun x ↦ ?_⟩
  · simp [g_eq x 0]
  · calc -g (x, 0) = g (0, N x) - g (x, N x) := by simp [← map_sub, ← map_neg]
      _ = N x - g (x, N x) := by simpa using g_eq 0 (N x)
      _ ≤ N x := by simpa using g_nonneg ⟨x, N x⟩ (le_refl (N x))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Extension/Variant87ce9cea57f104d92e7b7aaa2924cc70c8e316ba8153a77a9dc34fff766fdaa8.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef9f9aa0afb7e955491159007a3c85d0622bd48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
