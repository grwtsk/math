# mod3_eq_1_or_mod3_eq_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95c7b937b82e0e3ee8f292cdcc1f3db7a063940d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ba3bfe0-8783-5fd8-7af5-77515e63e8a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7499d47-b158-ea47-8b10-c121b6587450",
  "kind": "theorem",
  "lexical_name": "mod3_eq_1_or_mod3_eq_2",
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
  "slug": "mod3-eq-1-or-mod3-eq-2--3a29a8d59610d9ee3eaa1736",
  "source": {
    "blob": "95c7b937b82e0e3ee8f292cdcc1f3db7a063940d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a29a8d59610d9ee3eaa17369101621050f54d225bad37a476834d08d9f58e79",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7499d47-b158-ea47-8b10-c121b6587450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod3_eq_1_or_mod3_eq_2 {a b : ℕ} (h1 : a % 3 = 1 ∨ a % 3 = 2)
    (h2 : b % 3 = a % 3 ∨ b % 3 = 2 * a % 3) : b % 3 = 1 ∨ b % 3 = 2 := by
  rcases h2 with h2 | h2
  · rw [h2]; exact h1
  · rcases h1 with h1 | h1
    · right; simp [h2, mul_mod, h1, Nat.succ_lt_succ]
    · left; simp only [h2, mul_mod, h1, mod_mod]

/-- `count_equiv_one_or_two_mod3_of_derivable` shows any derivable string must have a `count I` that
is 1 or 2 modulo 3.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant4e7da65fb6c1144d3190b9a6ae7d5307a4965307c1770c934e8f755064cc9450.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95c7b937b82e0e3ee8f292cdcc1f3db7a063940d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
