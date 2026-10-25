# mkPropagateEqTrueProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c354523d4a56d37d4d5d807fa092f95cc9221bab1215d9f2292aacc88442a89e",
  "kind": "def",
  "lexical_name": "mkPropagateEqTrueProof",
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
  "slug": "mkpropagateeqtrueproof--e90cb93ec0733dc2c35e279b",
  "source": {
    "blob": "4639e87c7e5fcd21a73bd0e32072ba2f5fd1fd85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant46ec6cebc3cccfa318b871e4a725c20b167de093c570de84517ed68cf79dbe55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e90cb93ec0733dc2c35e279be2f6a4a326b402bf879f167471c0c124669ce148",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant46ec6cebc3cccfa318b871e4a725c20b167de093c570de84517ed68cf79dbe55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c354523d4a56d37d4d5d807fa092f95cc9221bab1215d9f2292aacc88442a89e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkPropagateEqTrueProof (u v : Expr) (k : Weight) (huv : Expr) (k' : Weight) : OrderM Expr := do
  if (← isRing) then
    mkPropagateEqTrueProofOffset u v k huv k'
  else
    mkPropagateEqTrueProofCore u v k huv k'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant46ec6cebc3cccfa318b871e4a725c20b167de093c570de84517ed68cf79dbe55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant46ec6cebc3cccfa318b871e4a725c20b167de093c570de84517ed68cf79dbe55.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4639e87c7e5fcd21a73bd0e32072ba2f5fd1fd85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
