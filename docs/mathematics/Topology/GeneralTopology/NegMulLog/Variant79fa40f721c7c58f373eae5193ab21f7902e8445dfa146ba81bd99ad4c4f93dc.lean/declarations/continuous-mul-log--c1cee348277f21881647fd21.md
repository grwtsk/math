# continuous_mul_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd8a3395-dd03-b786-1f23-3ecd970a8b9d",
  "kind": "lemma",
  "lexical_name": "continuous_mul_log",
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
  "slug": "continuous-mul-log--c1cee348277f21881647fd21",
  "source": {
    "blob": "cabb97067adec61cf83d704d629e81f1686c930a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1cee348277f21881647fd21ea4fa9bca2d264f5f2332410d3f94530907d6888",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd8a3395-dd03-b786-1f23-3ecd970a8b9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_mul_log : Continuous fun x ↦ x * log x := by
  rw [continuous_iff_continuousAt]
  intro x
  obtain hx | rfl := ne_or_eq x 0
  · exact (continuous_id'.continuousAt).mul (continuousAt_log hx)
  rw [ContinuousAt, zero_mul]
  simp_rw [mul_comm _ (log _)]
  nth_rewrite 1 [← nhdsWithin_univ]
  have : (Set.univ : Set ℝ) = Set.Iio 0 ∪ Set.Ioi 0 ∪ {0} := by ext; simp [em]
  rw [this, nhdsWithin_union, nhdsWithin_union]
  simp only [nhdsWithin_singleton, sup_le_iff, Filter.nonpos_iff, Filter.tendsto_sup]
  refine ⟨⟨tendsto_log_mul_self_nhdsLT_zero, ?_⟩, ?_⟩
  · simpa only [rpow_one] using tendsto_log_mul_rpow_nhdsGT_zero zero_lt_one
  · convert tendsto_pure_nhds (fun x ↦ log x * x) 0
    simp

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NegMulLog/Variant79fa40f721c7c58f373eae5193ab21f7902e8445dfa146ba81bd99ad4c4f93dc.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cabb97067adec61cf83d704d629e81f1686c930a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
