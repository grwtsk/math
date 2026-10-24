# isKInjective_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98f1adf3-89d8-f0a3-3ccb-a536079f565d",
  "kind": "lemma",
  "lexical_name": "isKInjective_of_injective",
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
  "slug": "iskinjective-of-injective--29e981c4fef5a0bc6a683347",
  "source": {
    "blob": "cf88f4838bfd7d37523a4a6af25321741dbf6f71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 141,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/KInjective/Variantd249a9b81ae7d52f19d476acbd6110f7bd7914b7d6458dd55f317fb1127296d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29e981c4fef5a0bc6a6833470ef33f9335a6a0e92708eb197972799a3d7946d0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/KInjective/Variantd249a9b81ae7d52f19d476acbd6110f7bd7914b7d6458dd55f317fb1127296d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98f1adf3-89d8-f0a3-3ccb-a536079f565d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isKInjective_of_injective (L : CochainComplex C ℤ) (d : ℤ)
    [L.IsStrictlyGE d] [∀ (n : ℤ), Injective (L.X n)] :
    L.IsKInjective where
  nonempty_homotopy_zero {K} f hK := by
    /- The strategy of the proof is express the `0`-cocycle in `Cochain K L 0`
    corresponding to `f` as the coboundary of a `-1`-cochain. An approximate
    solution for some `n : ℕ` is an element in the subset `X n` consisting
    of the `-1`-cochains such that `δ (-1) 0 α` coincide with `Cochain.ofHom f`
    up to the degree `n + d - 1`. The assumption on `L` implies that
    the zero `-1`-cochain belongs to `X 0`, and we use the lemma
    `isKInjective_of_injective_aux` in order to get better approximations,
    and we pass to the limit. -/
    let X (n : ℕ) : Set (Cochain K L (-1)) :=
      Set.ofPred (fun α => (δ (-1) 0 α).EqUpTo (Cochain.ofHom f) (n + d - 1))
    let x₀ : X 0 := ⟨0, fun p q hpq hp ↦
      IsZero.eq_of_tgt (L.isZero_of_isStrictlyGE d _ (by lia)) _ _⟩
    let φ (n : ℕ) (α : X n) : X (n + 1) :=
      ⟨_, (isKInjective_of_injective_aux f α.1 (n + d - 1) ((n + 1 : ℕ) + d - 1)
        (by lia) (hK _) α.2).choose_spec⟩
    have hφ (k : ℕ) (x : X k) : (φ k x).1.EqUpTo x.1 (d + k) := fun p q hpq hp => by
      dsimp [φ]
      rw [add_eq_left, Cochain.single_v_eq_zero _ _ _ _ _ (by lia)]
    refine ⟨(Cochain.equivHomotopy f 0).symm ⟨limitSequence φ hφ x₀, ?_⟩⟩
    rw [Cochain.ofHom_zero, add_zero]
    ext n
    let k₀ := (n - d + 1).toNat
    rw [← (sequence φ x₀ k₀).2 n n (add_zero n) (by lia),
      δ_v (-1) 0 (neg_add_cancel 1) _ n n (by lia) (n - 1) (n + 1) rfl (by lia),
      δ_v (-1) 0 (neg_add_cancel 1) _ n n (by lia) (n - 1) (n + 1) rfl (by lia),
      limitSequence_eqUpTo φ hφ x₀ k₀ n (n - 1) (by lia) (by lia),
      limitSequence_eqUpTo φ hφ x₀ k₀ (n + 1) n (by lia) (by lia)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/KInjective/Variantd249a9b81ae7d52f19d476acbd6110f7bd7914b7d6458dd55f317fb1127296d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/KInjective/Variantd249a9b81ae7d52f19d476acbd6110f7bd7914b7d6458dd55f317fb1127296d0.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf88f4838bfd7d37523a4a6af25321741dbf6f71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
