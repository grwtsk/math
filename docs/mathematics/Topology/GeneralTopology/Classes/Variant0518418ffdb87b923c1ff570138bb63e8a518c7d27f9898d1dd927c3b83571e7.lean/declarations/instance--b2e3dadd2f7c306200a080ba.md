# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc1fbff06a202014a10287992124120af50812ff786d0e59812b008321d0436f",
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
  "slug": "instance--b2e3dadd2f7c306200a080ba",
  "source": {
    "blob": "b842079ae9aa2747506332d1b6be775898c35902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/Classes/Variant0518418ffdb87b923c1ff570138bb63e8a518c7d27f9898d1dd927c3b83571e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2e3dadd2f7c306200a080ba9238788ab7ba9ba76d2be552ca7cb4b99bfab83f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Classes/Variant0518418ffdb87b923c1ff570138bb63e8a518c7d27f9898d1dd927c3b83571e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc1fbff06a202014a10287992124120af50812ff786d0e59812b008321d0436f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : CommCStarAlgebra ℂ where

namespace IsMulCommutative

/-- A `NonUnitalCStarAlgebra` which `IsMulCommutative` is a `NonUnitalCommCStarAlgebra`.

This is primarily used to deduce the bundled version from the unbundled one for commutative
subobjects in a noncommutative ambient type. As such this is only available inside the
`IsMulCommutative` scope so as to avoid deleterious effects to type class synthesis for bundled
commutativity.

See note [commutative subobjects]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Classes/Variant0518418ffdb87b923c1ff570138bb63e8a518c7d27f9898d1dd927c3b83571e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Classes/Variant0518418ffdb87b923c1ff570138bb63e8a518c7d27f9898d1dd927c3b83571e7.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b842079ae9aa2747506332d1b6be775898c35902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
