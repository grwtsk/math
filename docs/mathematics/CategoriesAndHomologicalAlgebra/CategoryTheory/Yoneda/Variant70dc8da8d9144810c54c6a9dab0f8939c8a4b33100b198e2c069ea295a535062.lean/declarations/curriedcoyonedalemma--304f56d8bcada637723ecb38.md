# curriedCoyonedaLemma'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:388cc6a60b14a5845120e3b8deaa869a866adb7b7fcf26028c0c5b23694cd5fc",
  "kind": "def",
  "lexical_name": "curriedCoyonedaLemma'",
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
  "slug": "curriedcoyonedalemma--304f56d8bcada637723ecb38",
  "source": {
    "blob": "0c52b8b6c7dcfd34a99a67297f6ac4ad565bdab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1139,
    "line": 1132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:304f56d8bcada637723ecb3829cc330c8026afa455e8ec457e84ad481e4f7ebe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:388cc6a60b14a5845120e3b8deaa869a866adb7b7fcf26028c0c5b23694cd5fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1132–1139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def curriedCoyonedaLemma' {C : Type u₁} [SmallCategory C] :
    yoneda ⋙ (whiskeringLeft C (C ⥤ Type u₁)ᵒᵖ (Type u₁)).obj coyoneda.rightOp
      ≅ 𝟭 (C ⥤ Type u₁) :=
  NatIso.ofComponents (fun F ↦ NatIso.ofComponents (fun _ ↦ Equiv.toIso coyonedaEquiv) (by
    intro X Y f
    ext a
    simp [coyonedaEquiv, ← NatTrans.naturality_apply]))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean#L1132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c52b8b6c7dcfd34a99a67297f6ac4ad565bdab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
