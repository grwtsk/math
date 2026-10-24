# halfPrefix_square_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03693e75-96bd-ab46-3ea2-14669bcef511",
  "kind": "theorem",
  "lexical_name": "halfPrefix_square_eq_sum",
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
  "slug": "halfprefix-square-eq-sum--ed33dd2172d77f04c896f60e",
  "source": {
    "blob": "a80102e7f45f73d5c3c37c920ff721e5fa22b7e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant7434cd612dca984bd46250329c5dbf0d9cdccb0b22c60e06183aa5e9218a23a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed33dd2172d77f04c896f60e266eb460f8e58b55db4b7d8055a5f003fed02393",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant7434cd612dca984bd46250329c5dbf0d9cdccb0b22c60e06183aa5e9218a23a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03693e75-96bd-ab46-3ea2-14669bcef511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem halfPrefix_square_eq_sum {A : ℝ} (hA : 1 ≤ A) :
    actualMangoldtHalfClosedPrefix (2 * Real.log A) =
      ∑ n ∈ Finset.Icc 2 (vaughanCutoff A), (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ) := by
  have hp : 0 < A := by linarith
  have hex : Real.exp (2 * Real.log A) = A ^ 2 := by
    rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
      Real.exp_add, Real.exp_log hp]
    ring
  have hU := vaughanCutoff_pos A hA
  have hI : Finset.Ioc 0 (vaughanCutoff A) =
      insert 1 (Finset.Icc 2 (vaughanCutoff A)) := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_insert, Finset.mem_Icc]
    omega
  unfold actualMangoldtHalfClosedPrefix
  rw [hex, show Nat.floor (A ^ 2) = vaughanCutoff A from rfl, hI]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant7434cd612dca984bd46250329c5dbf0d9cdccb0b22c60e06183aa5e9218a23a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualComplementCriticalRelative/Variant7434cd612dca984bd46250329c5dbf0d9cdccb0b22c60e06183aa5e9218a23a8.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a80102e7f45f73d5c3c37c920ff721e5fa22b7e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
