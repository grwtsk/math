# Equiv.ofIsFreeGroupEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81f0a755718c28816780d9d2d37ee35262bf5b68b69404bf190a8ed7cb86e45f",
  "kind": "def",
  "lexical_name": "Equiv.ofIsFreeGroupEquiv",
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
  "slug": "equiv-ofisfreegroupequiv--ec02577db507eaacee377bb5",
  "source": {
    "blob": "949c37bb9d0ebb6f5cd02d79858679bc3204fa45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Variant10dc348ca9ea123fafc7a248a18f51b4ecd1792536f111565729172faae6788e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec02577db507eaacee377bb5b05fa3562cdd16d5e2b8a971deafa4d2fa58da57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Variant10dc348ca9ea123fafc7a248a18f51b4ecd1792536f111565729172faae6788e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81f0a755718c28816780d9d2d37ee35262bf5b68b69404bf190a8ed7cb86e45f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Equiv.ofIsFreeGroupEquiv {G H : Type*} [Group G] [Group H] [IsFreeGroup G] [IsFreeGroup H]
    (e : G ≃* H) : Generators G ≃ Generators H :=
  Equiv.ofFreeGroupEquiv <| MulEquiv.trans (toFreeGroup G).symm <| MulEquiv.trans e <| toFreeGroup H
#align free_abelian_group.equiv.of_is_free_group_equiv FreeAbelianGroup.Equiv.ofIsFreeGroupEquiv

variable {X}

/-- `coeff x` is the additive group homomorphism `FreeAbelianGroup X →+ ℤ`
that sends `a` to the multiplicity of `x : X` in `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Variant10dc348ca9ea123fafc7a248a18f51b4ecd1792536f111565729172faae6788e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FreeAbelianGroupFinsupp/Variant10dc348ca9ea123fafc7a248a18f51b4ecd1792536f111565729172faae6788e.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `949c37bb9d0ebb6f5cd02d79858679bc3204fa45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
