# sum_Icc_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1f10819-1753-2b76-1144-da9c478e7eb2",
  "kind": "theorem",
  "lexical_name": "sum_Icc_choose",
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
  "slug": "sum-icc-choose--9b538bc6d9f87ba28c1de97a",
  "source": {
    "blob": "48a72b18dd1389212a40252652b9d1709e75bd31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Sum/Variantf62c5d16d9cc154579247cf1f77daa3e0e5ef6c7919b27d949d2753217057dab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b538bc6d9f87ba28c1de97a1fc11ce30719de82a2c8886b2432c9c2433fa3b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Sum/Variantf62c5d16d9cc154579247cf1f77daa3e0e5ef6c7919b27d949d2753217057dab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1f10819-1753-2b76-1144-da9c478e7eb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Icc_choose (n k : ℕ) : ∑ m ∈ Icc k n, m.choose k = (n + 1).choose (k + 1) := by
  rcases lt_or_ge n k with h | h
  · rw [choose_eq_zero_of_lt (by lia), Icc_eq_empty_of_lt h, sum_empty]
  · induction n, h using le_induction with
    | base => simp
    | succ n _ ih =>
      rw [← Ico_insert_right (by lia), sum_insert (by simp), Ico_add_one_right_eq_Icc, ih,
        choose_succ_succ' (n + 1)]

/-- **Zhu Shijie's identity** aka hockey-stick identity, version with `range`.
Summing `(i + k).choose k` for `i ∈ [0, n]` gives `(n + k + 1).choose (k + 1)`.

Combinatorial interpretation: `(i + k).choose k` is the number of decompositions of `[0, i)` in
`k + 1` (possibly empty) intervals (this follows from a stars and bars description). In particular,
`(n + k + 1).choose (k + 1)` corresponds to decomposing `[0, n)` into `k + 2` intervals.
By putting away the last interval (of some length `n - i`),
we have to decompose the remaining interval `[0, i)` into `k + 1` intervals, hence the sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Sum/Variantf62c5d16d9cc154579247cf1f77daa3e0e5ef6c7919b27d949d2753217057dab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Sum/Variantf62c5d16d9cc154579247cf1f77daa3e0e5ef6c7919b27d949d2753217057dab.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48a72b18dd1389212a40252652b9d1709e75bd31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
