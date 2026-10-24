# DeterminantLineFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4703bcf1feeff4b9f4805a25c8ec9c26a1de504a7653c893bd52a0ed6b4259c",
  "kind": "structure",
  "lexical_name": "DeterminantLineFamily",
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
  "slug": "determinantlinefamily--245db7c0656213b5359e8fc0",
  "source": {
    "blob": "b39d225a3d314095a5621d7bf95d6c96e18f34e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 26,
    "path": "GRWTSK/Algebra/LinearAlgebra/DeterminantLinePropagation/Variantaafe5b43df8b9c495b47c14c6a287eb83d4ff8d36512949f451ab67bbfe20b6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:245db7c0656213b5359e8fc065449c913149c634c7d1d52bf2a465e4596c96e3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DeterminantLinePropagation/Variantaafe5b43df8b9c495b47c14c6a287eb83d4ff8d36512949f451ab67bbfe20b6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4703bcf1feeff4b9f4805a25c8ec9c26a1de504a7653c893bd52a0ed6b4259c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DeterminantLineFamily
    (F : PerfectSectionComplexFamily) where
  DeterminantLine : Type
  determinantOfCohomology : Prop
  deformsCompatibly : Prop
  nonzeroAnchor : Prop
  nonzeroAnchor_certified : nonzeroAnchor
  propagatesOnConnectedComponent : Prop
  propagatesOnConnectedComponent_certified : propagatesOnConnectedComponent
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DeterminantLinePropagation/Variantaafe5b43df8b9c495b47c14c6a287eb83d4ff8d36512949f451ab67bbfe20b6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DeterminantLinePropagation/Variantaafe5b43df8b9c495b47c14c6a287eb83d4ff8d36512949f451ab67bbfe20b6e.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b39d225a3d314095a5621d7bf95d6c96e18f34e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
