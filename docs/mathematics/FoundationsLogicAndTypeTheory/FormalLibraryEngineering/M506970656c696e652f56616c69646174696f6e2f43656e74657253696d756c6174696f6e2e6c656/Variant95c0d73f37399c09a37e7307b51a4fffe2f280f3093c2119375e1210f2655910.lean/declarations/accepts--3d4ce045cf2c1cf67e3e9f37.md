# accepts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:838e6d27be8fcdf40b552860ac010cd5b4cfcffa50ee538c5133093ca2104b8c",
  "kind": "def",
  "lexical_name": "accepts",
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
  "slug": "accepts--3d4ce045cf2c1cf67e3e9f37",
  "source": {
    "blob": "4d6904bea0a62699558070d7182e5bd9000b8aec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f43656e74657253696d756c6174696f6e2e6c656/Variant95c0d73f37399c09a37e7307b51a4fffe2f280f3093c2119375e1210f2655910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d4ce045cf2c1cf67e3e9f37dd226c3f1be4d8afb1ec2a0508d1847545c3f45f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f43656e74657253696d756c6174696f6e2e6c656/Variant95c0d73f37399c09a37e7307b51a4fffe2f280f3093c2119375e1210f2655910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:838e6d27be8fcdf40b552860ac010cd5b4cfcffa50ee538c5133093ca2104b8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def accepts (v : CenterSimulationValidator) : Bool :=
  v.locusContainsKappa &&
    v.coreLeafAtKappa &&
    v.boundaryLeavesSumZero &&
    v.centroidIsKappa &&
    v.circumcenterIsKappa &&
    v.medoidIsKappa &&
    v.noOverlapOnlyAtKappa &&
    v.residueAtLeafBoundary &&
    v.hiddenInternalResidueRefused &&
    v.boundaryNotProofAuthority

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f43656e74657253696d756c6174696f6e2e6c656/Variant95c0d73f37399c09a37e7307b51a4fffe2f280f3093c2119375e1210f2655910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f43656e74657253696d756c6174696f6e2e6c656/Variant95c0d73f37399c09a37e7307b51a4fffe2f280f3093c2119375e1210f2655910.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d6904bea0a62699558070d7182e5bd9000b8aec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
