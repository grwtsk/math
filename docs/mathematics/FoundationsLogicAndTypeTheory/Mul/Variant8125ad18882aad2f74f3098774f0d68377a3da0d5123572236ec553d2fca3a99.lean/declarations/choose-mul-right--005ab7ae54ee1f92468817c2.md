# choose_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bd58dc1-4712-868a-95c4-20e31fd1f73f",
  "kind": "theorem",
  "lexical_name": "choose_mul_right",
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
  "slug": "choose-mul-right--005ab7ae54ee1f92468817c2",
  "source": {
    "blob": "aa5b4be44e4d4eafe201cacf48bac48b0dd17884",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Mul/Variant8125ad18882aad2f74f3098774f0d68377a3da0d5123572236ec553d2fca3a99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:005ab7ae54ee1f92468817c25627dd2b45fc0daa4e4a3225b6beb6db34791953",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Mul/Variant8125ad18882aad2f74f3098774f0d68377a3da0d5123572236ec553d2fca3a99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bd58dc1-4712-868a-95c4-20e31fd1f73f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem choose_mul_right {m n : ℕ} (hn : n ≠ 0) :
    (m * n).choose n = m * (m * n - 1).choose (n - 1) := by
  by_cases hm : m = 0
  · simp only [hm, zero_mul, choose_eq_zero_iff]
    exact Nat.pos_of_ne_zero hn
  · set p := m - 1; have hp : m = p + 1 := (succ_pred_eq_of_ne_zero hm).symm
    simp only [hp]
    rw [add_mul, one_mul, choose_mul_add hn]

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Mul/Variant8125ad18882aad2f74f3098774f0d68377a3da0d5123572236ec553d2fca3a99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Mul/Variant8125ad18882aad2f74f3098774f0d68377a3da0d5123572236ec553d2fca3a99.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa5b4be44e4d4eafe201cacf48bac48b0dd17884` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
