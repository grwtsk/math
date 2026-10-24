# actionDiagonalSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f0cb7aa41886145015e8bab64a6c7b647d3a274df81e26476bb99a3edb12cbe",
  "kind": "def",
  "lexical_name": "actionDiagonalSucc",
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
  "slug": "actiondiagonalsucc--2ad36acedc0659f8833fc2d7",
  "source": {
    "blob": "b851f511d01f5bf1304bf2d9362845e482de08ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ad36acedc0659f8833fc2d762022d93152c451b7132bcf1bb0e057e8170576b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f0cb7aa41886145015e8bab64a6c7b647d3a274df81e26476bb99a3edb12cbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actionDiagonalSucc (G : Type u) [Group G] :
    ∀ n : ℕ, diagonal G (n + 1) ≅ leftRegular G ⊗ Action.mk (Fin n → G) 1
  | 0 =>
    diagonalOneIsoLeftRegular G ≪≫
      (ρ_ _).symm ≪≫ tensorIso (Iso.refl _) (tensorUnitIso (Equiv.ofUnique PUnit _).toIso)
  | n + 1 =>
    diagonalSucc _ _ ≪≫
      tensorIso (Iso.refl _) (actionDiagonalSucc G n) ≪≫
        leftRegularTensorIso _ _ ≪≫
          tensorIso (Iso.refl _)
            (mkIso (Fin.insertNthEquiv (fun _ => G) 0).toIso fun _ => rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b851f511d01f5bf1304bf2d9362845e482de08ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
