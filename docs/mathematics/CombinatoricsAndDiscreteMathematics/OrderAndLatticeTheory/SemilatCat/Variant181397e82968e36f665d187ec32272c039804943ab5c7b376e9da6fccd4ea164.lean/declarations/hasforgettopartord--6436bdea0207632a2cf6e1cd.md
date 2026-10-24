# hasForgetToPartOrd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45299f4bdbb77acba4ddc7cc0f3d35226ff52ecc8d5ef0b2c7930aa306c35cd6",
  "kind": "instance",
  "lexical_name": "hasForgetToPartOrd",
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
  "slug": "hasforgettopartord--6436bdea0207632a2cf6e1cd",
  "source": {
    "blob": "f1b5733e242ac3d34f94470b38fe8643833b22ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 81,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6436bdea0207632a2cf6e1cd3a8d0e134d10b74a988653f664f866d121760c25",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45299f4bdbb77acba4ddc7cc0f3d35226ff52ecc8d5ef0b2c7930aa306c35cd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasForgetToPartOrd : HasForget₂ SemilatSupCat PartOrdCat where
  forget₂ :=
    -- Porting note: was ⟨X⟩, see https://github.com/leanprover-community/mathlib4/issues/4998
    { obj := fun X => {α := X}
      -- Porting note: was `map := fun f => f`
      map := fun f => ⟨f.toSupHom, OrderHomClass.mono f.toSupHom⟩ }
#align SemilatSup.has_forget_to_PartOrd SemilatSupCat.hasForgetToPartOrd

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b5733e242ac3d34f94470b38fe8643833b22ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
