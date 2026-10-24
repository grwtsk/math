# single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3533abc88de01b2dee5c86616a4973b651500ba30767c0b23434c1acf33c6f33",
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
  "slug": "single--aa09b2fdc0382c47e0c8143b",
  "source": {
    "blob": "a887d974ebf5e302c3c9bef173627c00089ff24d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7630f92aced5fdc58af4e3f1fa79e38ebf9dfb90011437d4493d7539c2e4ce3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa09b2fdc0382c47e0c8143b030e5df47be40de3bf43fa396ca6827d5929c859",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7630f92aced5fdc58af4e3f1fa79e38ebf9dfb90011437d4493d7539c2e4ce3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3533abc88de01b2dee5c86616a4973b651500ba30767c0b23434c1acf33c6f33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def single (j : ι) : V ⥤ HomologicalComplex V c where
  obj A :=
    { X := fun i => if i = j then A else 0
      d := fun _ _ => 0 }
  map f :=
    { f := fun i => if h : i = j then eqToHom (by dsimp; rw [if_pos h]) ≫ f ≫
              eqToHom (by dsimp; rw [if_pos h]) else 0 }
  map_id A := by
    ext
    dsimp
    split_ifs with h
    · subst h
      simp
    · #adaptation_note /-- nightly-2024-03-07
      previously was `rw [if_neg h]; simp`, but that fails with "motive not type correct"
      This is because dsimp does not simplify numerals;
      this note should be removable once https://github.com/leanprover/lean4/pull/8433 lands. -/
      convert (id_zero (C := V)).symm
      all_goals simp [if_neg h]
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7630f92aced5fdc58af4e3f1fa79e38ebf9dfb90011437d4493d7539c2e4ce3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7630f92aced5fdc58af4e3f1fa79e38ebf9dfb90011437d4493d7539c2e4ce3d.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a887d974ebf5e302c3c9bef173627c00089ff24d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
