# abs_terminalShortDeepRemainderPacket_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06c85b38-9c1d-24db-d20c-b4bf521b02c9",
  "kind": "theorem",
  "lexical_name": "abs_terminalShortDeepRemainderPacket_le",
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
  "slug": "abs-terminalshortdeepremainderpacket-le--378483f5c8f046b7044e9b32",
  "source": {
    "blob": "5d3626a03c6979a18430215d285f4405e6f98eaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 199,
    "path": "GRWTSK/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:378483f5c8f046b7044e9b32b685ca4cfa06fe10b5370085d787357388d3d067",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06c85b38-9c1d-24db-d20c-b4bf521b02c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_terminalShortDeepRemainderPacket_le
    (j : ℕ) :
    |terminalShortDeepRemainderPacket j| ≤
      2 * (logarithmicShiftThreshold j + 2 : ℝ) +
        normalizedShortPacketBudget j := by
  unfold terminalShortDeepRemainderPacket
  calc
    |∑ t ∈ terminalShortDeepDepths j,
      logarithmicLongDepthRemainder j t| ≤
      ∑ t ∈ terminalShortDeepDepths j,
        |logarithmicLongDepthRemainder j t| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ t ∈ terminalShortDeepDepths j,
        (2 + normalizedShortDepthBudget j t) := by
      apply Finset.sum_le_sum
      intro t ht
      have htY :
          t < 2 ^ (j + 1) := by
        simp only [terminalShortDeepDepths, Finset.mem_filter,
          Finset.mem_Ico] at ht
        exact ht.1.2
      exact abs_longDepthRemainder_le_two_add_shortBudget htY
    _ = 2 * ((terminalShortDeepDepths j).card : ℝ) +
        terminalShortNormalizedBudget j := by
      unfold terminalShortNormalizedBudget
      rw [Finset.sum_add_distrib]
      simp [mul_comm]
    _ ≤ 2 * (logarithmicShiftThreshold j + 2 : ℝ) +
        normalizedShortPacketBudget j := by
      apply add_le_add
      · apply mul_le_mul_of_nonneg_left
        · exact_mod_cast terminalShortDeepDepths_card_le j
        · norm_num
      · exact terminalShortNormalizedBudget_le_full j

/-- The terminal-short deep strip is subpolynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d3626a03c6979a18430215d285f4405e6f98eaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
