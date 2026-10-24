# later_entrance_retains_exact_full_pulse_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fb6b822-5b34-d71e-b1cc-e44d5b5cc81c",
  "kind": "theorem",
  "lexical_name": "later_entrance_retains_exact_full_pulse_price",
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
  "slug": "later-entrance-retains-exact-full-pulse-price--1c282d317e6dcacf5a3070b9",
  "source": {
    "blob": "357859146583c87516a9db9ffdcff4f8793c157b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularRealRecordConsumer/Variant761682f01e37abe996b38f84b44ae9474f43374e14bd01e9b10ec465bc96a17c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c282d317e6dcacf5a3070b9bcd6204fc031a93e92c251c133b9e2974df837e6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularRealRecordConsumer/Variant761682f01e37abe996b38f84b44ae9474f43374e14bd01e9b10ec465bc96a17c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fb6b822-5b34-d71e-b1cc-e44d5b5cc81c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem later_entrance_retains_exact_full_pulse_price {N a : ℝ}
    (hN : 1 ≤ N) (ha : 0 ≤ a) (j : ℕ)
    (hj : N ≤ ((linearSize j) ^ 2 : ℕ)) (p : ℝ) :
    relativeRealRecordPrice N j a p = realRecordPrice j a p := by
  have hlo : (1 : ℝ) ≤ ((linearSize j) ^ 2 : ℕ) := hN.trans hj
  have hhi : N ≤ ((linearSize j) ^ 2 + 2 * linearSize j + 1 : ℕ) := by
    exact hj.trans (by exact_mod_cast
      (show (linearSize j) ^ 2 ≤ (linearSize j) ^ 2 + 2 * linearSize j + 1 by omega))
  unfold relativeRealRecordPrice realRecordPrice
  rw [every_later_real_entrance_retains_the_same_primitive_record linearSize
    linear_size_sufficient ha hN hhi,
    every_later_real_entrance_retains_the_same_primitive_record linearSize
      linear_size_sufficient ha hN hj,
    full_real_running_record_is_unchanged_primitive linearSize linear_size_sufficient ha
      (hN.trans hhi),
    full_real_running_record_is_unchanged_primitive linearSize linear_size_sufficient ha hlo,
    complete_native_width_is_exact_real_width]
  congr 2
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularRealRecordConsumer/Variant761682f01e37abe996b38f84b44ae9474f43374e14bd01e9b10ec465bc96a17c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularRealRecordConsumer/Variant761682f01e37abe996b38f84b44ae9474f43374e14bd01e9b10ec465bc96a17c.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `357859146583c87516a9db9ffdcff4f8793c157b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
