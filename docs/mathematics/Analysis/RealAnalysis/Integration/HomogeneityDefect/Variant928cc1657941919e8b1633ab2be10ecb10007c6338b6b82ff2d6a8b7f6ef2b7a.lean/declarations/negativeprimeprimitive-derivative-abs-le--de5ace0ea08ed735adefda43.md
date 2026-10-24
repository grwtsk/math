# negativePrimePrimitive_derivative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c284352f45f41ba600621b4c0b7e8948b3997da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30aeae75-7d49-4ad4-ec11-e7a4c9007dcd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:164808a2-54c5-582a-5e9c-d8745524d07c",
  "kind": "theorem",
  "lexical_name": "negativePrimePrimitive_derivative_abs_le",
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
  "slug": "negativeprimeprimitive-derivative-abs-le--de5ace0ea08ed735adefda43",
  "source": {
    "blob": "0c284352f45f41ba600621b4c0b7e8948b3997da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variant928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de5ace0ea08ed735adefda4386ff277b80a01c4f0a6deb24e402942ccda93643",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variant928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:164808a2-54c5-582a-5e9c-d8745524d07c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativePrimePrimitive_derivative_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (negativePrimePrimitive A) t| ≤ 2 * Real.sqrt (65 / 3) / A := by
  have he : deriv (negativePrimePrimitive A) t = deriv (correlationPrimitive A) t / 2 -
      deriv (sourceCorrelation explicitSecondDerivative A) t := by
    exact (((correlationPrimitive_contDiff A hA).differentiable (by norm_num) t).hasDerivAt.div_const 2
      |>.sub ((sourceCorrelation_contDiff A (by linarith)).differentiable
        (by norm_num) t).hasDerivAt).deriv
  rw [he]
  calc
    _ ≤ |deriv (correlationPrimitive A) t / 2| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| := abs_sub _ _
    _ ≤ (2 * Real.sqrt (65 / 3) / A) / 2 + Real.sqrt (65 / 3) / A := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add (div_le_div_of_nonneg_right
        (correlationPrimitive_derivative_abs_le A t hA) (by norm_num))
        (DerivativeEnergy.sourceCorrelation_derivative_abs_le A t hA)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variant928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variant928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c284352f45f41ba600621b4c0b7e8948b3997da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
