# closedPrimeMoment_eq_continuous_sub_Mangoldt_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cebad7f207d2cab487d7eaff1db875daac2211c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/393f04319d7b7505307c56799479dd36cc74fdb945a4c317c6d989545ecec870.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6c82ce6-65af-3f15-3ec2-a6e3cef41a35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7dcd57f-e067-3942-6cc4-fe8ab3759b47",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_eq_continuous_sub_Mangoldt_work",
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
  "slug": "closedprimemoment-eq-continuous-sub-mangoldt-work--340bfa6e700d555b02ec3dbd",
  "source": {
    "blob": "cebad7f207d2cab487d7eaff1db875daac2211c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 258,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant393f04319d7b7505307c56799479dd36cc74fdb945a4c317c6d989545ecec870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:340bfa6e700d555b02ec3dbd61d8719546ecea970e4a5569280d841b9a189b56",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant393f04319d7b7505307c56799479dd36cc74fdb945a4c317c6d989545ecec870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7dcd57f-e067-3942-6cc4-fe8ab3759b47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_eq_continuous_sub_Mangoldt_work (A : ℝ) (hA : 1 ≤ A) :
    closedPrimeMoment A = criticalContinuousMoment A - criticalMangoldtWork A := by
  have h := mangoldtLogWindow_sub_integral 0 (2 * A) (by norm_num) (by linarith)
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A (by linarith))
  rw [mangoldtLogWindow_zero, criticalPrimeTest_at_upper A (by linarith)] at h
  simp only [mangoldtLogError, mangoldtLogPrefix_zero, sub_self, zero_mul,
    mul_zero, zero_sub] at h
  rw [← closedPrimeMoment_eq_mangoldtLogSum] at h
  change closedPrimeMoment A - criticalContinuousMoment A = -criticalMangoldtWork A at h
  linarith

/-- The unchanged literal residual retains the full signed interaction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant393f04319d7b7505307c56799479dd36cc74fdb945a4c317c6d989545ecec870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant393f04319d7b7505307c56799479dd36cc74fdb945a4c317c6d989545ecec870.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cebad7f207d2cab487d7eaff1db875daac2211c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
