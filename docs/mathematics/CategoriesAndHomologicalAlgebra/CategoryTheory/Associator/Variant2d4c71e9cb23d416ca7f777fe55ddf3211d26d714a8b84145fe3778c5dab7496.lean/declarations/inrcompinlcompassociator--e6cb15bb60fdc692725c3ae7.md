# inrCompInlCompAssociator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9084396bc9b4405852153e0fa9e1dbba91f31c99c7362c323ee7f12e514582f",
  "kind": "def",
  "lexical_name": "inrCompInlCompAssociator",
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
  "slug": "inrcompinlcompassociator--e6cb15bb60fdc692725c3ae7",
  "source": {
    "blob": "90a80bcb302b9f3e103fe2872bb24fd319fd0067",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6cb15bb60fdc692725c3ae7e53dfaec084824691e943aeb4344205c81aaeece",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9084396bc9b4405852153e0fa9e1dbba91f31c99c7362c323ee7f12e514582f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inrCompInlCompAssociator :
    inr_ C D ⋙ inl_ (C ⊕ D) E ⋙ associator C D E ≅ inl_ D E ⋙ inr_ C (D ⊕ E) :=
  isoWhiskerLeft (inr_ _ _) (inlCompAssociator C D E) ≪≫ Functor.inrCompSum' _ _

/-- The inverse associator functor `C ⊕ (D ⊕ E) ⥤ (C ⊕ D) ⊕ E` for sums of categories.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90a80bcb302b9f3e103fe2872bb24fd319fd0067` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
