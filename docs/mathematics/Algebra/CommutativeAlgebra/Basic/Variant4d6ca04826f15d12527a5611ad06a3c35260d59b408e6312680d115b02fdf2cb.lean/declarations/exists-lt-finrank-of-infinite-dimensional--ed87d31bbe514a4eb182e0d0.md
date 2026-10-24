# exists_lt_finrank_of_infinite_dimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5e53146-7728-c7ae-87bc-f0af66195d94",
  "kind": "theorem",
  "lexical_name": "exists_lt_finrank_of_infinite_dimensional",
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
  "slug": "exists-lt-finrank-of-infinite-dimensional--ed87d31bbe514a4eb182e0d0",
  "source": {
    "blob": "817fc7e1a7b4a19ad7809ff35259525b53f7b71e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 546,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4d6ca04826f15d12527a5611ad06a3c35260d59b408e6312680d115b02fdf2cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed87d31bbe514a4eb182e0d06ae3dc65f680052bf17e0370bfebedaa5afc85ff",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant4d6ca04826f15d12527a5611ad06a3c35260d59b408e6312680d115b02fdf2cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5e53146-7728-c7ae-87bc-f0af66195d94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_finrank_of_infinite_dimensional
    [Algebra.IsAlgebraic F E] (hnfd : ¬ FiniteDimensional F E) (n : ℕ) :
    ∃ L : IntermediateField F E, FiniteDimensional F L ∧ n < finrank F L := by
  induction n with
  | zero => exact ⟨⊥, Subalgebra.finite_bot, finrank_pos⟩
  | succ n ih =>
    obtain ⟨L, fin, hn⟩ := ih
    obtain ⟨x, hx⟩ : ∃ x : E, x ∉ L := by
      contrapose! hnfd
      rw [show L = ⊤ from eq_top_iff.2 fun x _ ↦ hnfd x] at fin
      exact topEquiv.toLinearEquiv.finiteDimensional
    let L' := L ⊔ F⟮x⟯
    have := adjoin.finiteDimensional (Algebra.IsIntegral.isIntegral (R := F) x)
    refine ⟨L', inferInstance, by_contra fun h ↦ ?_⟩
    have h1 : L = L' := eq_of_le_of_finrank_le le_sup_left ((not_lt.1 h).trans hn)
    have h2 : F⟮x⟯ ≤ L' := le_sup_right
    exact hx <| (h1.symm ▸ h2) <| mem_adjoin_simple_self F x

/-- If `x : L` is an integral element in a field extension `L` over `K`, then the degree of the
  minimal polynomial of `x` over `K` divides `[L : K]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant4d6ca04826f15d12527a5611ad06a3c35260d59b408e6312680d115b02fdf2cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4d6ca04826f15d12527a5611ad06a3c35260d59b408e6312680d115b02fdf2cb.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `817fc7e1a7b4a19ad7809ff35259525b53f7b71e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
