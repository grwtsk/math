# three_moments_match_but_fourth_differs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60f8ec0bf5fa9c98123ec6d899949079efe86484",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cff62fc0-db41-52b9-a97a-a56367767465",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94383f6a-4209-0960-69e9-a9a85810931f",
  "kind": "theorem",
  "lexical_name": "three_moments_match_but_fourth_differs",
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
  "slug": "three-moments-match-but-fourth-differs--7e2feb08e88709c07c1d31fa",
  "source": {
    "blob": "60f8ec0bf5fa9c98123ec6d899949079efe86484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 173,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e2feb08e88709c07c1d31fa76643e24071e5e9a60fdaa0f6cd83296cfa2fa17",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94383f6a-4209-0960-69e9-a9a85810931f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem three_moments_match_but_fourth_differs :
    (∀ n < 3, (twoSiteFree ^ n) 0 0 = (twoSiteSecondPotential ^ n) 0 0) ∧
      (twoSiteFree ^ 3) 0 0 ≠ (twoSiteSecondPotential ^ 3) 0 0 := by
  constructor
  · intro n hn
    interval_cases n <;> norm_num [twoSiteFree, twoSiteSecondPotential,
      pow_succ, Matrix.mul_apply, Fin.sum_univ_two]
  · norm_num [twoSiteFree, twoSiteSecondPotential,
      pow_succ, Matrix.mul_apply, Fin.sum_univ_two]

/-- A zero first cyclic coefficient does not say that the cyclic vector is
a zero eigenvector: the same free fixture sends `e₀` to `e₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiDeformation/Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60f8ec0bf5fa9c98123ec6d899949079efe86484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
