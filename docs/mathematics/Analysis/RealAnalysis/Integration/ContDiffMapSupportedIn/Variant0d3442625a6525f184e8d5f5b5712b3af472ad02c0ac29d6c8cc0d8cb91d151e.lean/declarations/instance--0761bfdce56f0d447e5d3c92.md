# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cb334054546c18a69b4e08b3060fc8e235e66e4c18cf9ccaee6f21b9c4034d5",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--0761bfdce56f0d447e5d3c92",
  "source": {
    "blob": "e40ab3ba02ca5ed3d5a262fe8ddf049c8c28b72e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 792,
    "line": 786,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant0d3442625a6525f184e8d5f5b5712b3af472ad02c0ac29d6c8cc0d8cb91d151e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0761bfdce56f0d447e5d3c921f723646da6c017f39325aa9eeb2e2e8828fa515",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant0d3442625a6525f184e8d5f5b5712b3af472ad02c0ac29d6c8cc0d8cb91d151e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cb334054546c18a69b4e08b3060fc8e235e66e4c18cf9ccaee6f21b9c4034d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 786–792.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : T3Space 𝓓^{n}_{K}(E, F) :=
  have : Injective (toBoundedContinuousFunctionCLM ℝ : 𝓓^{n}_{K}(E, F) →L[ℝ] E →ᵇ F) :=
    fun _ _ hfg ↦ ext fun x ↦ congr(($hfg : E → F) x)
  have : T2Space 𝓓^{n}_{K}(E, F) := .of_injective_continuous this
    (toBoundedContinuousFunctionCLM ℝ).continuous
  inferInstance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant0d3442625a6525f184e8d5f5b5712b3af472ad02c0ac29d6c8cc0d8cb91d151e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant0d3442625a6525f184e8d5f5b5712b3af472ad02c0ac29d6c8cc0d8cb91d151e.lean#L786).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e40ab3ba02ca5ed3d5a262fe8ddf049c8c28b72e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
