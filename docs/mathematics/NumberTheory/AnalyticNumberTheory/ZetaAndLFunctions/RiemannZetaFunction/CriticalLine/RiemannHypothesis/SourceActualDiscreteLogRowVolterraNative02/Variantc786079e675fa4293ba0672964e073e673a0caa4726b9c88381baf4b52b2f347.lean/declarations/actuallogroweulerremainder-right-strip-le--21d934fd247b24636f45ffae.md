# actualLogRowEulerRemainder_right_strip_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97c87ee4-b060-1a51-e4bd-cf1dbd75a700",
  "kind": "theorem",
  "lexical_name": "actualLogRowEulerRemainder_right_strip_le",
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
  "slug": "actuallogroweulerremainder-right-strip-le--21d934fd247b24636f45ffae",
  "source": {
    "blob": "a0be1b39013e109af9f37003ef8bd36145e42fc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 164,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative02/Variantc786079e675fa4293ba0672964e073e673a0caa4726b9c88381baf4b52b2f347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21d934fd247b24636f45ffae8e9d4f6ea31e27fdc8c1534365c4a607d1c844e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative02/Variantc786079e675fa4293ba0672964e073e673a0caa4726b9c88381baf4b52b2f347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97c87ee4-b060-1a51-e4bd-cf1dbd75a700`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLogRowEulerRemainder_right_strip_le (A s : ℝ) (hA : 1 ≤ A)
    (hs0 : 0 ≤ s) (hsA : s ≤ A) (hslog : s ≤ Real.log 2) :
    actualDiscreteLogProfile A (A-s)-actualContinuousLogProfile A (A-s) ≤
      -(s^4/(A^4*Real.sqrt A*Real.sqrt (sourceNormalization A))) := by
  rw [actualDiscreteLogProfile_right_strip_zero A s hA hslog]
  have h := actualContinuousLogProfile_right_strip_lower A s hA hs0 hsA
  linarith

/-- A strictly positive strip coordinate refutes a nonnegative Euler remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative02/Variantc786079e675fa4293ba0672964e073e673a0caa4726b9c88381baf4b52b2f347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualDiscreteLogRowVolterraNative02/Variantc786079e675fa4293ba0672964e073e673a0caa4726b9c88381baf4b52b2f347.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0be1b39013e109af9f37003ef8bd36145e42fc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
