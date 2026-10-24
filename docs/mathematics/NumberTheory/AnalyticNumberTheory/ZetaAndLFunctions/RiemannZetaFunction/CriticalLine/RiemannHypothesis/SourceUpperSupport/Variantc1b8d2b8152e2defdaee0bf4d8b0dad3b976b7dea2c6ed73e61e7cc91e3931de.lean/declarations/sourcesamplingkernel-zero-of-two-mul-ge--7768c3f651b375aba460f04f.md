# sourceSamplingKernel_zero_of_two_mul_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f6e727caa9efe1277f3ca76cb1ec0f2c30ef30f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 14,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1b8d2b8152e2defdaee0bf4d8b0dad3b976b7dea2c6ed73e61e7cc91e3931de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0812c7e-df70-0952-e9db-f792a4f87ff6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fb2ed91-7949-ca9b-cd9e-4e525135833c",
  "kind": "theorem",
  "lexical_name": "sourceSamplingKernel_zero_of_two_mul_ge",
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
  "slug": "sourcesamplingkernel-zero-of-two-mul-ge--7768c3f651b375aba460f04f",
  "source": {
    "blob": "8f6e727caa9efe1277f3ca76cb1ec0f2c30ef30f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 14,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantc1b8d2b8152e2defdaee0bf4d8b0dad3b976b7dea2c6ed73e61e7cc91e3931de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7768c3f651b375aba460f04f445a34dc905fbf6d1316757dc20e53ffe36eb8fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantc1b8d2b8152e2defdaee0bf4d8b0dad3b976b7dea2c6ed73e61e7cc91e3931de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fb2ed91-7949-ca9b-cd9e-4e525135833c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceSamplingKernel_zero_of_two_mul_ge (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 2*x) : SourceSampling.sourceSamplingKernel A x = 0 := by
  unfold SourceSampling.sourceSamplingKernel
  apply sum_eq_zero
  intro k hk
  by_cases hk1 : k = 1
  · simp [hk1]
  · have hm := (SourceSampling.mem_samplingIndices_iff A x k hx).mp hk
    have hk2 : (2:ℝ) ≤ k := by exact_mod_cast (show 2≤k by omega)
    have hmul : 2*x ≤ x*(k:ℝ) := by nlinarith
    exact False.elim (not_lt_of_ge (hcut.trans hmul) hm.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantc1b8d2b8152e2defdaee0bf4d8b0dad3b976b7dea2c6ed73e61e7cc91e3931de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperSupport/Variantc1b8d2b8152e2defdaee0bf4d8b0dad3b976b7dea2c6ed73e61e7cc91e3931de.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f6e727caa9efe1277f3ca76cb1ec0f2c30ef30f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
