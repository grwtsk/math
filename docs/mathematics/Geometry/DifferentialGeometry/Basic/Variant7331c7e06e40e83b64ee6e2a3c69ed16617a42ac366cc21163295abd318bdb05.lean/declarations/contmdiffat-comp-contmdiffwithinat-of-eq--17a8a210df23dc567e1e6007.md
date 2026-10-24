# ContMDiffAt.comp_contMDiffWithinAt_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3156ccbe-f9cd-4619-3a88-175e8ea0acf0",
  "kind": "theorem",
  "lexical_name": "ContMDiffAt.comp_contMDiffWithinAt_of_eq",
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
  "slug": "contmdiffat-comp-contmdiffwithinat-of-eq--17a8a210df23dc567e1e6007",
  "source": {
    "blob": "4d602545af9c564c34abd31ced9fd416ae58cb1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 131,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant7331c7e06e40e83b64ee6e2a3c69ed16617a42ac366cc21163295abd318bdb05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17a8a210df23dc567e1e6007f08294cc7343d3d4d501a4b0a7b7a42e9189d7d1",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant7331c7e06e40e83b64ee6e2a3c69ed16617a42ac366cc21163295abd318bdb05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3156ccbe-f9cd-4619-3a88-175e8ea0acf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffAt.comp_contMDiffWithinAt_of_eq {g : M' → M''} {x : M} {y : M'}
    (hg : ContMDiffAt I' I'' n g y) (hf : ContMDiffWithinAt I I' n f s x) (hx : f x = y) :
    ContMDiffWithinAt I I'' n (g ∘ f) s x := by
  subst hx; exact hg.comp_contMDiffWithinAt x hf

/-- The composition of `C^n` functions at points is `C^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant7331c7e06e40e83b64ee6e2a3c69ed16617a42ac366cc21163295abd318bdb05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant7331c7e06e40e83b64ee6e2a3c69ed16617a42ac366cc21163295abd318bdb05.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d602545af9c564c34abd31ced9fd416ae58cb1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
