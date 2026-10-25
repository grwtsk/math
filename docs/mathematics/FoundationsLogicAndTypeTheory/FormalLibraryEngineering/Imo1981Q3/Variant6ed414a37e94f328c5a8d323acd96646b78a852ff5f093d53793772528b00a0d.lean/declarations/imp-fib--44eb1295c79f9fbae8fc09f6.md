# imp_fib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b0765b4a9cf994d27c5089bf0bf1bd6ea2dfe1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d4c8b06-6270-db8e-86d1-1c1a9930ac5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e04e3c02-6738-7436-236d-7202cf455c29",
  "kind": "theorem",
  "lexical_name": "imp_fib",
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
  "slug": "imp-fib--44eb1295c79f9fbae8fc09f6",
  "source": {
    "blob": "5b0765b4a9cf994d27c5089bf0bf1bd6ea2dfe1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44eb1295c79f9fbae8fc09f64d9c2d2352b1a7b700cfb8ce237b5ee6e6bef602",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e04e3c02-6738-7436-236d-7202cf455c29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imp_fib {n : ℕ} : ∀ m : ℕ, NatPredicate N m n → ∃ k : ℕ, m = fib k ∧ n = fib (k + 1) := by
  refine' Nat.strong_induction_on n _
  intro n h1 m h2
  have h3 : m ≤ n := h2.m_le_n
  obtain (rfl : 1 = n) | (h4 : 1 < n) := (succ_le_iff.mpr h2.n_pos).eq_or_lt
  · use 1
    have h5 : 1 ≤ m := succ_le_iff.mpr h2.m_pos
    simpa [fib_one, fib_two] using (h3.antisymm h5 : m = 1)
  · obtain (rfl : m = n) | (h6 : m < n) := h3.eq_or_lt
    · exact absurd h2.eq_imp_1 (Nat.ne_of_gt h4)
    · have h7 : NatPredicate N (n - m) m := h2.reduction h4
      obtain ⟨k : ℕ, hnm : n - m = fib k, rfl : m = fib (k + 1)⟩ := h1 m h6 (n - m) h7
      use k + 1, rfl
      rw [fib_add_two, ← hnm, tsub_add_cancel_of_le h3]
#align imo1981_q3.nat_predicate.imp_fib Imo1981Q3.NatPredicate.imp_fib

end NatPredicate

/-
Next, we prove that if `N < fib K + fib (K+1)`, then the largest `m` and `n`
satisfying `NatPredicate m n N` are `fib K` and `fib (K+1)`, respectively.
-/
variable {K : ℕ} (HK : N < fib K + fib (K + 1)) {N}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant6ed414a37e94f328c5a8d323acd96646b78a852ff5f093d53793772528b00a0d.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b0765b4a9cf994d27c5089bf0bf1bd6ea2dfe1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
