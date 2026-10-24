# integral_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f75406f6827c7451ea51375b6d9f2fe06fc13416",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 863,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1479fc8-6353-018a-e126-4b609b3d182f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba8871dc-1bb0-72ca-3ec7-2daedd16c6d4",
  "kind": "theorem",
  "lexical_name": "integral_upper_bound",
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
  "slug": "integral-upper-bound--e3829da1c4f89a09299a4159",
  "source": {
    "blob": "f75406f6827c7451ea51375b6d9f2fe06fc13416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 893,
    "line": 863,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3829da1c4f89a09299a415966d671400a828bc541ab76672cff48eba1cc112d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba8871dc-1bb0-72ca-3ec7-2daedd16c6d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 863–893.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_upper_bound (a b c : ℝ) (ha_pos : 0 < a) (hb_lt : b < 1)
    (hab : a ≤ b)
    (hbound : ∀ t, a ≤ t → t ≤ b → g t ≤ c) :
    ∫ t in a..b, g t ≤ c * (b - a) := by
  have hInt := g_intervalIntegrable a b ha_pos hb_lt hab
  have hInt_const : IntervalIntegrable (fun _ => c) volume a b := intervalIntegrable_const
  have hmono : ∀ t ∈ Set.Icc a b, g t ≤ c := fun t ht => hbound t ht.1 ht.2
  have hle := intervalIntegral.integral_mono_on hab hInt hInt_const hmono
  simp only [intervalIntegral.integral_const, smul_eq_mul] at hle
  linarith

/-! ### Numerical Bounds from Interval Arithmetic

The following bounds were computed using `integratePartitionWithInv`:
- [0.00001, 0.0001] with 90 partitions: [0.0000856, 0.0000948]
- [0.0001, 0.001] with 90 partitions: [0.00086, 0.00095]
- [0.001, 0.999] with 2994 partitions: [1.03775, 1.04840]
- [0.999, 0.9999] with 90 partitions: [0.00118, 0.00119]
- [0.9999, 0.99999] with 90 partitions: [0.000120, 0.000121]

Sum of lower bounds: 1.039996
Sum of upper bounds: 1.050757

With analytic tail bounds for [0, 0.00001] and [0.99999, 1]:
- [0, 0.00001]: g ≥ 0.9, so integral ≥ 0.000009
- [0.99999, 1]: g ≥ 1.3, so integral ≥ 0.000013

Total: [1.040018, 1.050780] ⊂ [1.04, 1.06]
-/

/-- The main mid-range interval [1/1000, 999/1000] for numerical integration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean#L863).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f75406f6827c7451ea51375b6d9f2fe06fc13416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
