# instRingHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d41c1a3c405c59ac4ece5096c51eb38b5cf0ed5dc48b3ed62572cfe576f41978",
  "kind": "instance",
  "lexical_name": "instRingHomClass",
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
  "slug": "instringhomclass--22533da3964eb8e5a68ca963",
  "source": {
    "blob": "80d9623f7ab39ce0ed7b4510866b80bfe977fb89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 425,
    "path": "GRWTSK/Algebra/GroupTheory/Ring/Variant9725dd08c871dc7d01bcaf731cfdfec88760b464ef410493c3da0dfce77da4e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22533da3964eb8e5a68ca963a37fedb74894b51a3e8984bb98e6735070af84bf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ring/Variant9725dd08c871dc7d01bcaf731cfdfec88760b464ef410493c3da0dfce77da4e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d41c1a3c405c59ac4ece5096c51eb38b5cf0ed5dc48b3ed62572cfe576f41978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instRingHomClass : RingHomClass (α →+* β) α β where
  coe f := f.toFun
  coe_injective' f g h := by
    cases f
    cases g
    congr
    apply FunLike.coe_injective'
    exact h
  map_add := RingHom.map_add'
  map_zero := RingHom.map_zero'
  map_mul f := f.map_mul'
  map_one f := f.map_one'

-- Porting note:
-- These helper instances are unhelpful in Lean 4, so omitting:
-- /-- Helper instance for when there's too many metavariables to apply `fun_like.has_coe_to_fun`
-- directly.
-- -/
-- instance : CoeFun (α →+* β) fun _ => α → β :=
--   ⟨RingHom.toFun⟩

initialize_simps_projections RingHom (toFun → apply)

-- Porting note: is this lemma still needed in Lean4?
-- Porting note: because `f.toFun` really means `f.toMonoidHom.toOneHom.toFun` and
-- `toMonoidHom_eq_coe` wants to simplify `f.toMonoidHom` to `(↑f : M →* N)`, this can't
-- be a simp lemma anymore
-- @[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ring/Variant9725dd08c871dc7d01bcaf731cfdfec88760b464ef410493c3da0dfce77da4e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ring/Variant9725dd08c871dc7d01bcaf731cfdfec88760b464ef410493c3da0dfce77da4e4.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d9623f7ab39ce0ed7b4510866b80bfe977fb89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
