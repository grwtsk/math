# actual_upper_continuous_row_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "021e5c6870a385a142b9f53ba1217bc76273517a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd2e3a95-1058-6349-904a-fbe2ff226cb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:002908ec-1621-101a-fcb3-c6e0a535b019",
  "kind": "theorem",
  "lexical_name": "actual_upper_continuous_row_nonneg",
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
  "slug": "actual-upper-continuous-row-nonneg--697ab514ede2f2aab6aad589",
  "source": {
    "blob": "021e5c6870a385a142b9f53ba1217bc76273517a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:697ab514ede2f2aab6aad589a3868f762b82436d67cda1407efe4607d0917f01",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:002908ec-1621-101a-fcb3-c6e0a535b019`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_upper_continuous_row_nonneg {A d : ℝ} (hA : 1 ≤ A)
    (hthreshold : (136 / 7 : ℝ) ≤ A ^ 2) (hd : 1 ≤ d)
    (hdX : d ≤ Real.exp (2 * A)) : 0 ≤ upperContinuousDivisorIntegral A d := by
  have hdp : 0 < d := by linarith
  have ht0 : 0 ≤ Real.log d := Real.log_nonneg hd
  have ht2 : Real.log d ≤ 2 * A := by
    have h := Real.log_le_log hdp hdX
    simpa only [Real.log_exp] using h
  rw [actual_upper_continuous_row_eq_Peano hA hdp hdX]
  exact div_nonneg (sourcePeanoPrimitive_nonneg (by linarith) hthreshold ht0 ht2) hdp.le

/-- Entire literal I remains a signed sum of the actual local Peano values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant3d8396119840795f976f9d26e39e5497b9faad72b8ed330fe45c671093748054.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `021e5c6870a385a142b9f53ba1217bc76273517a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
