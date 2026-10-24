# Module.basisOfFiniteTypeTorsionFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7535701ccf4415370453772b717cd5d2a88948bbfa84629a1887c2b549f2f8a0",
  "kind": "def",
  "lexical_name": "Module.basisOfFiniteTypeTorsionFree",
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
  "slug": "module-basisoffinitetypetorsionfree--6abec7316beebd9a171fe1db",
  "source": {
    "blob": "8c284aafc68f2b9cece419f573a69894a4e43e67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 336,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6abec7316beebd9a171fe1db6d0c0b0c907d9b20e2c301e10efca9b3926d07be",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7535701ccf4415370453772b717cd5d2a88948bbfa84629a1887c2b549f2f8a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Module.basisOfFiniteTypeTorsionFree [Fintype ι] {s : ι → M}
    (hs : span R (range s) = ⊤) [IsTorsionFree R M] : Σ n : ℕ, Basis (Fin n) R M := by
  classical
    -- We define `N` as the submodule spanned by a maximal linear independent subfamily of `s`
    have := exists_maximal_linearIndepOn R s
    let I : Set ι := this.choose
    obtain
      ⟨indepI : LinearIndependent R (s ∘ (fun x => x) : I → M), hI :
        ∀ i ∉ I, ∃ a : R, a ≠ 0 ∧ a • s i ∈ span R (s '' I)⟩ :=
      this.choose_spec
    let N := span R (range <| (s ∘ (fun x => x) : I → M))
    -- same as `span R (s '' I)` but more convenient
    let _sI : I → N := fun i ↦ ⟨s i.1, subset_span (mem_range_self i)⟩
    -- `s` restricted to `I` is a basis of `N`
    let sI_basis : Basis I R N := Basis.span indepI
    -- Our first goal is to build `A ≠ 0` such that `A • M ⊆ N`
    have exists_a : ∀ i : ι, ∃ a : R, a ≠ 0 ∧ a • s i ∈ N := by
      intro i
      by_cases hi : i ∈ I
      · use 1, zero_ne_one.symm
        rw [one_smul]
        exact subset_span (mem_range_self (⟨i, hi⟩ : I))
      · simpa [image_eq_range s I] using! hI i hi
    choose a ha ha' using exists_a
    let A := ∏ i, a i
    have hA : A ≠ 0 := by
      rw [Finset.prod_ne_zero_iff]
      simpa using! ha
    -- `M ≃ A • M` because `M` is torsion free and `A ≠ 0`
    let φ : M →ₗ[R] M := LinearMap.lsmul R M A
    have : LinearMap.ker φ = ⊥ := LinearMap.ker_lsmul hA
    let ψ := LinearEquiv.ofInjective φ (LinearMap.ker_eq_bot.mp this)
    have : LinearMap.range φ ≤ N := by
      -- as announced, `A • M ⊆ N`
      suffices ∀ i, φ (s i) ∈ N by
        rw [LinearMap.range_eq_map, ← hs, map_span_le]
        rintro _ ⟨i, rfl⟩
        apply this
      intro i
      calc
        (∏ j ∈ {i}ᶜ, a j) • a i • s i ∈ N := N.smul_mem _ (ha' i)
        _ = (∏ j, a j) • s i := by rw [Fintype.prod_eq_prod_compl_mul i, mul_smul]
    -- Since a submodule of a free `R`-module is free, we get that `A • M` is free
    obtain ⟨n, b : Basis (Fin n) R (LinearMap.range φ)⟩ := Submodule.basisOfPidOfLE this sI_basis
    -- hence `M` is free.
    exact ⟨n, b.map ψ.symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c284aafc68f2b9cece419f573a69894a4e43e67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
