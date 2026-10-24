# CircularPreorder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a56c5667717147a39bfaddffbdb6743f4719dc223d2ee3028426b45289e1683b",
  "kind": "class",
  "lexical_name": "CircularPreorder",
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
  "slug": "circularpreorder--1869c5f0a28940ae1f9d450b",
  "source": {
    "blob": "476cc42122201343fda404b9a419fff2e9344761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 111,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variantb5308de38408ea8819927e099f51b83ad7e3bfa724c0ac1c6fc8b02f0073b6f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1869c5f0a28940ae1f9d450b019f7c54c4dfa96a0fc162065c293797cad98d39",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variantb5308de38408ea8819927e099f51b83ad7e3bfa724c0ac1c6fc8b02f0073b6f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a56c5667717147a39bfaddffbdb6743f4719dc223d2ee3028426b45289e1683b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CircularPreorder (α : Type*) extends Btw α, SBtw α where
  /-- `a` is between `a` and `a`. -/
  btw_refl (a : α) : btw a a a
  /-- If `b` is between `a` and `c`, then `c` is between `b` and `a`.
  This is motivated by imagining three points on a circle. -/
  btw_cyclic_left {a b c : α} : btw a b c → btw b c a
  sbtw := fun a b c => btw a b c ∧ ¬btw c b a
  /-- Strict betweenness is given by betweenness in one direction and non-betweenness in the other.

  I.e., if `b` is between `a` and `c` but not between `c` and `a`, then we say `b` is strictly
  between `a` and `c`. -/
  sbtw_iff_btw_not_btw {a b c : α} : sbtw a b c ↔ btw a b c ∧ ¬btw c b a := by intros; rfl
  /-- For any fixed `c`, `fun a b ↦ sbtw a b c` is a transitive relation.

  I.e., given `a` `b` `d` `c` in that "order", if we have `b` strictly between `a` and `c`, and `d`
  strictly between `b` and `c`, then `d` is strictly between `a` and `c`. -/
  sbtw_trans_left {a b c d : α} : sbtw a b c → sbtw b d c → sbtw a d c
#align circular_preorder CircularPreorder

export CircularPreorder (btw_refl btw_cyclic_left sbtw_trans_left)

/-- A circular partial order is the analogue of a partial order where you can loop around. `≤` and
`<` are replaced by ternary relations `btw` and `sbtw`. `btw` is reflexive, cyclic and
antisymmetric. `sbtw` is transitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variantb5308de38408ea8819927e099f51b83ad7e3bfa724c0ac1c6fc8b02f0073b6f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variantb5308de38408ea8819927e099f51b83ad7e3bfa724c0ac1c6fc8b02f0073b6f5.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476cc42122201343fda404b9a419fff2e9344761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
