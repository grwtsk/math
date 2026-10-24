# finite_spectral_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b1abe63ba15398493a2d16d90b0fb720f8d99b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b975cbd-300d-e69a-24bb-999deeafac55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9ddf415-ac3e-e6f7-6d36-0f8107dd11df",
  "kind": "theorem",
  "lexical_name": "finite_spectral_product_integrable",
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
  "slug": "finite-spectral-product-integrable--f0dd5d6a038ea871ac7a217a",
  "source": {
    "blob": "2b1abe63ba15398493a2d16d90b0fb720f8d99b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0dd5d6a038ea871ac7a217a343a8a599f1ee29fc9d3486108caede5de53a182",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9ddf415-ac3e-e6f7-6d36-0f8107dd11df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_spectral_product_integrable (A : ℝ) (hA : 1 ≤ A)
    (S T : Finset ℕ) (a b : ℕ → ℝ) :
    Integrable (fun ξ ↦ (spectralWeight A ξ : ℂ) *
      dirichletPolynomial S a ξ * dirichletPolynomial T b ξ) := by
  have hp (S : Finset ℕ) (a : ℕ → ℝ) :
      Continuous (dirichletPolynomial S a) := by
    unfold dirichletPolynomial
    fun_prop
  have hw := Complex.ofRealCLM.integrable_comp (spectralWeight_integrable_mass A hA).1
  exact (hw.mul_bdd (hp S a).aestronglyMeasurable
    (Filter.Eventually.of_forall (dirichletPolynomial_norm_le S a))).mul_bdd
      (hp T b).aestronglyMeasurable
      (Filter.Eventually.of_forall (dirichletPolynomial_norm_le T b))

/-- Finite spectral factorization uses two equal phase signs, with no conjugation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variant74426b1563f4ecdbeb3f2d74dde83246e025e319b161b84fa88978aba584dbca.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1abe63ba15398493a2d16d90b0fb720f8d99b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
