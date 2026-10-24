# StickyObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad864d9ff36c6cc37525d92308799f9b0b108e09e6abe1202a5f6edda11cdc65",
  "kind": "structure",
  "lexical_name": "StickyObstruction",
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
  "slug": "stickyobstruction--7834bfc1d5dd65f01d078b7a",
  "source": {
    "blob": "57e78c7d1f6bd1782c044105b0eb00826bae041e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 58,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RobinMassGapGlitchResolution/Variant67993216f56ce7c8fb4f558539c0c0ab65d0261e1c46c2e076d8022982acda38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7834bfc1d5dd65f01d078b7ab7c98eb2692a9a1fe7dc4624bc1f0531dbd4412e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RobinMassGapGlitchResolution/Variant67993216f56ce7c8fb4f558539c0c0ab65d0261e1c46c2e076d8022982acda38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad864d9ff36c6cc37525d92308799f9b0b108e09e6abe1202a5f6edda11cdc65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StickyObstruction where
  residue : DegaussResidue
  robinBoundary : RobinBoundaryCertificate
  massGapBoundary : MassGapStickyBoundary
  robinBoundaryFailsOrIsSharp : Prop
  robinBoundaryFailsOrIsSharp_certified : robinBoundaryFailsOrIsSharp
  massGapBoundarySticky : Prop
  massGapBoundarySticky_certified : massGapBoundarySticky
  noInternalPolynomialSmoothingKnown : Prop
  noInternalPolynomialSmoothingKnown_certified :
    noInternalPolynomialSmoothingKnown
  sourceLabel : String

/--
Resolved glitch classification.

Resolution means accounting: a degauss residue is either smoothly resolved by
internal polynomial data or classified as a sticky obstruction. It does not
produce a universal polynomial-time solver.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RobinMassGapGlitchResolution/Variant67993216f56ce7c8fb4f558539c0c0ab65d0261e1c46c2e076d8022982acda38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RobinMassGapGlitchResolution/Variant67993216f56ce7c8fb4f558539c0c0ab65d0261e1c46c2e076d8022982acda38.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57e78c7d1f6bd1782c044105b0eb00826bae041e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
