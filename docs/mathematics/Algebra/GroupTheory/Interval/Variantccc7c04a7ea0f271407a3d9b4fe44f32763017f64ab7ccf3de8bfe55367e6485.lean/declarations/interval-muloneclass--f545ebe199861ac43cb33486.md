# Interval.mulOneClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34da342202282f1b6ed3b2c86c109c5f6e2b37ae6dcf14ff46bdb0de01b63978",
  "kind": "instance",
  "lexical_name": "Interval.mulOneClass",
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
  "slug": "interval-muloneclass--f545ebe199861ac43cb33486",
  "source": {
    "blob": "2d26ed32e73b9e9a6ea4926c0674194b3eef321a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 287,
    "path": "GRWTSK/Algebra/GroupTheory/Interval/Variantccc7c04a7ea0f271407a3d9b4fe44f32763017f64ab7ccf3de8bfe55367e6485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f545ebe199861ac43cb33486ea2419c744e4707064805ffe857709ef5e57a226",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Interval/Variantccc7c04a7ea0f271407a3d9b4fe44f32763017f64ab7ccf3de8bfe55367e6485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34da342202282f1b6ed3b2c86c109c5f6e2b37ae6dcf14ff46bdb0de01b63978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Interval.mulOneClass [OrderedCommMonoid α] : MulOneClass (Interval α) where
  mul := (· * ·)
  one := 1
  one_mul s :=
    (Option.map₂_coe_left _ _ _).trans <| by
      simp_rw [NonemptyInterval.pure_one, one_mul, ← id_def, Option.map_id, id]
  mul_one s :=
    (Option.map₂_coe_right _ _ _).trans <| by
      simp_rw [NonemptyInterval.pure_one, mul_one, ← id_def, Option.map_id, id]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Interval/Variantccc7c04a7ea0f271407a3d9b4fe44f32763017f64ab7ccf3de8bfe55367e6485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Interval/Variantccc7c04a7ea0f271407a3d9b4fe44f32763017f64ab7ccf3de8bfe55367e6485.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d26ed32e73b9e9a6ea4926c0674194b3eef321a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
