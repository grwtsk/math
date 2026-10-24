# actualFull_ae_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:948e526c-2cc6-0760-6c1d-c92e24d80b2b",
  "kind": "theorem",
  "lexical_name": "actualFull_ae_convolution",
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
  "slug": "actualfull-ae-convolution--baebd2ac1a8424ec11bc68e1",
  "source": {
    "blob": "0fc6a7f6d151be2063ef640de560e9f954ccc242",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 393,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baebd2ac1a8424ec11bc68e182b2a4771dd8dc6dc17a1557a988cbaeb154f954",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:948e526c-2cc6-0760-6c1d-c92e24d80b2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFull_ae_convolution (f : FullH) :
    actualFull f =ᵐ[volume] convolutionFunction f := by
  apply ae_eq_of_forall_setIntegral_eq_of_sigmaFinite
  · intro B _ hB
    exact integrableOn_Lp_of_measure_ne_top (actualFull f) (by norm_num) hB.ne
  · intro B _ hB
    exact convolutionFunction_integrableOn f B hB
  · intro B hB hBfin
    rw [vector_setIntegral f B hB hBfin]
    exact integral_integral_swap (convolution_product_integrable f B hBfin)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fc6a7f6d151be2063ef640de560e9f954ccc242` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
