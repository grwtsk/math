# variableMatrixFieldEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a7d73e80c44f747c0c42242be0571c08d8e445bf89623b8ad050f0d4721247b",
  "kind": "def",
  "lexical_name": "variableMatrixFieldEquiv",
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
  "slug": "variablematrixfieldequiv--f647e8361a2e53cdf3c195e2",
  "source": {
    "blob": "d866230c4bf250a4e48d7ccba9714bd9c5790099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variantccb508d22d3b5561c5f3ca8822bf4d5844ce1389119f15ee4a74d2a5acd77497.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f647e8361a2e53cdf3c195e2d4960372bd5bdd7d2cc1f991ab113239aa4fcd43",
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

Occurrence: `declaration:1a7d73e80c44f747c0c42242be0571c08d8e445bf89623b8ad050f0d4721247b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def variableMatrixFieldEquiv
    (E : RowFieldEncoding F r) :
    VariableMatrix r ≃ VariableFieldVector F where
  toFun M := ⟨M.1, rowVectorEquiv E M.1 M.2⟩
  invFun values := ⟨values.1, (rowVectorEquiv E values.1).symm values.2⟩
  left_inv M := by
    rcases M with ⟨k, M⟩
    simp only [Equiv.symm_apply_apply]
  right_inv values := by
    rcases values with ⟨k, values⟩
    simp only [Equiv.apply_symm_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variantccb508d22d3b5561c5f3ca8822bf4d5844ce1389119f15ee4a74d2a5acd77497.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FieldRows/Variantccb508d22d3b5561c5f3ca8822bf4d5844ce1389119f15ee4a74d2a5acd77497.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d866230c4bf250a4e48d7ccba9714bd9c5790099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
