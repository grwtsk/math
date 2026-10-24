# norm_sq_prime_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5627e313051e182825d48bb489edc6d136a21ed1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0684ab8-c648-69bd-1c36-25d590d517f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb0114af-1e0b-404e-2ded-8af49ef7cf96",
  "kind": "lemma",
  "lexical_name": "norm_sq_prime_term",
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
  "slug": "norm-sq-prime-term--dd291bd2577867fd8d6496a1",
  "source": {
    "blob": "5627e313051e182825d48bb489edc6d136a21ed1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd291bd2577867fd8d6496a1ebe7785fa1fbba3f73d70b538e39d7f063dd5040",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb0114af-1e0b-404e-2ded-8af49ef7cf96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_sq_prime_term (L : ℝ) (z : ℂ) :
    ‖-(L : ℂ) + z * (L : ℂ) ^ 2‖ ^ 2 = L ^ 2 - 2 * z.re * L ^ 3 + (z.re ^ 2 + z.im ^ 2) * L ^ 4 := by
  have hL2 : ((L : ℂ)) ^ 2 = ((L ^ 2 : ℝ) : ℂ) := by push_cast; ring
  rw [hL2, Complex.sq_norm, Complex.normSq_apply]
  simp only [Complex.add_re, Complex.neg_re, Complex.ofReal_re, Complex.mul_re, Complex.add_im,
    Complex.neg_im, Complex.ofReal_im, Complex.mul_im]
  ring

/-- `(Re Λ⁻¹)² + (Im Λ⁻¹)² = ‖Λ‖⁻²`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5627e313051e182825d48bb489edc6d136a21ed1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
