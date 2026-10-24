# integral_integral_add

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
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6fb44cd-e015-0c58-fd1c-d7b30b4627b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0bd8064-7124-922a-7bf0-8017fa37bca1",
  "kind": "theorem",
  "lexical_name": "integral_integral_add",
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
  "slug": "integral-integral-add--9b68d9bcaa0875674424fbd4",
  "source": {
    "blob": "15120f67a0852374a3c7892571e950caa92ca4fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 387,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b68d9bcaa0875674424fbd462ccd25213a7d993a222f336fe8e4d02e04d61f8",
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

Occurrence: `result:b0bd8064-7124-922a-7bf0-8017fa37bca1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_integral_add ⦃f g : α × β → E⦄ (hf : Integrable f (μ.prod ν))
    (hg : Integrable g (μ.prod ν)) :
    (∫ x, ∫ y, f (x, y) + g (x, y) ∂ν ∂μ) = (∫ x, ∫ y, f (x, y) ∂ν ∂μ) + ∫ x, ∫ y, g (x, y) ∂ν ∂μ :=
  (integral_fn_integral_add id hf hg).trans <|
    integral_add hf.integral_prod_left hg.integral_prod_left
#align measure_theory.integral_integral_add MeasureTheory.integral_integral_add

/-- Double integrals commute with addition. This is the version with `(f + g) (x, y)`
  (instead of `f (x, y) + g (x, y)`) in the LHS. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantcb780861b7c076d65e9340a47a94995daeb260e19b47695b7aae95d0660bcc3b.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15120f67a0852374a3c7892571e950caa92ca4fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
