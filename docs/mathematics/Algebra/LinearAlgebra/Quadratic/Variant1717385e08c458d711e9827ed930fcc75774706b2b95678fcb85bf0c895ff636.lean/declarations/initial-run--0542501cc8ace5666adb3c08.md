# initial_run

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16f37c14-5523-2e29-9025-14414ab7bf2e",
  "kind": "theorem",
  "lexical_name": "initial_run",
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
  "slug": "initial-run--0542501cc8ace5666adb3c08",
  "source": {
    "blob": "40fcd297ecdfe347f54d9a9a0a47d2820827643e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 230,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0542501cc8ace5666adb3c08e8d33831a299d3db1e6313ce4606acb24fef39f1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16f37c14-5523-2e29-9025-14414ab7bf2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem initial_run {n : ℕ} (r s : Fin (n + 1) ↪o ℕ) :
    (∀ i, r i = r 0 + i.val ∧ s i = s 0 + i.val) ∨
      ∃ (l : ℕ) (hl : l < n + 1), 0 < l ∧
        (∀ i : Fin l,
          r ⟨i.val, by omega⟩ = r 0 + i.val ∧
          s ⟨i.val, by omega⟩ = s 0 + i.val) ∧
        (r 0 + l < r ⟨l, hl⟩ ∨ s 0 + l < s ⟨l, hl⟩) := by
  classical
  by_cases hall : ∀ i, r i = r 0 + i.val ∧ s i = s 0 + i.val
  · exact Or.inl hall
  · right
    have hex : ∃ l, ∃ hl : l < n + 1,
        ¬ (r ⟨l, hl⟩ = r 0 + l ∧ s ⟨l, hl⟩ = s 0 + l) := by
      obtain ⟨i, hi⟩ := not_forall.mp hall
      exact ⟨i.val, i.isLt, hi⟩
    have hminimal : ∃ l,
        (∃ hl : l < n + 1,
          ¬ (r ⟨l, hl⟩ = r 0 + l ∧ s ⟨l, hl⟩ = s 0 + l)) ∧
        ∀ m, m < l → ¬ (∃ hm : m < n + 1,
          ¬ (r ⟨m, hm⟩ = r 0 + m ∧ s ⟨m, hm⟩ = s 0 + m)) :=
      ⟨Nat.find hex, Nat.find_spec hex, fun m hm => Nat.find_min hex hm⟩
    obtain ⟨l, ⟨hl, hbad⟩, hmin⟩ := hminimal
    have hl0 : 0 < l := by
      by_contra hn
      have he : l = 0 := by omega
      subst l
      simp at hbad
    refine ⟨l, hl, hl0, ?_, ?_⟩
    · intro i
      by_contra hi
      exact hmin i.val i.isLt ⟨by omega, hi⟩
    · have hr := selection_lower r ⟨l, hl⟩
      have hs := selection_lower s ⟨l, hl⟩
      dsimp at hr hs
      omega

/-- All ordered minors are nonnegative when c and the needed continuants are.
This is the universal arbitrary-position band-two reduction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fcd297ecdfe347f54d9a9a0a47d2820827643e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
