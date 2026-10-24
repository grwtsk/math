# pushforwardContinuousSheafificationCompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c520c0dc290aa47555c90f2b3478746135e1723b6f5dfd66f2253e13e07468f",
  "kind": "def",
  "lexical_name": "pushforwardContinuousSheafificationCompatibility",
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
  "slug": "pushforwardcontinuoussheafificationcompatibility--0592ccbbce0b73dc6b0d40a2",
  "source": {
    "blob": "bc57447363293835136c76bb93449f1a5d0c4908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 305,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0592ccbbce0b73dc6b0d40a2ffcb276e610ec4ec208fb499a42dfce0d01a3427",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c520c0dc290aa47555c90f2b3478746135e1723b6f5dfd66f2253e13e07468f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushforwardContinuousSheafificationCompatibility [G.IsContinuous J K] :
    (whiskeringLeft _ _ A).obj G.op ⋙ presheafToSheaf J A ≅
    presheafToSheaf K A ⋙ G.sheafPushforwardContinuous A J K :=
  ((G.op.ranAdjunction A).comp (sheafificationAdjunction J A)).leftAdjointUniq
    ((sheafificationAdjunction K A).comp (G.sheafAdjunctionCocontinuous A J K))

/- Implementation: This is primarily used to prove the lemma
`pullbackSheafificationCompatibility_hom_app_val`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc57447363293835136c76bb93449f1a5d0c4908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
