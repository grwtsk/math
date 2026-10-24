# variance_dual_stdGaussian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6953dbcb994d3358f2f7238bede0f93582fd4681",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db22dea6-3a37-c36b-8452-ee9819198fb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:762c0246-ca9e-e31c-1549-37e33f7b1134",
  "kind": "lemma",
  "lexical_name": "variance_dual_stdGaussian",
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
  "slug": "variance-dual-stdgaussian--3664cb7bd4ae45d9f480ccaa",
  "source": {
    "blob": "6953dbcb994d3358f2f7238bede0f93582fd4681",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3664cb7bd4ae45d9f480ccaac6c39da7e79818b880ef30eb7c0c03cb7e2057ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:762c0246-ca9e-e31c-1549-37e33f7b1134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variance_dual_stdGaussian (L : StrongDual ℝ E) :
    Var[L; stdGaussian E] = ‖L‖ ^ 2 := by
  rw [stdGaussian, variance_map L.continuous.aemeasurable (Measurable.aemeasurable (by fun_prop))]
  have : L ∘ (fun x : Fin (Module.finrank ℝ E) → ℝ ↦ ∑ i, x i • stdOrthonormalBasis ℝ E i) =
      ∑ i, (fun x : Fin (Module.finrank ℝ E) → ℝ ↦ L (stdOrthonormalBasis ℝ E i) * x i) := by
    ext x; simp [mul_comm]
  rw [this, variance_sum_pi]
  · change ∑ i, Var[fun x ↦ _ * (id x); gaussianReal 0 1] = _
    simp_rw [variance_const_mul, variance_id_gaussianReal, (stdOrthonormalBasis ℝ E).norm_dual]
    simp
  · exact fun i ↦ IsGaussian.memLp_two_id.const_mul _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6953dbcb994d3358f2f7238bede0f93582fd4681` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
