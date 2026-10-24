# integral_integral_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15120f67a0852374a3c7892571e950caa92ca4fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 403,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f169a5d-55ce-39b5-1a6e-16f340ce7d2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38416c35-30b0-85e3-1771-5219e08a7cf5",
  "kind": "theorem",
  "lexical_name": "integral_integral_sub",
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
  "slug": "integral-integral-sub--3f64cc9b10df884d243951da",
  "source": {
    "blob": "15120f67a0852374a3c7892571e950caa92ca4fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 403,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f64cc9b10df884d243951da996ad82ddb3de2a4e0b29f461bf651f1c1928c67",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38416c35-30b0-85e3-1771-5219e08a7cf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_integral_sub ⦃f g : α × β → E⦄ (hf : Integrable f (μ.prod ν))
    (hg : Integrable g (μ.prod ν)) :
    (∫ x, ∫ y, f (x, y) - g (x, y) ∂ν ∂μ) = (∫ x, ∫ y, f (x, y) ∂ν ∂μ) - ∫ x, ∫ y, g (x, y) ∂ν ∂μ :=
  (integral_fn_integral_sub id hf hg).trans <|
    integral_sub hf.integral_prod_left hg.integral_prod_left
#align measure_theory.integral_integral_sub MeasureTheory.integral_integral_sub

/-- Double integrals commute with subtraction. This is the version with `(f - g) (x, y)`
  (instead of `f (x, y) - g (x, y)`) in the LHS. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15120f67a0852374a3c7892571e950caa92ca4fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
