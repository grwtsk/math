# conjugateEquiv_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92c5a4a11c4382bc744e6220352b2a09e24e1c574fb84494f70cb6a4a4714771",
  "kind": "instance",
  "lexical_name": "conjugateEquiv_iso",
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
  "slug": "conjugateequiv-iso--51cf7c3ad94fa7b7d1e40ecc",
  "source": {
    "blob": "883d540827ed681d59563aa75d167ea9588ca992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 360,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51cf7c3ad94fa7b7d1e40ecc439f0b07ae37dfbdacc2ceaac680c702a4e4c89f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92c5a4a11c4382bc744e6220352b2a09e24e1c574fb84494f70cb6a4a4714771`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance conjugateEquiv_iso (α : L₂ ⟶ L₁) [IsIso α] :
    IsIso (conjugateEquiv adj₁ adj₂ α) :=
  ⟨⟨conjugateEquiv adj₂ adj₁ (inv α),
      ⟨conjugateEquiv_comm _ _ (by simp), conjugateEquiv_comm _ _ (by simp)⟩⟩⟩

/-- If `α` is an isomorphism between right adjoints, then its conjugate transformation is an
isomorphism. The converse is given in `conjugateEquiv_symm_of_iso`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `883d540827ed681d59563aa75d167ea9588ca992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
