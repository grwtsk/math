# integrable_exp_mul_of_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a14dcecbdeb27d8e10310bf3449fa0ee64df60be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a30b192f4f3ece37b54a70c249be6a8f84d418155a56e125e8d05be155e7641.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd4b81b4-4eff-3887-26bc-c901fc5a84df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7bc793d-37ab-1a1a-b5be-9b4f71699ebb",
  "kind": "lemma",
  "lexical_name": "integrable_exp_mul_of_le_of_le",
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
  "slug": "integrable-exp-mul-of-le-of-le--9d74267c9a10277a766b5746",
  "source": {
    "blob": "a14dcecbdeb27d8e10310bf3449fa0ee64df60be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant3a30b192f4f3ece37b54a70c249be6a8f84d418155a56e125e8d05be155e7641.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d74267c9a10277a766b574607952943e5076f2f67131f08f4728b5ccd71cad9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant3a30b192f4f3ece37b54a70c249be6a8f84d418155a56e125e8d05be155e7641.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7bc793d-37ab-1a1a-b5be-9b4f71699ebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_exp_mul_of_le_of_le {a b : ℝ}
    (ha : Integrable (fun ω ↦ exp (a * X ω)) μ) (hb : Integrable (fun ω ↦ exp (b * X ω)) μ)
    (hat : a ≤ t) (htb : t ≤ b) :
    Integrable (fun ω ↦ exp (t * X ω)) μ := by
  refine Integrable.mono (ha.add hb) ?_ (ae_of_all _ fun ω ↦ ?_)
  · by_cases hab : a = b
    · have ha_eq_t : a = t := le_antisymm hat (hab ▸ htb)
      rw [← ha_eq_t]
      exact ha.1
    · refine AEMeasurable.aestronglyMeasurable ?_
      refine measurable_exp.comp_aemeasurable (AEMeasurable.const_mul ?_ _)
      by_cases ha_zero : a = 0
      · refine aemeasurable_of_aemeasurable_exp_mul ?_ hb.1.aemeasurable
        rw [ha_zero] at hab
        exact Ne.symm hab
      · exact aemeasurable_of_aemeasurable_exp_mul ha_zero ha.1.aemeasurable
  · simp only [norm_eq_abs, abs_exp, Pi.add_apply]
    conv_rhs => rw [abs_of_nonneg (by positivity)]
    rcases le_total 0 (X ω) with h | h
    · calc exp (t * X ω)
      _ ≤ exp (b * X ω) := exp_le_exp.mpr (mul_le_mul_of_nonneg_right htb h)
      _ ≤ exp (a * X ω) + exp (b * X ω) := le_add_of_nonneg_left (exp_nonneg _)
    · calc exp (t * X ω)
      _ ≤ exp (a * X ω) := exp_le_exp.mpr (mul_le_mul_of_nonpos_right hat h)
      _ ≤ exp (a * X ω) + exp (b * X ω) := le_add_of_nonneg_right (exp_nonneg _)

/-- If `ω ↦ exp (u * X ω)` is integrable at `u` and `-u`, then it is integrable on `[-u, u]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant3a30b192f4f3ece37b54a70c249be6a8f84d418155a56e125e8d05be155e7641.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant3a30b192f4f3ece37b54a70c249be6a8f84d418155a56e125e8d05be155e7641.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a14dcecbdeb27d8e10310bf3449fa0ee64df60be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
