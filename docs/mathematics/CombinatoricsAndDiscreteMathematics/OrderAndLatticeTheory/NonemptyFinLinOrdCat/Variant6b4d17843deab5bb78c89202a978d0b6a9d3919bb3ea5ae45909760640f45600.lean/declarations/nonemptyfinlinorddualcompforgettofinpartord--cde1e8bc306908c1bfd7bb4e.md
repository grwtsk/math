# nonemptyFinLinOrdDualCompForgetToFinPartOrd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4290ba3fb23ed9aad7966b8202d3f5eb801e12cb429320064af7e67e90fd358",
  "kind": "def",
  "lexical_name": "nonemptyFinLinOrdDualCompForgetToFinPartOrd",
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
  "slug": "nonemptyfinlinorddualcompforgettofinpartord--cde1e8bc306908c1bfd7bb4e",
  "source": {
    "blob": "9a381cfc2c84994806a3cc967dad8213cf7f396e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 258,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cde1e8bc306908c1bfd7bb4e750d271976541fb78b414109dddd9de62ea03b87",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4290ba3fb23ed9aad7966b8202d3f5eb801e12cb429320064af7e67e90fd358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nonemptyFinLinOrdDualCompForgetToFinPartOrd :
    NonemptyFinLinOrdCat.dual ⋙ forget₂ NonemptyFinLinOrdCat FinPartOrd ≅
      forget₂ NonemptyFinLinOrdCat FinPartOrd ⋙ FinPartOrd.dual
    where
  hom := { app := fun X => OrderHom.id }
  inv := { app := fun X => OrderHom.id }
set_option linter.uppercaseLean3 false in
#align NonemptyFinLinOrd_dual_comp_forget_to_FinPartOrd nonemptyFinLinOrdDualCompForgetToFinPartOrd
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NonemptyFinLinOrdCat/Variant6b4d17843deab5bb78c89202a978d0b6a9d3919bb3ea5ae45909760640f45600.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a381cfc2c84994806a3cc967dad8213cf7f396e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
