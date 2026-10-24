# integrable_preCDF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c4f8a5713ed453f8fd3b0b855f3545e4a6afc3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ec9f462-e135-9b10-7098-340e5dcb9a64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c040e96-3365-ffc5-5a30-0a10557fbc18",
  "kind": "lemma",
  "lexical_name": "integrable_preCDF",
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
  "slug": "integrable-precdf--6f4d3f0fdb77cbbd48a3af29",
  "source": {
    "blob": "1c4f8a5713ed453f8fd3b0b855f3545e4a6afc3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 192,
    "path": "GRWTSK/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f4d3f0fdb77cbbd48a3af2956e507f9a3452e4ff55da39e10cfe46107515d2b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c040e96-3365-ffc5-5a30-0a10557fbc18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_preCDF (ρ : Measure (α × ℝ)) [IsFiniteMeasure ρ] (x : ℚ) :
    Integrable (fun a ↦ (preCDF ρ x a).toReal) ρ.fst := by
  refine integrable_of_forall_fin_meas_le _ (measure_lt_top ρ.fst univ) ?_ fun t _ _ ↦ ?_
  · exact measurable_preCDF.ennreal_toReal.aestronglyMeasurable
  · simp_rw [← ofReal_norm_eq_enorm, Real.norm_of_nonneg ENNReal.toReal_nonneg]
    rw [← lintegral_one]
    refine (setLIntegral_le_lintegral _ _).trans (lintegral_mono_ae ?_)
    filter_upwards [preCDF_le_one ρ] with a ha using ENNReal.ofReal_toReal_le.trans (ha _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c4f8a5713ed453f8fd3b0b855f3545e4a6afc3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
