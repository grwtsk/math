# syntheticCriticalReadout_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ebfa36da6aa2fb44468ce9373c8e4c79db31cd29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7a319c8-d697-a0af-18ec-1908fa7e1ffa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:945b1575-46c5-555f-c5fc-5ac243ad280a",
  "kind": "theorem",
  "lexical_name": "syntheticCriticalReadout_le",
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
  "slug": "syntheticcriticalreadout-le--38ae175944d273335fba4471",
  "source": {
    "blob": "ebfa36da6aa2fb44468ce9373c8e4c79db31cd29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSyntheticCriticalObstruction/Varianta8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38ae175944d273335fba4471f6e4b2a81822e9d29d47457130ba6fcb6ced6180",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSyntheticCriticalObstruction/Varianta8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:945b1575-46c5-555f-c5fc-5ac243ad280a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem syntheticCriticalReadout_le {A : ℝ} (hA : 160 ≤ A) :
    syntheticCriticalReadout A ≤
      -(7/32 : ℝ)*Real.exp (A/160)+1+Real.exp (1/2 : ℝ) := by
  have hA1 : 1 ≤ A := by linarith
  have hearly := earlyTailTest_le (u := A/80) hA (le_refl _) (by linarith)
  have hdelta := decayHalf_mem_Icc
  have hdelta0 : 0 ≤ Real.exp (-(1/2 : ℝ)) := (Real.exp_pos _).le
  have hp := mul_le_mul_of_nonneg_left hearly hdelta0
  have hc : Real.exp (-(1/2 : ℝ))*(-(7/16 : ℝ)*Real.exp (A/160)) ≤
      -(7/32 : ℝ)*Real.exp (A/160) := by
    nlinarith [Real.exp_pos (A/160)]
  have hi := (abs_le.mp (unitDensityTail_integral_abs_le hA1)).1
  unfold syntheticCriticalReadout
  linarith

end FormalResearch.RiemannHypothesis.SourceSyntheticCriticalObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSyntheticCriticalObstruction/Varianta8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSyntheticCriticalObstruction/Varianta8897a074dff5d55cf6a12c553eaaae1fdb12ac3f1132563ddcee70af588cd3c.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebfa36da6aa2fb44468ce9373c8e4c79db31cd29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
