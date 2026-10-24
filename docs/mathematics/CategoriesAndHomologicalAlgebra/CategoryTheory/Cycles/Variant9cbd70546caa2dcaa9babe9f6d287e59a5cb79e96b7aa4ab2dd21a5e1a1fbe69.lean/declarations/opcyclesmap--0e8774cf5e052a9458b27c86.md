# opcyclesMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00665450327df980e07ea66638846d55c7b3747cd1887fd19606370cf8967b9f",
  "kind": "def",
  "lexical_name": "opcyclesMap",
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
  "slug": "opcyclesmap--0e8774cf5e052a9458b27c86",
  "source": {
    "blob": "9c554a6b54f5572a6b549be9b0f416ba175b7866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 230,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cycles/Variant9cbd70546caa2dcaa9babe9f6d287e59a5cb79e96b7aa4ab2dd21a5e1a1fbe69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e8774cf5e052a9458b27c86966131d98a4120db381297dc0488fea2833638e9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cycles/Variant9cbd70546caa2dcaa9babe9f6d287e59a5cb79e96b7aa4ab2dd21a5e1a1fbe69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00665450327df980e07ea66638846d55c7b3747cd1887fd19606370cf8967b9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def opcyclesMap (α : mk₂ f g ⟶ mk₂ f' g') (n : ℤ) :
    X.opcycles f g n ⟶ X.opcycles f' g' n :=
  X.descOpcycles _ _ (n - 1) n (by lia)
    ((X.H n).map (homMk₁ (by exact α.app 0) (by exact α.app 1)
      (naturality' α 0 1)) ≫ X.pOpcycles f' g' n) (by
      rw [← X.δ_naturality_assoc f g f' g'
        (homMk₁ (α.app 0) (α.app 1) (naturality' α 0 1))
        (homMk₁ (α.app 1) (α.app 2) (naturality' α 1 2)) _ _,
        δ_pOpcycles _ _ _ _ _, comp_zero])

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cycles/Variant9cbd70546caa2dcaa9babe9f6d287e59a5cb79e96b7aa4ab2dd21a5e1a1fbe69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cycles/Variant9cbd70546caa2dcaa9babe9f6d287e59a5cb79e96b7aa4ab2dd21a5e1a1fbe69.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c554a6b54f5572a6b549be9b0f416ba175b7866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
