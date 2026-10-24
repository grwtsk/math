# integerNonaffine_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29516b1e-911c-18a0-18d5-67fc4893e0b7",
  "kind": "theorem",
  "lexical_name": "integerNonaffine_succ",
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
  "slug": "integernonaffine-succ--7e0d0381b15a35880411777e",
  "source": {
    "blob": "b203e708acc3c94ce062bc2d36fcbc85e604b659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e0d0381b15a35880411777e78ec8cf4c8a2ed306bedbbb6a4a5511b4de6c3d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29516b1e-911c-18a0-18d5-67fc4893e0b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerNonaffine_succ (A : ℝ) {n : ℕ} (hn : 1 ≤ n) :
    integerNonaffine A (n + 1) =
      (n : ℝ) / (n + 1 : ℕ) * integerNonaffine A n +
        (compensatedImpulse (n + 1) - affineTrend A (Real.log n)) / (n + 1 : ℕ) +
        endpointSlope A * (Real.log (n + 1 : ℕ) - Real.log n) := by
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast (show n ≠ 0 by omega)
  have hnext0 : ((n + 1 : ℕ) : ℝ) ≠ 0 := by positivity
  change integerDiscrepancy (n + 1) - affineTrend A (Real.log (n + 1 : ℕ)) = _
  rw [integerDiscrepancy_succ hn, affineTrend_log_succ]
  change _ = (n : ℝ) / (n + 1 : ℕ) *
    (integerDiscrepancy n - affineTrend A (Real.log n)) + _ + _
  push_cast
  field_simp
  ring

/-- Equivalent state/forcing recurrence; the slope correction pays its entire cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDiscrete/Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b203e708acc3c94ce062bc2d36fcbc85e604b659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
