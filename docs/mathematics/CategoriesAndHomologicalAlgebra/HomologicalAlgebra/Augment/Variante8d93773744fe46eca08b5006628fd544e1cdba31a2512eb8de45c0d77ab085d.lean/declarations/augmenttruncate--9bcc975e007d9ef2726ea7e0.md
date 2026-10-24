# augmentTruncate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75fdf7a73e18e1094bac18d507d6a71623352a3df020f6273b3bf7129f484bbb",
  "kind": "def",
  "lexical_name": "augmentTruncate",
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
  "slug": "augmenttruncate--9bcc975e007d9ef2726ea7e0",
  "source": {
    "blob": "fe2d9689017c8f461f669e04758e45f7137f4203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 330,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variante8d93773744fe46eca08b5006628fd544e1cdba31a2512eb8de45c0d77ab085d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bcc975e007d9ef2726ea7e048a8005f76300ea04f1538c525d9a2062470285d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variante8d93773744fe46eca08b5006628fd544e1cdba31a2512eb8de45c0d77ab085d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75fdf7a73e18e1094bac18d507d6a71623352a3df020f6273b3bf7129f484bbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def augmentTruncate (C : CochainComplex V ℕ) :
    augment (truncate.obj C) (C.d 0 1) (C.d_comp_d _ _ _) ≅ C where
  hom :=
    { f := fun i => by cases i <;> exact 𝟙 _
      comm' := fun i j => by
        rcases j with (_ | _ | j) <;> cases i <;>
          · dsimp
            -- Porting note: simp can't handle this now but aesop does
            aesop }
  inv :=
    { f := fun i => by cases i <;> exact 𝟙 _
      comm' := fun i j => by
        rcases j with (_ | _ | j) <;> cases' i with i <;>
          · dsimp
            -- Porting note: simp can't handle this now but aesop does
            aesop }
  hom_inv_id := by
    ext i
    cases i <;>
      · dsimp
        simp
  inv_hom_id := by
    ext i
    cases i <;>
      · dsimp
        simp
#align cochain_complex.augment_truncate CochainComplex.augmentTruncate

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variante8d93773744fe46eca08b5006628fd544e1cdba31a2512eb8de45c0d77ab085d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variante8d93773744fe46eca08b5006628fd544e1cdba31a2512eb8de45c0d77ab085d.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe2d9689017c8f461f669e04758e45f7137f4203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
