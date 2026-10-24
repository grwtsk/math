# criticalWeight_early_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c31d8f0f-b680-8e74-56e0-620352638db7",
  "kind": "theorem",
  "lexical_name": "criticalWeight_early_lower",
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
  "slug": "criticalweight-early-lower--17ca24d1202981ac48bddfb4",
  "source": {
    "blob": "a028996b5f6f8c9b98ab928120f0ff6bdf98cc7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/68c8b2b419d83a01376fSourceCriticalWeightMassObstruction/Variante23b7759c3e1491f12135803bef6f7ce2924e5e96b182c9ac898acbe410dce11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17ca24d1202981ac48bddfb46be8536d4139b78bc84049bb216f9e84d931cc4c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/68c8b2b419d83a01376fSourceCriticalWeightMassObstruction/Variante23b7759c3e1491f12135803bef6f7ce2924e5e96b182c9ac898acbe410dce11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c31d8f0f-b680-8e74-56e0-620352638db7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalWeight_early_lower {A t : ℝ} (hA : 40 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ A / 40) : (5 / 16 : ℝ) ≤ criticalWeight A t := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hc := sourceCorrelation_sub_one_abs_le hA1 t
  rw [abs_of_nonneg ht0] at hc
  have htbound : 5 * t / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  have hcLower : (7 / 8 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
    linarith [(abs_le.mp hc).1]
  have hd := (le_abs_self (deriv (sourceCorrelation explicitSecondDerivative A) t)).trans
    (sourceCorrelation_deriv_abs_le_five_div hA1 t)
  have hfive : 5 / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  unfold criticalWeight
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/68c8b2b419d83a01376fSourceCriticalWeightMassObstruction/Variante23b7759c3e1491f12135803bef6f7ce2924e5e96b182c9ac898acbe410dce11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/68c8b2b419d83a01376fSourceCriticalWeightMassObstruction/Variante23b7759c3e1491f12135803bef6f7ce2924e5e96b182c9ac898acbe410dce11.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a028996b5f6f8c9b98ab928120f0ff6bdf98cc7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
