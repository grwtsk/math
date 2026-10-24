# single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2684a9f26bbf3b8889c3b51853bf77d6dc2c342ed4873c6c69b54253e823fc21",
  "kind": "def",
  "lexical_name": "single",
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
  "slug": "single--1ce41aadbdb3e802ea66ff12",
  "source": {
    "blob": "a3bfeb86550c5c45d87f030aecdf8ab60a723cac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant4a8b99a10731d33397d1deaa9dc2c2e49b891a0fa82d83cdd30dff22e65afd77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ce41aadbdb3e802ea66ff121fa75d862dfb9d802d213fc3989e06ae29d98415",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant4a8b99a10731d33397d1deaa9dc2c2e49b891a0fa82d83cdd30dff22e65afd77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2684a9f26bbf3b8889c3b51853bf77d6dc2c342ed4873c6c69b54253e823fc21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def single (j : ι) : V ⥤ HomologicalComplex V c where
  obj A :=
    { X := fun i => if i = j then A else 0
      d := fun _ _ => 0 }
  map f :=
    { f := fun i => if h : i = j then eqToHom (by dsimp; rw [ite_eq_left h]) ≫ f ≫
              eqToHom (by dsimp; rw [ite_eq_left h]) else 0 }
  map_id A := by
    ext
    dsimp
    split_ifs with h
    · subst h
      simp
    · #adaptation_note /-- nightly-2024-03-07
      previously was `rw [ite_eq_right h]; simp`, but that fails with "motive not type correct"
      This is because dsimp does not simplify numerals;
      this note should be removable once https://github.com/leanprover/lean4/pull/8433 lands. -/
      convert! (id_zero (C := V)).symm
      all_goals simp [ite_eq_right h]
  map_comp f g := by
    ext
    dsimp
    split_ifs with h
    · subst h
      simp
    · simp

variable {V}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant4a8b99a10731d33397d1deaa9dc2c2e49b891a0fa82d83cdd30dff22e65afd77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant4a8b99a10731d33397d1deaa9dc2c2e49b891a0fa82d83cdd30dff22e65afd77.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3bfeb86550c5c45d87f030aecdf8ab60a723cac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
