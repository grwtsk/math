# permEquivOneHotPermutationMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:226c62e7ae47b720846a62b32c615b9bfa7e6cf341c23e3dc3a1f88df8101cc7",
  "kind": "def",
  "lexical_name": "permEquivOneHotPermutationMatrix",
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
  "slug": "permequivonehotpermutationmatrix--f196da0a1be22a0dae2e6d5d",
  "source": {
    "blob": "9f9951bcc4e587dbd52e0e0c89efd0fa434c3b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 321,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f196da0a1be22a0dae2e6d5d505705e03e3e538dbce3f49ce2330c3434e3e070",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:226c62e7ae47b720846a62b32c615b9bfa7e6cf341c23e3dc3a1f88df8101cc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def permEquivOneHotPermutationMatrix :
    Equiv.Perm X ≃ OneHotPermutationMatrix X where
  toFun := ofPerm
  invFun := toPerm
  left_inv := toPerm_ofPerm
  right_inv := fun representation => by
    apply Subtype.ext
    exact (matrix_eq_permutationMatrix_toPerm representation).symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f9951bcc4e587dbd52e0e0c89efd0fa434c3b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
