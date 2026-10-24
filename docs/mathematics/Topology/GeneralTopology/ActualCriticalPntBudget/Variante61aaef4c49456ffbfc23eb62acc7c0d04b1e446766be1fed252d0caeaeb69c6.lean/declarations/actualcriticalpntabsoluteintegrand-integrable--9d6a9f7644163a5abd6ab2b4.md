# actualCriticalPntAbsoluteIntegrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "543d9cbfbbf71dde0dcaffe893f0a636601abb02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c8d9224-34b9-bb04-af5f-c105a3294466",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:560502d1-d8d1-3e2b-87fd-b73f769198e5",
  "kind": "theorem",
  "lexical_name": "actualCriticalPntAbsoluteIntegrand_integrable",
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
  "slug": "actualcriticalpntabsoluteintegrand-integrable--9d6a9f7644163a5abd6ab2b4",
  "source": {
    "blob": "543d9cbfbbf71dde0dcaffe893f0a636601abb02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCriticalPntBudget/Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d6a9f7644163a5abd6ab2b42ba773809eeeabf0b4e00178951462dca0856201",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCriticalPntBudget/Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:560502d1-d8d1-3e2b-87fd-b73f769198e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalPntAbsoluteIntegrand_integrable (A c : ℝ) (hA : 4 ≤ A)
    (hc : 0 ≤ c) : IntegrableOn (actualCriticalPntAbsoluteIntegrand A c) (Ioi (0 : ℝ)) := by
  apply ((baselineLogKernel_integrable (A := A) (by linarith : 1 ≤ A)).abs).mono'
    (pnt_integrand_continuous A c (by linarith)).aestronglyMeasurable.restrict
  filter_upwards [] with t
  have he : Real.exp (-c * Real.sqrt t) ≤ 1 := Real.exp_le_one_iff.mpr
    (by nlinarith [Real.sqrt_nonneg t])
  rw [Real.norm_eq_abs, actualCriticalPntAbsoluteIntegrand, abs_mul,
    abs_of_pos (Real.exp_pos _), abs_abs]
  nlinarith [mul_le_mul_of_nonneg_right he (abs_nonneg (baselineLogKernel A t))]

/-- The actual support edge prevents this envelope budget from remaining bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCriticalPntBudget/Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCriticalPntBudget/Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `543d9cbfbbf71dde0dcaffe893f0a636601abb02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
