# rowVectorEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69eeaf5b1cca17c7711423119696108d32c50791a5f541fe6bb5b5774e274aae",
  "kind": "def",
  "lexical_name": "rowVectorEquiv",
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
  "slug": "rowvectorequiv--c37da85630c9ebfcfd9b52bd",
  "source": {
    "blob": "d866230c4bf250a4e48d7ccba9714bd9c5790099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variantccb508d22d3b5561c5f3ca8822bf4d5844ce1389119f15ee4a74d2a5acd77497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c37da85630c9ebfcfd9b52bd2ba1114133b68674e3161f0475aa80f37a6e6bd9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variantccb508d22d3b5561c5f3ca8822bf4d5844ce1389119f15ee4a74d2a5acd77497.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69eeaf5b1cca17c7711423119696108d32c50791a5f541fe6bb5b5774e274aae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rowVectorEquiv
    (E : RowFieldEncoding F r)
    (k : Nat) :
    BinMat k r ≃ (Fin k → F) where
  toFun M i := E.code.symm (matrixRow M i)
  invFun values i j := E.code (values i) j
  left_inv M := by
    ext i j
    change E.code (E.code.symm (matrixRow M i)) j = M i j
    rw [E.code.apply_symm_apply]
    rfl
  right_inv values := by
    funext i
    change E.code.symm (E.code (values i)) = values i
    exact E.code.symm_apply_apply (values i)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variantccb508d22d3b5561c5f3ca8822bf4d5844ce1389119f15ee4a74d2a5acd77497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variantccb508d22d3b5561c5f3ca8822bf4d5844ce1389119f15ee4a74d2a5acd77497.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d866230c4bf250a4e48d7ccba9714bd9c5790099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
