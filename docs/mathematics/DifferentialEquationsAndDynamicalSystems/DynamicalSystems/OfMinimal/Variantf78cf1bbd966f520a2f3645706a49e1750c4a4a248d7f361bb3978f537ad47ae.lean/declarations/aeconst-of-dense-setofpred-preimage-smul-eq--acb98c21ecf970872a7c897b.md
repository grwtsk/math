# aeconst_of_dense_setOfPred_preimage_smul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ddd7cec402cb285436cbd9af9d8272ffe51505f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f78cf1bbd966f520a2f3645706a49e1750c4a4a248d7f361bb3978f537ad47ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b02324ca-4594-a8e6-78a3-fa3f403cf1f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90e82d62-9a5e-bf16-807f-a3aa9c9368f1",
  "kind": "theorem",
  "lexical_name": "aeconst_of_dense_setOfPred_preimage_smul_eq",
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
  "slug": "aeconst-of-dense-setofpred-preimage-smul-eq--acb98c21ecf970872a7c897b",
  "source": {
    "blob": "2ddd7cec402cb285436cbd9af9d8272ffe51505f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 71,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantf78cf1bbd966f520a2f3645706a49e1750c4a4a248d7f361bb3978f537ad47ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acb98c21ecf970872a7c897be1ac3598f3f3933b291e4f9d04ddcec6d9272624",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantf78cf1bbd966f520a2f3645706a49e1750c4a4a248d7f361bb3978f537ad47ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90e82d62-9a5e-bf16-807f-a3aa9c9368f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeconst_of_dense_setOfPred_preimage_smul_eq (hsm : NullMeasurableSet s μ)
    (hd : Dense {g : M | (g • ·) ⁻¹' s = s}) : EventuallyEmptyOrUniv s (ae μ) :=
  aeconst_of_dense_setOfPred_preimage_smul_ae hsm <| hd.mono fun _ h ↦ mem_ofPred.2 <| .of_eq h

@[deprecated (since := "2026-07-09")]
alias aeconst_of_dense_setOf_preimage_smul_eq := aeconst_of_dense_setOfPred_preimage_smul_eq

@[deprecated (since := "2026-07-09")]
alias aeconst_of_dense_setOf_preimage_vadd_eq := aeconst_of_dense_setOfPred_preimage_vadd_eq

/-- If a monoid `M` continuously acts on an R₁ topological space `X`,
`g` is an element of `M` such that its natural powers are dense in `M`,
and `μ` is a finite inner regular measure on `X` which is ergodic with respect to the action of `M`,
then the scalar multiplication by `g` is an ergodic map. -/
@[to_additive /-- If an additive monoid `M` continuously acts on an R₁ topological space `X`,
`g` is an element of `M` such that its natural multiples are dense in `M`,
and `μ` is a finite inner regular measure on `X` which is ergodic with respect to the action of `M`,
then the vector addition of `g` is an ergodic map. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantf78cf1bbd966f520a2f3645706a49e1750c4a4a248d7f361bb3978f537ad47ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantf78cf1bbd966f520a2f3645706a49e1750c4a4a248d7f361bb3978f537ad47ae.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ddd7cec402cb285436cbd9af9d8272ffe51505f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
