# CarrierIndexedState.carrierEquivExactCarrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:deca02d546c18ea44d7df968e4d1e62a56c00e2504aab30e288577dc61282390",
  "kind": "def",
  "lexical_name": "CarrierIndexedState.carrierEquivExactCarrier",
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
  "slug": "carrierindexedstate-carrierequivexactcarrier--860b3dc4e74c1a4c612c1395",
  "source": {
    "blob": "85fd27fbb968fa40ba7285ca6846083053d6dd94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variante09ea3ea4913de6750c8cc07e17f5fd4219a86b6a7cd1159c0925233400759ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:860b3dc4e74c1a4c612c13955e4ca64c01a287bbd10d9a333102bad85b0f2e1a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variante09ea3ea4913de6750c8cc07e17f5fd4219a86b6a7cd1159c0925233400759ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:deca02d546c18ea44d7df968e4d1e62a56c00e2504aab30e288577dc61282390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def CarrierIndexedState.carrierEquivExactCarrier
    {size carrierCount : Nat}
    (state : CarrierIndexedState size carrierCount) :
    Fin carrierCount ≃
      { cell : GridCell size size // ExactCarrier size state.sourcePoint cell } where
  toFun index := ⟨state.carrier index, state.carrierSound index⟩
  invFun cell := Classical.choose (state.carrierComplete cell.1 cell.2)
  left_inv index := by
    apply state.carrierInjective
    exact Classical.choose_spec
      (state.carrierComplete
        (state.carrier index) (state.carrierSound index))
  right_inv cell := by
    apply Subtype.ext
    exact Classical.choose_spec (state.carrierComplete cell.1 cell.2)

/-- A certified state has exactly the geometric carrier multiplicity of its
source point.  In particular, duplicate array entries cannot inflate the
runtime carrier count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variante09ea3ea4913de6750c8cc07e17f5fd4219a86b6a7cd1159c0925233400759ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variante09ea3ea4913de6750c8cc07e17f5fd4219a86b6a7cd1159c0925233400759ba.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85fd27fbb968fa40ba7285ca6846083053d6dd94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
