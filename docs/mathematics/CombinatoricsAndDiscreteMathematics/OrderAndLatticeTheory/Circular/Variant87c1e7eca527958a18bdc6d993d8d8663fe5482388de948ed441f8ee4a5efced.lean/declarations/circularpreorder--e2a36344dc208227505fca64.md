# CircularPreorder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:056d6d253c92065f8119e8b45be4a8db6dc2e6c80887dff28702b8216fd4f13e",
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
  "slug": "circularpreorder--e2a36344dc208227505fca64",
  "source": {
    "blob": "195a95f14ad8958764877322b98e4d5f43d174d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant87c1e7eca527958a18bdc6d993d8d8663fe5482388de948ed441f8ee4a5efced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2a36344dc208227505fca64631ee26d6d112687cd37e5a5ced3ce06823a38b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant87c1e7eca527958a18bdc6d993d8d8663fe5482388de948ed441f8ee4a5efced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:056d6d253c92065f8119e8b45be4a8db6dc2e6c80887dff28702b8216fd4f13e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–139.

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

export CircularPreorder (btw_refl btw_cyclic_left sbtw_trans_left)

/-- A circular partial order is the analogue of a partial order where you can loop around. `≤` and
`<` are replaced by ternary relations `btw` and `sbtw`. `btw` is reflexive, cyclic and
antisymmetric. `sbtw` is transitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant87c1e7eca527958a18bdc6d993d8d8663fe5482388de948ed441f8ee4a5efced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Circular/Variant87c1e7eca527958a18bdc6d993d8d8663fe5482388de948ed441f8ee4a5efced.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `195a95f14ad8958764877322b98e4d5f43d174d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
