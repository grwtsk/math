# oldMapIdxCore_append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff27f24f-c1a7-b870-3184-eb9b8b9cd30c",
  "kind": "theorem",
  "lexical_name": "oldMapIdxCore_append",
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
  "slug": "oldmapidxcore-append--b0462f30adfa9ba1ec9cefb7",
  "source": {
    "blob": "68ff6df863d0de4c8f5ee9b5f6c16c2b54511316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 81,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant8581face035ac762bb742cd1f07eb50209bff26d91b999b2ff01d42c8160e307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0462f30adfa9ba1ec9cefb7008cf2b91406b09701a2f88ebca9cde5bb997683",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant8581face035ac762bb742cd1f07eb50209bff26d91b999b2ff01d42c8160e307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff27f24f-c1a7-b870-3184-eb9b8b9cd30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem oldMapIdxCore_append : ∀ (f : ℕ → α → β) (n : ℕ) (l₁ l₂ : List α),
    List.oldMapIdxCore f n (l₁ ++ l₂) =
    List.oldMapIdxCore f n l₁ ++ List.oldMapIdxCore f (n + l₁.length) l₂ := by
  intros f n l₁ l₂
  generalize e : (l₁ ++ l₂).length = len
  revert n l₁ l₂
  induction' len with len ih <;> intros n l₁ l₂ h
  · have l₁_nil : l₁ = [] := by cases l₁; rfl; contradiction
    have l₂_nil : l₂ = [] := by cases l₂; rfl; rw [List.length_append] at h; contradiction
    simp only [l₁_nil, l₂_nil]; rfl
  · cases' l₁ with head tail
    · rfl
    · simp only [List.oldMapIdxCore, List.append_eq, length_cons, cons_append,cons.injEq, true_and]
      suffices : n + Nat.succ (length tail) = n + 1 + tail.length
      { rw [this]
        apply ih (n + 1) _ _ _
        simp only [cons_append, length_cons, length_append, Nat.succ.injEq] at h
        simp only [length_append, h] }
      { rw [Nat.add_assoc]; simp only [Nat.add_comm] }

-- Porting note: new theorem.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant8581face035ac762bb742cd1f07eb50209bff26d91b999b2ff01d42c8160e307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant8581face035ac762bb742cd1f07eb50209bff26d91b999b2ff01d42c8160e307.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68ff6df863d0de4c8f5ee9b5f6c16c2b54511316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
