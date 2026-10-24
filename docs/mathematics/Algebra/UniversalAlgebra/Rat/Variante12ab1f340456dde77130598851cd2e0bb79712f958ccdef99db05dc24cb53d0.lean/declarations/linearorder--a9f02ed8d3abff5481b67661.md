# linearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e53bc43c7d07e22ed2478e7345f99fbbe24e1afcff2faa7e5e8c76b5bdcc9ca",
  "kind": "instance",
  "lexical_name": "linearOrder",
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
  "slug": "linearorder--a9f02ed8d3abff5481b67661",
  "source": {
    "blob": "c647672047ede92ef0df4df00fb808688d2d0ce4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 140,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9f02ed8d3abff5481b676618a4cd66c233384dc225a14cd07f4b932452580bd",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e53bc43c7d07e22ed2478e7345f99fbbe24e1afcff2faa7e5e8c76b5bdcc9ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance linearOrder : LinearOrder ℚ where
  le_refl a := by rw [Rat.le_iff_sub_nonneg, ← num_nonneg]; simp
  le_trans a b c hab hbc := by
    rw [Rat.le_iff_sub_nonneg] at hab hbc
    have := Rat.add_nonneg hab hbc
    simp_rw [sub_eq_add_neg, add_left_comm (b + -a) c (-b), add_comm (b + -a) (-b),
      add_left_comm (-b) b (-a), add_comm (-b) (-a), add_neg_cancel_comm_assoc,
      ← sub_eq_add_neg] at this
    rwa [Rat.le_iff_sub_nonneg]
  le_antisymm a b hab hba := by
    rw [Rat.le_iff_sub_nonneg] at hab hba
    rw [sub_eq_add_neg] at hba
    rw [← neg_sub, sub_eq_add_neg] at hab
    have := eq_neg_of_add_eq_zero_left (Rat.nonneg_antisymm hba hab)
    rwa [neg_neg] at this
  le_total _ _ := Rat.le_total
  toDecidableEq := inferInstance
  toDecidableLE := inferInstance
  toDecidableLT := inferInstance
  lt_iff_le_not_le _ _ := by rw [← Rat.not_le, and_iff_right_of_imp Rat.le_total.resolve_left]

/-!
### Extra instances to short-circuit type class resolution

These also prevent non-computable instances being used to construct these instances non-computably.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c647672047ede92ef0df4df00fb808688d2d0ce4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
