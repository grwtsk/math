# pi_nth_prime'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a6b319f-80eb-9f80-d5e6-694432d79576",
  "kind": "lemma",
  "lexical_name": "pi_nth_prime'",
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
  "slug": "pi-nth-prime--f314b01561f382e1fec6fb72",
  "source": {
    "blob": "e5fb4cbe411eb42fc479ab86412000a18dcfc82c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f314b01561f382e1fec6fb72e90b6d6119b5730ce4e2cb401c7abd7fb0b24c4f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a6b319f-80eb-9f80-d5e6-694432d79576`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pi_nth_prime' (n : ℕ) (hn : n ≥ 1) :
    pi (nth_prime' n) = n := by
  have h_pi_eq : pi (nth_prime' n) = Nat.primeCounting (nth_prime' n) := by norm_num [pi]
  have h_prime_counting : primeCounting (nth_prime' n) = count Nat.Prime (nth_prime' n + 1) :=
    add_zero (List.countP.go (fun b ↦ decide (Nat.Prime b)) (List.range (nth_prime' n + 1)) 0)
  have h_count : count Nat.Prime (nth_prime' n) = n - 1 := by
    convert count_nth_of_infinite (infinite_setOf_prime) (n - 1) using 1
  rcases n <;> simp_all [count_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RSPrimeLower/Variantb4e59bb7dc7f5357ac35dbb09211aa22ce98e2d10a4c968a83fbfa2ce7d71c1f.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5fb4cbe411eb42fc479ab86412000a18dcfc82c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
