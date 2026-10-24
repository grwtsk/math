# generator_maximal_submoduleImage_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5afef672f3b4238f35d3d69c040cb35f1afe227",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/caa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c75e1024-b137-9be8-be06-1378af723d38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8266989f-78bb-163b-4799-6579353ece5a",
  "kind": "theorem",
  "lexical_name": "generator_maximal_submoduleImage_dvd",
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
  "slug": "generator-maximal-submoduleimage-dvd--34be6ed1739c088c39bc572b",
  "source": {
    "blob": "b5afef672f3b4238f35d3d69c040cb35f1afe227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34be6ed1739c088c39bc572b3897867fcc10e084c152638e1ed7c2de8bd0a435",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8266989f-78bb-163b-4799-6579353ece5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generator_maximal_submoduleImage_dvd {N O : Submodule R M} (hNO : N ≤ O) {ϕ : O →ₗ[R] R}
    (hϕ : ∀ ψ : O →ₗ[R] R, ¬ϕ.submoduleImage N < ψ.submoduleImage N)
    [(ϕ.submoduleImage N).IsPrincipal] (y : M) (yN : y ∈ N)
    (ϕy_eq : ϕ ⟨y, hNO yN⟩ = generator (ϕ.submoduleImage N)) (ψ : O →ₗ[R] R) :
    generator (ϕ.submoduleImage N) ∣ ψ ⟨y, hNO yN⟩ := by
  let a : R := generator (ϕ.submoduleImage N)
  let d : R := IsPrincipal.generator (Submodule.span R {a, ψ ⟨y, hNO yN⟩})
  have d_dvd_left : d ∣ a := (mem_iff_generator_dvd _).mp (subset_span (mem_insert _ _))
  have d_dvd_right : d ∣ ψ ⟨y, hNO yN⟩ :=
    (mem_iff_generator_dvd _).mp (subset_span (mem_insert_of_mem _ (mem_singleton _)))
  refine' dvd_trans _ d_dvd_right
  rw [dvd_generator_iff, Ideal.span, ←
    span_singleton_generator (Submodule.span R {a, ψ ⟨y, hNO yN⟩})]
  obtain ⟨r₁, r₂, d_eq⟩ : ∃ r₁ r₂ : R, d = r₁ * a + r₂ * ψ ⟨y, hNO yN⟩ := by
    obtain ⟨r₁, r₂', hr₂', hr₁⟩ :=
      mem_span_insert.mp (IsPrincipal.generator_mem (Submodule.span R {a, ψ ⟨y, hNO yN⟩}))
    obtain ⟨r₂, rfl⟩ := mem_span_singleton.mp hr₂'
    exact ⟨r₁, r₂, hr₁⟩
  let ψ' : O →ₗ[R] R := r₁ • ϕ + r₂ • ψ
  have : span R {d} ≤ ψ'.submoduleImage N := by
    rw [span_le, singleton_subset_iff, SetLike.mem_coe, LinearMap.mem_submoduleImage_of_le hNO]
    refine' ⟨y, yN, _⟩
    change r₁ * ϕ ⟨y, hNO yN⟩ + r₂ * ψ ⟨y, hNO yN⟩ = d
    rw [d_eq, ϕy_eq]
  refine'
    le_antisymm (this.trans (le_of_eq _)) (Ideal.span_singleton_le_span_singleton.mpr d_dvd_left)
  rw [span_singleton_generator]
  apply (le_trans _ this).eq_of_not_gt (hϕ ψ')
  rw [← span_singleton_generator (ϕ.submoduleImage N)]
  exact Ideal.span_singleton_le_span_singleton.mpr d_dvd_left
  · exact subset_span (mem_insert _ _)
#align generator_maximal_submodule_image_dvd generator_maximal_submoduleImage_dvd

/-- The induction hypothesis of `Submodule.basisOfPid` and `Submodule.smithNormalForm`.

Basically, it says: let `N ≤ M` be a pair of submodules, then we can find a pair of
submodules `N' ≤ M'` of strictly smaller rank, whose basis we can extend to get a basis
of `N` and `M`. Moreover, if the basis for `M'` is up to scalars a basis for `N'`,
then the basis we find for `M` is up to scalars a basis for `N`.

For `basis_of_pid` we only need the first half and can fix `M = ⊤`,
for `smith_normal_form` we need the full statement,
but must also feed in a basis for `M` using `basis_of_pid` to keep the induction going.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5afef672f3b4238f35d3d69c040cb35f1afe227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
