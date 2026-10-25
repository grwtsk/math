# finiteBoundaryEventFamilies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fdc3a3b5d82c870627226c4528e75f5824c8dd93c7a584fa8f74c751bda1224",
  "kind": "def",
  "lexical_name": "finiteBoundaryEventFamilies",
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
  "slug": "finiteboundaryeventfamilies--c425a062d11eea5a54dbadd3",
  "source": {
    "blob": "d9daf6805afbd3480d148f3451fef7025657d6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f46696e697465426f756e6461727943616c63756/Variantea5036e9ef870b2c70833b892f514cc2441a05c2ef3b6632fc067bcb4684ca15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c425a062d11eea5a54dbadd3781c7f9642a71aca76642b7cbd4d367e4803c65c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f46696e697465426f756e6461727943616c63756/Variantea5036e9ef870b2c70833b892f514cc2441a05c2ef3b6632fc067bcb4684ca15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0fdc3a3b5d82c870627226c4528e75f5824c8dd93c7a584fa8f74c751bda1224`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteBoundaryEventFamilies : List FiniteBoundaryEventFamily := [
  FiniteBoundaryEventFamily.selectorEvents,
  FiniteBoundaryEventFamily.backtrackEvents,
  FiniteBoundaryEventFamily.fixedPointResidueEvents,
  FiniteBoundaryEventFamily.boundaryExpansionRequestEvents,
  FiniteBoundaryEventFamily.newLeafInjectionEvents,
  FiniteBoundaryEventFamily.fixedPointRefereeReviewEvents
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f46696e697465426f756e6461727943616c63756/Variantea5036e9ef870b2c70833b892f514cc2441a05c2ef3b6632fc067bcb4684ca15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f46696e697465426f756e6461727943616c63756/Variantea5036e9ef870b2c70833b892f514cc2441a05c2ef3b6632fc067bcb4684ca15.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9daf6805afbd3480d148f3451fef7025657d6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
