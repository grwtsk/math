# exists_extension_of_le_sublinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f534532-9cb6-1498-4f08-218359d243b9",
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
  "slug": "exists-extension-of-le-sublinear--8e00e9cad3fde24dcfb5f7e2",
  "source": {
    "blob": "8abc557955f3c70204410bc5d31466451fe457fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 167,
    "path": "GRWTSK/Algebra/LinearAlgebra/Extension/Variantad5884e5c9b4506a773bf6fc7d87dcbcd9bcb6b95f797cd5f601f03884064221.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e00e9cad3fde24dcfb5f7e2242e1458ae74a484db776096c3ace6f13ccf2d74",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Extension/Variantad5884e5c9b4506a773bf6fc7d87dcbcd9bcb6b95f797cd5f601f03884064221.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f534532-9cb6-1498-4f08-218359d243b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_extension_of_le_sublinear (f : E →ₗ.[ℝ] ℝ) (N : E → ℝ)
    (N_hom : ∀ c : ℝ, 0 < c → ∀ x, N (c • x) = c * N x) (N_add : ∀ x y, N (x + y) ≤ N x + N y)
    (hf : ∀ x : f.domain, f x ≤ N x) :
    ∃ g : E →ₗ[ℝ] ℝ, (∀ x : f.domain, g x = f x) ∧ ∀ x, g x ≤ N x := by
  have N_0 : N 0 = 0 := by grind [N_hom 2 (by norm_num) 0, smul_zero]
  let s : PointedCone ℝ (E × ℝ) :=
    { carrier := { p : E × ℝ | N p.1 ≤ p.2 }
      zero_mem' := by simp [N_0]
      smul_mem' := fun ⟨_, hc⟩ _ _ => by rcases eq_or_lt_of_le' hc <;> simp_all
      add_mem' := fun hx hy => (N_add _ _).trans (add_le_add hx hy) }
  set f' := (-f).coprod (LinearMap.id.toPMap ⊤)
  have hf'_nonneg : ∀ x : f'.domain, x.1 ∈ s → 0 ≤ f' x := fun x (hx : N x.1.1 ≤ x.1.2) ↦ by
    simpa [f'] using le_trans (hf ⟨x.1.1, x.2.1⟩) hx
  have hf'_dense : ∀ y : E × ℝ, ∃ x : f'.domain, ↑x + y ∈ s := by
    rintro ⟨x, y⟩
    exact ⟨⟨(0, N x - y), ⟨f.domain.zero_mem, trivial⟩⟩, by simp [s]⟩
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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Extension/Variantad5884e5c9b4506a773bf6fc7d87dcbcd9bcb6b95f797cd5f601f03884064221.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Extension/Variantad5884e5c9b4506a773bf6fc7d87dcbcd9bcb6b95f797cd5f601f03884064221.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8abc557955f3c70204410bc5d31466451fe457fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
