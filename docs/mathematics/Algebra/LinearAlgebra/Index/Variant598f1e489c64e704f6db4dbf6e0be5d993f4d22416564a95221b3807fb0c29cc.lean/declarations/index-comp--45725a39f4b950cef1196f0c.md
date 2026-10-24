# index_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0452c5c9-ce86-a0f9-b5cf-0c8a63836111",
  "kind": "lemma",
  "lexical_name": "index_comp",
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
  "slug": "index-comp--45725a39f4b950cef1196f0c",
  "source": {
    "blob": "65314b1c9412d1667680e45ead8b4067c4de0a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 114,
    "path": "GRWTSK/Algebra/LinearAlgebra/Index/Variant598f1e489c64e704f6db4dbf6e0be5d993f4d22416564a95221b3807fb0c29cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45725a39f4b950cef1196f0cf996e633eab9b78aed310b4d185b2a45938091a6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Index/Variant598f1e489c64e704f6db4dbf6e0be5d993f4d22416564a95221b3807fb0c29cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0452c5c9-ce86-a0f9-b5cf-0c8a63836111`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] public lemma index_comp {P : Type*} [AddCommGroup P] [Module k P]
    (g : N →ₗ[k] P) (f : M →ₗ[k] N)
    [FiniteDimensional k f.ker] [FiniteDimensional k g.ker]
    [FiniteDimensional k (N ⧸ f.range)] [FiniteDimensional k (P ⧸ g.range)] :
    (g ∘ₗ f).index = g.index + f.index := by
  -- `0 → f.ker → (g ∘ₗ f).ker → g.ker → f.coker → (g ∘ₗ f).coker → g.coker → 0`
  have aux : f.range ≤ comap g (g ∘ₗ f).range := by rw [← map_le_iff_le_comap, range_comp]
  let f₀ : f.ker →ₗ[k] (g ∘ₗ f).ker := inclusion <| ker_le_ker_comp f g
  let f₁ : (g ∘ₗ f).ker →ₗ[k] g.ker := f.restrict <| by simp
  let f₂ : g.ker →ₗ[k] N ⧸ f.range := f.range.mkQ ∘ₗ g.ker.subtype
  let f₃ : (N ⧸ f.range) →ₗ[k] P ⧸ (g ∘ₗ f).range := f.range.mapQ (g ∘ₗ f).range g aux
  let f₄ : (P ⧸ (g ∘ₗ f).range) →ₗ[k] P ⧸ g.range := factor <| range_comp_le_range f g
  have h₀ : Injective f₀ := inclusion_injective _
  have h₁ : Exact f₀ f₁ := by rw [exact_iff]; simp [f₀, f₁, ker_restrict, range_inclusion]
  have h₂ : Exact f₁ f₂ := by rw [exact_iff]; simp [f₁, f₂, ker_comp, map_comap_eq]
  have h₃ : Exact f₂ f₃ := by rw [exact_iff]; simp [f₂, f₃, range_comp, ker_mapQ, comap_map_eq]
  have h₄ : Exact f₃ f₄ := by rw [exact_iff]; simp [f₃, f₄, factor, ker_mapQ, range_mapQ]
  have h₅ : Surjective f₄ := factor_surjective _
  have : FiniteDimensional k (g ∘ₗ f).ker := by rw [ker_comp]; infer_instance
  have : FiniteDimensional k (P ⧸ (g ∘ₗ f).range) := by rw [range_comp]; infer_instance
  grind [index, sum_neg_one_pow_finrank_eq_zero_of_exact_six f₀ f₁ f₂ f₃ f₄ h₀ h₁ h₂ h₃ h₄ h₅]

end DivisionRing

section Field

variable {k : Type*} [Field k] [Module k M] [Module k N] {f : M →ₗ[k] N}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Index/Variant598f1e489c64e704f6db4dbf6e0be5d993f4d22416564a95221b3807fb0c29cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Index/Variant598f1e489c64e704f6db4dbf6e0be5d993f4d22416564a95221b3807fb0c29cc.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65314b1c9412d1667680e45ead8b4067c4de0a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
