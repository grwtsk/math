# extended_boundary_kernel_eq_pole_operator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce1fff37dbb2cb87686318afaaa1ad07a7058802",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8db48bd7-be53-7731-c361-669d02e67a36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:906dfc0d-e44d-098f-00b1-2a36be186c47",
  "kind": "theorem",
  "lexical_name": "extended_boundary_kernel_eq_pole_operator",
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
  "slug": "extended-boundary-kernel-eq-pole-operator--9303c5f893d2d187862ca9cc",
  "source": {
    "blob": "ce1fff37dbb2cb87686318afaaa1ad07a7058802",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9303c5f893d2d187862ca9cc1edcbf9507705c6673be1dcecd9ed2d1ef549670",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:906dfc0d-e44d-098f-00b1-2a36be186c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extended_boundary_kernel_eq_pole_operator (A y : ℝ) :
    extendedBoundaryKernel A y =
      poleSquaredDifferentialOperator (boundaryRieszBase A) y / sourceNormalization A := by
  unfold poleSquaredDifferentialOperator
  rw [boundary_riesz_base_second_deriv, boundary_riesz_base_fourth_deriv]
  unfold extendedBoundaryKernel boundaryRieszBase
  ring

/-- The finite extension has its exact real monomial sum, with both derivative terms retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundaryRieszKernel/Variant5a58c3ceaa3ecc88b3e2851a2d175de74dd07570ca880481550996b552f7dc5c.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce1fff37dbb2cb87686318afaaa1ad07a7058802` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
