# OppositionStructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e62bdb8c890cf35c3383e48b6e4af659e9ac16ad334da9dbc8d74003ce23c92e",
  "kind": "structure",
  "lexical_name": "OppositionStructure",
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
  "slug": "oppositionstructure--b145f111c46a4d3c9838f379",
  "source": {
    "blob": "4b5b6071d69f513b7b58b43c9b22515fda246004",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 46,
    "path": "GRWTSK/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b145f111c46a4d3c9838f37922009cb382f37c7a72c3181de9c9e25947df99bf",
  "verification": {
    "reference": "docs/verification/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e62bdb8c890cf35c3383e48b6e4af659e9ac16ad334da9dbc8d74003ce23c92e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OppositionStructure
    (kernel : PositiveKernel RhetoricalIndex) where
  roleOpposite : RhetoricalRole → RhetoricalRole
  involutive : Function.Involutive roleOpposite
  kernelInvariant :
    ∀ (left right : Universe.ConceptId) (leftRole rightRole : RhetoricalRole),
      kernel (left, roleOpposite leftRole) (right, roleOpposite rightRole) =
        kernel (left, leftRole) (right, rightRole)

namespace OppositionStructure

variable {kernel : PositiveKernel RhetoricalIndex}

/-- The concept-preserving involution on kernel indices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Opposition/Variantae98511c9ed480eb4c520d33afbaec7299ce90b6e1f1a640065d5ffbd178216d.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b5b6071d69f513b7b58b43c9b22515fda246004` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
