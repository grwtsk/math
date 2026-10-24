# smoothedPerronIntegrand_residue_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32604f3eb2820bc41cce2afa998b148ab927a190",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:119d467a-fdd2-ebe9-c412-f28e74b8026a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b2bb17f-9e4c-ef6e-cf6c-52143e5500a3",
  "kind": "theorem",
  "lexical_name": "smoothedPerronIntegrand_residue_limit",
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
  "slug": "smoothedperronintegrand-residue-limit--6e7eaefaee13c52c33184431",
  "source": {
    "blob": "32604f3eb2820bc41cce2afa998b148ab927a190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 133,
    "path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e7eaefaee13c52c331844318bd8fe2b36d4d6b73bbf155e46376e8a5f3c448e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b2bb17f-9e4c-ef6e-cf6c-52143e5500a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothedPerronIntegrand_residue_limit (x : ℝ) (hx : 0 < x) :
    Tendsto (fun s : ℂ => s * smoothedPerronIntegrand x s) (𝓝[≠] 0) (𝓝 1) := by
  have h : Tendsto (fun s : ℂ => (x : ℂ) ^ s / zetaPoleFactor s)
      (𝓝[≠] 0) (𝓝 ((x : ℂ) ^ (0 : ℂ) / zetaPoleFactor 0)) :=
    (perronNumerator_analyticAt_zero x hx).continuousAt.tendsto.mono_left nhdsWithin_le_nhds
  simp only [cpow_zero, zetaPoleFactor_zero, div_one] at h
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with s hs
  rw [smoothedPerronIntegrand_factor]
  exact (mul_div_cancel₀ _ hs).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32604f3eb2820bc41cce2afa998b148ab927a190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
