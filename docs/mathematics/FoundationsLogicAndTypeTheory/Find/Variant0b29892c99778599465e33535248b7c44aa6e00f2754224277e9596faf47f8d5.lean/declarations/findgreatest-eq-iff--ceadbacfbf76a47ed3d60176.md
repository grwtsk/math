# findGreatest_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:650c6752-e63c-f807-31ff-f32080190d8f",
  "kind": "lemma",
  "lexical_name": "findGreatest_eq_iff",
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
  "slug": "findgreatest-eq-iff--ceadbacfbf76a47ed3d60176",
  "source": {
    "blob": "9d0691ea38d3efcee716360991dc69f9be6f56c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 192,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ceadbacfbf76a47ed3d60176c8334e64a917bf2e65dd83db81e2b23301b97f5c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:650c6752-e63c-f807-31ff-f32080190d8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma findGreatest_eq_iff :
    Nat.findGreatest P k = m ↔ m ≤ k ∧ (m ≠ 0 → P m) ∧ ∀ ⦃n⦄, m < n → n ≤ k → ¬P n := by
  induction k generalizing m with
  | zero =>
    rw [eq_comm, Iff.comm]
    simp only [Nat.le_zero, ne_eq, findGreatest_zero, and_iff_left_iff_imp]
    rintro rfl
    exact ⟨fun h ↦ (h rfl).elim, fun n hlt heq ↦ by lia⟩
  | succ k ihk =>
    by_cases hk : P (k + 1)
    · rw [findGreatest_eq hk]
      constructor
      · rintro rfl
        exact ⟨le_refl _, fun _ ↦ hk, fun n hlt hle ↦ by lia⟩
      · rintro ⟨hle, h0, hm⟩
        rcases Decidable.lt_or_eq_of_le hle with hlt | rfl
        exacts [(hm hlt (le_refl _) hk).elim, rfl]
    · rw [findGreatest_of_not hk, ihk]
      grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant0b29892c99778599465e33535248b7c44aa6e00f2754224277e9596faf47f8d5.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d0691ea38d3efcee716360991dc69f9be6f56c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
