# Nat.isSemilinearSet_of_isSlice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e49d2a7-f59c-f463-7e0a-119af5abd51f",
  "kind": "theorem",
  "lexical_name": "Nat.isSemilinearSet_of_isSlice",
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
  "slug": "nat-issemilinearset-of-isslice--5ff5fbe856f2f16eee470e82",
  "source": {
    "blob": "e95208e3ec8ffcc28574b45cda7d44c2cc312c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 148,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ff5fbe856f2f16eee470e82d95fec25080decb4464d6f8876d584ef376dbebc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e49d2a7-f59c-f463-7e0a-119af5abd51f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem Nat.isSemilinearSet_of_isSlice {ι : Type*} [Finite ι] {s : Set (ι → ℕ)}
    (hs : IsSlice s) : IsSemilinearSet s := by
  classical
  suffices h : ∀ (a : ι → ℕ) (t : Finset ι), (∀ x ∈ s, ∀ i ∉ t, x i = a i) → IsSemilinearSet s by
    have := Fintype.ofFinite ι
    exact h 0 Finset.univ (by simp)
  intro a t ht
  induction t using Finset.strongInductionOn generalizing s a with | _ t ih
  obtain rfl | hs' := s.eq_empty_or_nonempty
  · exact .empty
  rcases hs.exists_isSemilinearSet_setOfPred_le hs' with ⟨x, hx, hx'⟩
  convert_to IsSemilinearSet ({ y ∈ s | x ≤ y } ∪ ⋃ i ∈ t, ⋃ j ∈ Finset.range (x i),
    { y ∈ s | y i = j })
  · ext y
    simp only [Finset.mem_range, mem_union, mem_ofPred_eq, mem_iUnion, Pi.le_def]
    grind
  · refine hx'.union (.biUnion_finset fun i hi => .biUnion_finset fun j hj => ?_)
    simp only [Finset.mem_range] at hj
    apply ih _ (Finset.erase_ssubset hi) (hs.sep_apply_eq _ _) (Function.update a i j)
    grind [Function.update]

/-! ### Semilinearity of linear equations and preimages -/

variable {M N ι κ : Type*} [AddCommMonoid M] [AddCommMonoid N] {s s₁ s₂ : Set M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95208e3ec8ffcc28574b45cda7d44c2cc312c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
