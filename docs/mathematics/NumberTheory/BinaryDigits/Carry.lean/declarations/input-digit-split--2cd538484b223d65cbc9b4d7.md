# input_digit_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5435099-07ab-41a2-34c8-c2f70ac83c8b",
  "kind": "theorem",
  "lexical_name": "input_digit_split",
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
  "slug": "input-digit-split--2cd538484b223d65cbc9b4d7",
  "source": {
    "blob": "c17d116861d36c4ae20624c803c06819686c8ecd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 45,
    "path": "GRWTSK/NumberTheory/BinaryDigits/Carry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cd538484b223d65cbc9b4d7ed56c80e6665d81e7067bc10f6538b8cf9dd9707",
  "verification": {
    "reference": "docs/verification/NumberTheory/BinaryDigits/Carry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5435099-07ab-41a2-34c8-c2f70ac83c8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem input_digit_split (i n : ℕ) :
    i%2^(n+1) = i%2^n + 2^n*((i/2^n)%2) := by
  have hp : 0 < 2^n := pow_pos (by decide) n
  have hdiv := Nat.mod_add_div i (2^n)
  have hq := Nat.mod_add_div (i/2^n) 2
  have hmod := Nat.mod_lt i hp
  have hbit := Nat.mod_lt (i/2^n) (by decide : 0 < 2)
  have he : i = (i%2^n+2^n*((i/2^n)%2))+(2^(n+1))*((i/2^n)/2) := by
    rw [pow_succ]
    have hm := congrArg (fun z : ℕ => 2^n*z) hq
    nlinarith
  have hr : i%2^n+2^n*((i/2^n)%2) < 2^(n+1) := by
    have hb : (i/2^n)%2=0 ∨ (i/2^n)%2=1 := by omega
    rcases hb with hb | hb
    · simp only [hb, mul_zero, add_zero, pow_succ]
      omega
    · simp only [hb, mul_one, pow_succ]
      omega
  calc
    i%2^(n+1) =
        ((i%2^n+2^n*((i/2^n)%2))+2^(n+1)*((i/2^n)/2))%2^(n+1) :=
      congrArg (fun z : ℕ => z%2^(n+1)) he
    _ = (i%2^n+2^n*((i/2^n)%2))%2^(n+1) := by simp [Nat.add_mod]
    _ = i%2^n+2^n*((i/2^n)%2) := Nat.mod_eq_of_lt hr

/-- Complete bit invariant. This proves the index law at every length, not a sample list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/BinaryDigits/Carry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/BinaryDigits/Carry.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c17d116861d36c4ae20624c803c06819686c8ecd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
