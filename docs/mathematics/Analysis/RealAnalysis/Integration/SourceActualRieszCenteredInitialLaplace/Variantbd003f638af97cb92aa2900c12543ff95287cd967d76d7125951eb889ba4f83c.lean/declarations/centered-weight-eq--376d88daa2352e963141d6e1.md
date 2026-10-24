# centered_weight_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:665860f7-8946-e745-f065-deb0fdcecaa7",
  "kind": "theorem",
  "lexical_name": "centered_weight_eq",
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
  "slug": "centered-weight-eq--376d88daa2352e963141d6e1",
  "source": {
    "blob": "a3bd287b969126cbf166c17b1dc7c8c32b926e29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantbd003f638af97cb92aa2900c12543ff95287cd967d76d7125951eb889ba4f83c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:376d88daa2352e963141d6e1f4521caa7993aa05db154ebf6e595f97d43dcafd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantbd003f638af97cb92aa2900c12543ff95287cd967d76d7125951eb889ba4f83c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:665860f7-8946-e745-f065-deb0fdcecaa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem centered_weight_eq (z : ℂ) (α b t : ℝ) :
    ((actualMangoldtRieszPrimitive t - α * t - b : ℝ) : ℂ) *
        Complex.exp (-z * (t : ℂ)) =
      (actualMangoldtRieszPrimitive t : ℂ) * Complex.exp (-z * (t : ℂ)) -
        (α : ℂ) * ((t : ℂ) * Complex.exp (-z * (t : ℂ))) -
        (b : ℂ) * Complex.exp (-z * (t : ℂ)) := by
  push_cast
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantbd003f638af97cb92aa2900c12543ff95287cd967d76d7125951eb889ba4f83c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantbd003f638af97cb92aa2900c12543ff95287cd967d76d7125951eb889ba4f83c.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3bd287b969126cbf166c17b1dc7c8c32b926e29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
