# exists_extension_of_le_sublinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 830,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59350c80-7d5e-c557-aa6b-3ec34a78a89e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eaf66a04-95e7-b3c6-f6f5-73805e4cbd79",
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
  "slug": "exists-extension-of-le-sublinear--7544b50973b81fbf81fb6271",
  "source": {
    "blob": "711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 857,
    "line": 830,
    "path": "GRWTSK/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7544b50973b81fbf81fb627114678f73c25e7dd272afc2c63aa658029cdfd4ce",
  "verification": {
    "reference": "docs/verification/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaf66a04-95e7-b3c6-f6f5-73805e4cbd79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 830–857.

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
    simpa using le_trans (hf ⟨x.1.1, x.2.1⟩) hx
  have hf'_dense : ∀ y : E × ℝ, ∃ x : f'.domain, ↑x + y ∈ s
  · rintro ⟨x, y⟩
    refine' ⟨⟨(0, N x - y), ⟨f.domain.zero_mem, trivial⟩⟩, _⟩
    simp only [ConvexCone.mem_mk, mem_setOf_eq, Prod.fst_add, Prod.snd_add, zero_add,
      sub_add_cancel, le_rfl]
  obtain ⟨g, g_eq, g_nonneg⟩ := riesz_extension s f' hf'_nonneg hf'_dense
  replace g_eq : ∀ (x : f.domain) (y : ℝ), g (x, y) = y - f x := fun x y ↦
    (g_eq ⟨(x, y), ⟨x.2, trivial⟩⟩).trans (sub_eq_neg_add _ _).symm
  refine ⟨-g.comp (inl ℝ E ℝ), fun x ↦ ?_, fun x ↦ ?_⟩
  · simp [g_eq x 0]
  · calc -g (x, 0) = g (0, N x) - g (x, N x) := by simp [← map_sub, ← map_neg]
      _ = N x - g (x, N x) := by simpa using g_eq 0 (N x)
      _ ≤ N x := by simpa using g_nonneg ⟨x, N x⟩ (le_refl (N x))
#align exists_extension_of_le_sublinear exists_extension_of_le_sublinear
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Basic/Variant45b53ddf24b7da8e40eeff554a2d4504c37099b1d27764204416b8374e489033.lean#L830).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `711eb1d745e7a6a78efe8b8e24ddd59fe4e5894f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
