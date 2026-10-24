# eq_mk_of_is_sol_of_eq_init

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2beb4f2e24e0ea1788212c52e6bfe10abab4508",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbe77a6f-815d-3c95-ceec-9dcd2435191f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49d9819e-6fc2-fdcc-1c3b-8ba62b831cc2",
  "kind": "theorem",
  "lexical_name": "eq_mk_of_is_sol_of_eq_init",
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
  "slug": "eq-mk-of-is-sol-of-eq-init--97793a2ef96309b6fabe0caa",
  "source": {
    "blob": "a2beb4f2e24e0ea1788212c52e6bfe10abab4508",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 100,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97793a2ef96309b6fabe0caab269f7423736f4852d7e03ba2171fc25df6001a1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49d9819e-6fc2-fdcc-1c3b-8ba62b831cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_mk_of_is_sol_of_eq_init {u : ℕ → α} {init : Fin E.order → α} (h : E.IsSolution u)
    (heq : ∀ n : Fin E.order, u n = init n) : ∀ n, u n = E.mkSol init n := by
  intro n
  rw [mkSol]
  split_ifs with h'
  · exact_mod_cast heq ⟨n, h'⟩
  simp only
  rw [← tsub_add_cancel_of_le (le_of_not_lt h'), h (n - E.order)]
  congr with k
  have : n - E.order + k < n := by
    rw [add_comm, ← add_tsub_assoc_of_le (not_lt.mp h'), tsub_lt_iff_left]
    · exact add_lt_add_right k.is_lt n
    · convert add_le_add (zero_le (k : ℕ)) (not_lt.mp h')
      simp only [zero_add]
  rw [eq_mk_of_is_sol_of_eq_init h heq (n - E.order + k)]
  simp
#align linear_recurrence.eq_mk_of_is_sol_of_eq_init LinearRecurrence.eq_mk_of_is_sol_of_eq_init

/-- If `u` is a solution to `E` and `init` designates its first `E.order` values,
  then `u = E.mkSol init`. This proves that `E.mkSol init` is the only solution
  of `E` whose first `E.order` values are given by `init`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/LinearRecurrence/Variant7650342a1b32bbbe58d87a748cd99d340d7d3566afe667f232e91a6d79e95f8e.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2beb4f2e24e0ea1788212c52e6bfe10abab4508` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
