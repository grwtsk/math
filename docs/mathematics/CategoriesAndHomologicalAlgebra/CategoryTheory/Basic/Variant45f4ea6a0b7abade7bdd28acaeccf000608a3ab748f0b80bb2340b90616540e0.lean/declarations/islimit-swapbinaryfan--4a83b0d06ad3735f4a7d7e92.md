# IsLimit.swapBinaryFan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec9f76fa06909342dfdcf55edab6350cd6ab2e24be972325b06c4b3cd091c2c5",
  "kind": "def",
  "lexical_name": "IsLimit.swapBinaryFan",
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
  "slug": "islimit-swapbinaryfan--4a83b0d06ad3735f4a7d7e92",
  "source": {
    "blob": "3fd974c06478582c7057eff9b2b342669c29c4f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a83b0d06ad3735f4a7d7e926077149a7f032e8d3dfe19f980b268b9f789881f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec9f76fa06909342dfdcf55edab6350cd6ab2e24be972325b06c4b3cd091c2c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsLimit.swapBinaryFan {P Q : C} {t : BinaryFan P Q} (I : IsLimit t) : IsLimit t.swap where
  lift s := I.lift (BinaryFan.swap s)
  fac s := by rintro ⟨⟨⟩⟩ <;> simp
  uniq s m w := by
    have h := I.uniq (BinaryFan.swap s) m
    rw [h]
    rintro ⟨j⟩
    specialize w ⟨WalkingPair.swap j⟩
    cases j <;> exact w
#align category_theory.limits.is_limit.swap_binary_fan CategoryTheory.Limits.IsLimit.swapBinaryFan

/-- Construct `HasBinaryProduct Q P` from `HasBinaryProduct P Q`.
This can't be an instance, as it would cause a loop in typeclass search.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fd974c06478582c7057eff9b2b342669c29c4f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
