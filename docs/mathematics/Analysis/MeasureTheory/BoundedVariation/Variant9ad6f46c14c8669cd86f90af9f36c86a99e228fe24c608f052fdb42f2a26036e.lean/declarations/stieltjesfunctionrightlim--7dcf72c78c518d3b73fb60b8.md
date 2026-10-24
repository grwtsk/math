# stieltjesFunctionRightLim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:373985e0ed9fb3bfe3cf8d5bd30cbb4f1dc90c749cbd3d5d9c74403ead513515",
  "kind": "def",
  "lexical_name": "stieltjesFunctionRightLim",
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
  "slug": "stieltjesfunctionrightlim--7dcf72c78c518d3b73fb60b8",
  "source": {
    "blob": "ca3053ee83217a2ddf45a8ce3807e402b754acdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7dcf72c78c518d3b73fb60b8856b8e10846a819a0b1464c2d30172ae219d83b7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:373985e0ed9fb3bfe3cf8d5bd30cbb4f1dc90c749cbd3d5d9c74403ead513515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] noncomputable def stieltjesFunctionRightLim
    (hf : BoundedVariationOn f univ) (x₀ : α) : StieltjesFunction α where
  toFun x := variationOnFromTo f.rightLim univ x₀ x
  mono' := by
    rw [← monotoneOn_univ]
    exact variationOnFromTo.monotoneOn hf.rightLim.locallyBoundedVariationOn (mem_univ _)
  right_continuous' x := hf.continuousWithinAt_variationOnFromTo_rightLim_Ici

open scoped Classical in
/-- Auxiliary measure used to construct the vector measure associated to a bounded variation
function. This is *not* the total variation of this measure in general, as we need to adjust things
when there is a bot element by adding a Dirac mass there. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant9ad6f46c14c8669cd86f90af9f36c86a99e228fe24c608f052fdb42f2a26036e.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3053ee83217a2ddf45a8ce3807e402b754acdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
