# actualZeroMovingHeight_ge_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab1a909b-746a-74fc-f449-7efd4a060c93",
  "kind": "theorem",
  "lexical_name": "actualZeroMovingHeight_ge_four",
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
  "slug": "actualzeromovingheight-ge-four--503dfd49acafc9107383f229",
  "source": {
    "blob": "e85558166d07067d4956ce7a6241e42871a6e857",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative01/Variant7d28cbe1e3c358be9dc5fc6890b07b8e2bf08db832a7acc7b6b945424f031b58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:503dfd49acafc9107383f229e33471d73c420c9eaf7b1a1ca4e6291a9edbd864",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative01/Variant7d28cbe1e3c358be9dc5fc6890b07b8e2bf08db832a7acc7b6b945424f031b58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab1a909b-746a-74fc-f449-7efd4a060c93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroMovingHeight_ge_four (c A : ℝ) (hc : 1 < c)
    (hA : actualZeroMovingRadius c ≤ A) : 4 ≤ actualBumpMovingHeight A c := by
  have hp : 0 < 2 * c - 1 := by linarith
  have hh : 5 * Real.log 4 / (2 * c - 1) ≤ A :=
    (le_max_right _ _).trans hA
  have hh' := (div_le_iff₀ hp).mp hh
  have he : Real.log 4 ≤ (2 * c - 1) * A / 5 := by linarith
  calc
    (4 : ℝ) = Real.exp (Real.log 4) := (Real.exp_log (by norm_num)).symm
    _ ≤ actualBumpMovingHeight A c := Real.exp_le_exp.mpr he

/-- The full actual zero tail, including all equality atoms, has a quantified moving-height budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative01/Variant7d28cbe1e3c358be9dc5fc6890b07b8e2bf08db832a7acc7b6b945424f031b58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative01/Variant7d28cbe1e3c358be9dc5fc6890b07b8e2bf08db832a7acc7b6b945424f031b58.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e85558166d07067d4956ce7a6241e42871a6e857` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
