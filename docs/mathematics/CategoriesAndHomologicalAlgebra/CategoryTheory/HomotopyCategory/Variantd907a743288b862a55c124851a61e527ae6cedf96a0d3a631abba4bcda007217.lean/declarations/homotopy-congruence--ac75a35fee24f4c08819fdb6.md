# homotopy_congruence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a6aee1dd7c7cb762d183225ebb802cd6547a4a8b64d18afb0fef24f3a813bdc",
  "kind": "instance",
  "lexical_name": "homotopy_congruence",
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
  "slug": "homotopy-congruence--ac75a35fee24f4c08819fdb6",
  "source": {
    "blob": "996ccaff2ffce753ca916b6b1321119705eb6ee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac75a35fee24f4c08819fdb62a51ee6e14d1c2a94b4ca40f8021938311f654b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a6aee1dd7c7cb762d183225ebb802cd6547a4a8b64d18afb0fef24f3a813bdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance homotopy_congruence : Congruence (homotopic V c) where
  isEquiv :=
    { refl := fun C => ⟨Homotopy.refl C⟩
      symm := fun _ _ ⟨w⟩ => ⟨w.symm⟩
      trans := fun _ _ _ ⟨w₁⟩ ⟨w₂⟩ => ⟨w₁.trans w₂⟩ }
  compLeft := fun _ _ _ ⟨i⟩ => ⟨i.compLeft _⟩
  compRight := fun _ ⟨i⟩ => ⟨i.compRight _⟩
#align homotopy_congruence homotopy_congruence

/-- `HomotopyCategory V c` is the category of chain complexes of shape `c` in `V`,
with chain maps identified when they are homotopic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `996ccaff2ffce753ca916b6b1321119705eb6ee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
