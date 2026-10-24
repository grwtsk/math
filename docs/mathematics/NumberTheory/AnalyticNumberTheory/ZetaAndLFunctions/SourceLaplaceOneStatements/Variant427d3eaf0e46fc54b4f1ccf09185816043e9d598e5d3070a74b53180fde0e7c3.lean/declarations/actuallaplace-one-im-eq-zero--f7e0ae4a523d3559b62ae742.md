# actualLaplace_one_im_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "908d73ab9eb8cf4d0ce217cc58cf0d485fbbad97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/427d3eaf0e46fc54b4f1ccf09185816043e9d598e5d3070a74b53180fde0e7c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38fc724b-5e8e-3dc6-6d7c-c72ab411570c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3310459-121f-f0f4-8471-5857d07dfed1",
  "kind": "theorem",
  "lexical_name": "actualLaplace_one_im_eq_zero",
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
  "slug": "actuallaplace-one-im-eq-zero--f7e0ae4a523d3559b62ae742",
  "source": {
    "blob": "908d73ab9eb8cf4d0ce217cc58cf0d485fbbad97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneStatements/Variant427d3eaf0e46fc54b4f1ccf09185816043e9d598e5d3070a74b53180fde0e7c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7e0ae4a523d3559b62ae7422e27724eb8bb00855baa4642bb5b0c9ba6c93195",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneStatements/Variant427d3eaf0e46fc54b4f1ccf09185816043e9d598e5d3070a74b53180fde0e7c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3310459-121f-f0f4-8471-5857d07dfed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLaplace_one_im_eq_zero : (actualLaplace 1).im = 0 := by
  rw [actualLaplace, fixedKernel_laplace_eq_transferProduct 1 (by norm_num), V_one_eq]
  have he : Complex.exp (-1) = (Real.exp (-1) : ℂ) := by
    simp
  rw [he]
  have hz : (riemannZeta (1 / 2 + 1 : ℂ)).im = 0 := by
    convert riemannZeta_im_eq_zero_of_one_lt (by norm_num : (1 : ℝ) < 3 / 2) using 1
    norm_num
  simp only [Complex.mul_im, Complex.ofReal_im, Complex.ofReal_re, hz,
    zero_mul, mul_zero, add_zero]

end
end SourceLaplaceOneScratch

open SourceLaplaceOneScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter FixedLaplaceContinuation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneStatements/Variant427d3eaf0e46fc54b4f1ccf09185816043e9d598e5d3070a74b53180fde0e7c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneStatements/Variant427d3eaf0e46fc54b4f1ccf09185816043e9d598e5d3070a74b53180fde0e7c3.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `908d73ab9eb8cf4d0ce217cc58cf0d485fbbad97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
