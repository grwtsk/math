# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a6fdcc889419f60666015cdeeac4714952fede117055d55cc46b3c23b71e668",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--0dbfc6a1b0c50df71ce2feec",
  "source": {
    "blob": "aa44e83ad0f0afccc5ac6719efbe5cb38c3d565a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variante89bb17409201abe75e9dcee59c09485db92ac53bf9c4083795071eecb5f07a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dbfc6a1b0c50df71ce2feec372f9fbc4bcc93a159453570a2c0988d4e522ff8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variante89bb17409201abe75e9dcee59c09485db92ac53bf9c4083795071eecb5f07a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a6fdcc889419f60666015cdeeac4714952fede117055d55cc46b3c23b71e668`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def map :
    KaehlerDifferential f ⟶
      (ModuleCat.restrictScalars g'.hom).obj (KaehlerDifferential f') :=
  letI := f.hom.toAlgebra
  letI := f'.hom.toAlgebra
  letI := g.hom.toAlgebra
  letI := g'.hom.toAlgebra
  letI := (g ≫ f').hom.toAlgebra
  have : IsScalarTower A A' B' := IsScalarTower.of_algebraMap_eq' rfl
  have := IsScalarTower.of_algebraMap_eq' (congrArg Hom.hom fac)
  -- TODO: after https://github.com/leanprover-community/mathlib4/pull/19511 we need to hint `(Y := ...)`.
  -- This suggests `restrictScalars` needs to be redesigned.
  ModuleCat.ofHom (Y := (ModuleCat.restrictScalars g'.hom).obj (KaehlerDifferential f'))
  { toFun := fun x ↦ _root_.KaehlerDifferential.map A A' B B' x
    map_add' := by simp
    map_smul' := by simp }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variante89bb17409201abe75e9dcee59c09485db92ac53bf9c4083795071eecb5f07a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Basic/Variante89bb17409201abe75e9dcee59c09485db92ac53bf9c4083795071eecb5f07a3.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa44e83ad0f0afccc5ac6719efbe5cb38c3d565a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
