# initial_run

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7b71f7d822fccafd5eca181717f14ce8a4d4317",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28bfe1c8-795d-0f0b-6cab-046e93c90c12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e07b4c98-e8a7-4352-24ee-b89360cca7a2",
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
  "slug": "initial-run--cfeb14dd742a11fe654ef23d",
  "source": {
    "blob": "d7b71f7d822fccafd5eca181717f14ce8a4d4317",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 222,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfeb14dd742a11fe654ef23d73897b0d36e513956ab6a76bf65d85bd88b7c5a1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e07b4c98-e8a7-4352-24ee-b89360cca7a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–259.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b71f7d822fccafd5eca181717f14ce8a4d4317` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
