# shell_sqrt_gap_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10a7c948-da35-bccc-2878-11f53b32e0ba",
  "kind": "theorem",
  "lexical_name": "shell_sqrt_gap_lt_one",
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
  "slug": "shell-sqrt-gap-lt-one--ad8788f11157ce280a33114a",
  "source": {
    "blob": "cbc1e22a1902d6b7e78943f661ec69698947dd53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShellAttempt02/Variantcf767affe0c402416785d6e1e2957bc093992f18f9fe1cd36d0df38f4b8afad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad8788f11157ce280a33114a9a06b4d3f55b86ca1ec627264769814aceab2209",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShellAttempt02/Variantcf767affe0c402416785d6e1e2957bc093992f18f9fe1cd36d0df38f4b8afad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10a7c948-da35-bccc-2878-11f53b32e0ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shell_sqrt_gap_lt_one {N n : ℕ} (hn : 2 ≤ n) (hnN : n ≤ N) :
    Real.sqrt (shellEndpoint N n : ℝ) - Real.sqrt (n : ℝ) < 1 := by
  have hlo : (Nat.sqrt (n - 1) : ℝ) ^ 2 < (n : ℝ) := by
    exact_mod_cast shell_lower_strict hn
  have hhi : (shellEndpoint N n : ℝ) ≤ (Nat.sqrt (n - 1) + 1 : ℝ) ^ 2 := by
    exact_mod_cast (shellEndpoint_bounds hn hnN).2
  have hl := (Real.lt_sqrt (Nat.cast_nonneg _)).2 hlo
  have hh := (Real.sqrt_le_left (by positivity : (0 : ℝ) ≤ Nat.sqrt (n - 1) + 1)).2 hhi
  linarith

/-- Exact logarithmic shell geometry retains a truncated upper endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShellAttempt02/Variantcf767affe0c402416785d6e1e2957bc093992f18f9fe1cd36d0df38f4b8afad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShellAttempt02/Variantcf767affe0c402416785d6e1e2957bc093992f18f9fe1cd36d0df38f4b8afad1.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbc1e22a1902d6b7e78943f661ec69698947dd53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
