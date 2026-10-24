# overlap_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:944f52ff-e520-5297-5ece-a57f650183dd",
  "kind": "theorem",
  "lexical_name": "overlap_moment",
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
  "slug": "overlap-moment--06c7436faeac8987583413bb",
  "source": {
    "blob": "f1919933e274056fd1a411be3ac4f5cecbb3c8aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantcd9ae66b7ed6da202dd012d830a62e95d50be1e9304b929f7c13a87de2ac5c76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06c7436faeac8987583413bb184c9339aef8eee33cb10d791dce237f4cf62579",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantcd9ae66b7ed6da202dd012d830a62e95d50be1e9304b929f7c13a87de2ac5c76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:944f52ff-e520-5297-5ece-a57f650183dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem overlap_moment (h : ℝ) :
    (∫ r in 0..h, r * (h - r) ^ 2) = h ^ 4 / 12 := by
  have hd (r : ℝ) : HasDerivAt
      (fun r : ℝ => h ^ 2 * r ^ 2 / 2 - 2 * h * r ^ 3 / 3 + r ^ 4 / 4)
      (r * (h - r) ^ 2) r := by
    have hd := (((((hasDerivAt_id r).pow 2).const_mul (h ^ 2)).div_const 2).sub
      ((((hasDerivAt_id r).pow 3).const_mul (2 * h)).div_const 3)).add
        (((hasDerivAt_id r).pow 4).div_const 4)
    exact hd.congr_deriv (by dsimp only [id_eq]; ring)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r)
    ((by fun_prop : Continuous (fun r : ℝ => r * (h - r) ^ 2)).intervalIntegrable _ _)]
  ring

/-- The actual critical coefficient is quantitatively negative in the fixed true support edge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantcd9ae66b7ed6da202dd012d830a62e95d50be1e9304b929f7c13a87de2ac5c76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantcd9ae66b7ed6da202dd012d830a62e95d50be1e9304b929f7c13a87de2ac5c76.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1919933e274056fd1a411be3ac4f5cecbb3c8aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
