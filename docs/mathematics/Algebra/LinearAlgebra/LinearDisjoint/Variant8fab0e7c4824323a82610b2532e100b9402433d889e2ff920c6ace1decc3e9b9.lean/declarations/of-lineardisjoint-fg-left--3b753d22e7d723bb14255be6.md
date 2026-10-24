# of_linearDisjoint_fg_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96e33d35-75b5-7744-e216-057892f9e4fe",
  "kind": "theorem",
  "lexical_name": "of_linearDisjoint_fg_left",
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
  "slug": "of-lineardisjoint-fg-left--3b753d22e7d723bb14255be6",
  "source": {
    "blob": "d436ab5ff8b485fdba8a25614cfebb3fd76b78c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 271,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b753d22e7d723bb14255be6e0c356d2e5d1b488fb72b1ea6134605c0772a0a0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96e33d35-75b5-7744-e216-057892f9e4fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_linearDisjoint_fg_left
    (H : ∀ M' : Submodule R S, M' ≤ M → M'.FG → M'.LinearDisjoint N) :
    M.LinearDisjoint N := (linearDisjoint_iff _ _).2 fun x y hxy ↦ by
  obtain ⟨M', hM, hFG, h⟩ :=
    TensorProduct.exists_finite_submodule_left_of_finite' {x, y} (Set.toFinite _)
  rw [Module.Finite.iff_fg] at hFG
  obtain ⟨x', hx'⟩ := h (show x ∈ {x, y} by simp)
  obtain ⟨y', hy'⟩ := h (show y ∈ {x, y} by simp)
  rw [← hx', ← hy']; congr
  exact (H M' hM hFG).injective (by simp [← mulMap_comp_rTensor _ hM, hx', hy', hxy])

/-- If for any finitely generated submodules `N'` of `N`, `M` and `N'` are linearly disjoint,
then `M` and `N` themselves are linearly disjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variant8fab0e7c4824323a82610b2532e100b9402433d889e2ff920c6ace1decc3e9b9.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d436ab5ff8b485fdba8a25614cfebb3fd76b78c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
