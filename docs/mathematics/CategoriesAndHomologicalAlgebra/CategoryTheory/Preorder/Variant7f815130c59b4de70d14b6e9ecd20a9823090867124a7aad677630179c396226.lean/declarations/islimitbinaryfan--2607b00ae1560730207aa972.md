# isLimitBinaryFan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2017fef5f9bd222c4b1b7e2f9b1a0a9f81e28cdf226f7a4ed080e46bdcec4cd",
  "kind": "def",
  "lexical_name": "isLimitBinaryFan",
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
  "slug": "islimitbinaryfan--2607b00ae1560730207aa972",
  "source": {
    "blob": "605ebbea32e56b6ee975e6efee64e22c6d5180f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant7f815130c59b4de70d14b6e9ecd20a9823090867124a7aad677630179c396226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2607b00ae1560730207aa9729d3468e23ede23271670950e50daae9d989d016c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant7f815130c59b4de70d14b6e9ecd20a9823090867124a7aad677630179c396226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2017fef5f9bd222c4b1b7e2f9b1a0a9f81e28cdf226f7a4ed080e46bdcec4cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitBinaryFan (X Y : C) :
    IsLimit (BinaryFan.mk (P := X ⊓ Y) (homOfLE inf_le_left) (homOfLE inf_le_right)) :=
  BinaryFan.isLimitMk (fun s ↦ homOfLE (le_inf (leOfHom s.fst) (leOfHom s.snd)))
    (by intros; rfl) (by intros; rfl) (by intros; rfl)

end SemilatticeInf

section SemilatticeSup

variable {C} [SemilatticeSup C]

/-- The supremum of two elements in a preordered type is a binary coproduct
in the category associated to this preorder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant7f815130c59b4de70d14b6e9ecd20a9823090867124a7aad677630179c396226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant7f815130c59b4de70d14b6e9ecd20a9823090867124a7aad677630179c396226.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `605ebbea32e56b6ee975e6efee64e22c6d5180f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
