# residualProfile_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54e64ae2-b1ea-dda3-54c4-f3ce72a78f04",
  "kind": "theorem",
  "lexical_name": "residualProfile_intervalIntegrable",
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
  "slug": "residualprofile-intervalintegrable--7344c45fbf1c33b60f76a538",
  "source": {
    "blob": "7ace9bc6526295b5ac837ab1a48cee6b3e79001b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingResidualProfile/Variant2263eb79f677b8569290795c156a7e4576e0bd5ac64b9e7f35404e2d0c4e1d79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7344c45fbf1c33b60f76a538cd634a9ef3e98e24df9d368aa7b279b7859d04ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingResidualProfile/Variant2263eb79f677b8569290795c156a7e4576e0bd5ac64b9e7f35404e2d0c4e1d79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54e64ae2-b1ea-dda3-54c4-f3ce72a78f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residualProfile_intervalIntegrable (c b d : ι → ℝ) (T : ℝ) :
    IntervalIntegrable (residualProfile c b d) volume 0 T := by
  unfold residualProfile
  have hi : IntervalIntegrable
      (∑ i : ι, fun t : ℝ => if c i ≤ t then b i * (t - c i) - d i else 0)
      volume 0 T := IntervalIntegrable.sum Finset.univ (fun i _ =>
        intervalIntegrable_closed_step 0 T (c i) _
          ((by fun_prop : Continuous (fun t : ℝ => b i * (t - c i) - d i)).intervalIntegrable 0 T))
  have he : (∑ i : ι, fun t : ℝ => if c i ≤ t then b i * (t - c i) - d i else 0) =
      (fun t : ℝ => ∑ i, if c i ≤ t then b i * (t - c i) - d i else 0) := by
    funext t
    simp only [Finset.sum_apply]
  rw [he] at hi
  exact hi

/-- Both endpoint carries vanish only by the displayed test-function hypotheses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingResidualProfile/Variant2263eb79f677b8569290795c156a7e4576e0bd5ac64b9e7f35404e2d0c4e1d79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingResidualProfile/Variant2263eb79f677b8569290795c156a7e4576e0bd5ac64b9e7f35404e2d0c4e1d79.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ace9bc6526295b5ac837ab1a48cee6b3e79001b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
