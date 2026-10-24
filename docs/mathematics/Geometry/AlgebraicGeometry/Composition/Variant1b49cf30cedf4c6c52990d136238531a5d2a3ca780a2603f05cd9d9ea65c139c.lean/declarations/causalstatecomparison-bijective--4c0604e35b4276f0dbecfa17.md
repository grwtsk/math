# causalStateComparison_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39982a2a-9b3f-3bb4-7aa2-a4eaf5ac3c44",
  "kind": "theorem",
  "lexical_name": "causalStateComparison_bijective",
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
  "slug": "causalstatecomparison-bijective--4c0604e35b4276f0dbecfa17",
  "source": {
    "blob": "08b365b2d93362f3eca7c4354b7deffa5aa52196",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 202,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Composition/Variant1b49cf30cedf4c6c52990d136238531a5d2a3ca780a2603f05cd9d9ea65c139c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c0604e35b4276f0dbecfa175a43200ba6566c24a7e0215991fa9f0e2badd66c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Composition/Variant1b49cf30cedf4c6c52990d136238531a5d2a3ca780a2603f05cd9d9ea65c139c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39982a2a-9b3f-3bb4-7aa2-a4eaf5ac3c44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalStateComparison_bijective (F : M.Iso N) :
    Comparison.IsBijective F.causalStateComparisonSpec :=
  F.causalStateEquiv.bijective

end Iso

end System

namespace Refinement

variable {Spec Impl : System}

/-- The existing implementation abstraction map as a comparison. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Composition/Variant1b49cf30cedf4c6c52990d136238531a5d2a3ca780a2603f05cd9d9ea65c139c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Composition/Variant1b49cf30cedf4c6c52990d136238531a5d2a3ca780a2603f05cd9d9ea65c139c.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08b365b2d93362f3eca7c4354b7deffa5aa52196` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
