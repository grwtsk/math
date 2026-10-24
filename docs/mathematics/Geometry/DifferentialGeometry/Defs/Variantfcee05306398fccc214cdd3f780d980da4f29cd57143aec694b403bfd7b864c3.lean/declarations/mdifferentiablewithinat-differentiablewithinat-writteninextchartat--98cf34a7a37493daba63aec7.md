# MDifferentiableWithinAt.differentiableWithinAt_writtenInExtChartAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0831d25b-8d48-ca2b-6f23-695614298a94",
  "kind": "theorem",
  "lexical_name": "MDifferentiableWithinAt.differentiableWithinAt_writtenInExtChartAt",
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
  "slug": "mdifferentiablewithinat-differentiablewithinat-writteninextchartat--98cf34a7a37493daba63aec7",
  "source": {
    "blob": "f7b06aec9c2f5d2ae4645ff68085386565fcf2ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 237,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98cf34a7a37493daba63aec70aa9125ecefbb447799cef6eaeb3ed03ce7131f8",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0831d25b-8d48-ca2b-6f23-695614298a94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MDifferentiableWithinAt.differentiableWithinAt_writtenInExtChartAt
    {f : M → M'} {s : Set M} {x : M} (hf : MDifferentiableWithinAt I I' f s x) :
    DifferentiableWithinAt 𝕜 (writtenInExtChartAt I I' x f)
      ((extChartAt I x).symm ⁻¹' s ∩ range I) ((extChartAt I x) x) :=
  mdifferentiableWithinAt_iff' .. |>.1 hf |>.2

variable (I I') in
/-- `MDifferentiableAt I I' f x` indicates that the function `f` between manifolds
has a derivative at the point `x`.
This is a generalization of `DifferentiableAt` to manifolds.

We require continuity in the definition, as otherwise points close to `x` could be sent by
`f` outside of the chart domain around `f x`. Then the chart could do anything to the image points,
and in particular by coincidence `writtenInExtChartAt I I' x f` could be differentiable, while
this would not mean anything relevant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7b06aec9c2f5d2ae4645ff68085386565fcf2ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
