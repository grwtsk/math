# _root_.GRWTSK.Algebra.GroupTheory.Con.Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.Subgroup.orderIsoCon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f38346634631fac44e5da80391e2f6453cbcb153cb4be2241f22674a22044052",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.Con.Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.Subgroup.orderIsoCon",
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
  "slug": "root-grwtsk-algebra-grouptheory-con-variant935efb53426fbcbfbfe2d1aefe6c2--f6b36c789ff11e60fe539426",
  "source": {
    "blob": "a7dccee0acc426228f6d8f83513ae96eb7efa417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 231,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6b36c789ff11e60fe5394266ccc6643c2f66dd5be1549997ae547e683adc562",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f38346634631fac44e5da80391e2f6453cbcb153cb4be2241f22674a22044052`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.GroupTheory.Con.Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.Subgroup.orderIsoCon :
    { N : Subgroup G // N.Normal } ≃o Con G where
  toFun N := letI : N.val.Normal := N.prop; QuotientGroup.con N
  invFun c := ⟨c.subgroup, inferInstance⟩
  left_inv := fun ⟨N, _⟩ ↦ Subtype.mk_eq_mk.mpr (Con.subgroup_quotientGroupCon N)
  right_inv c := QuotientGroup.con_subgroup c
  map_rel_iff' := by
    simp only [QuotientGroup.con, Equiv.coe_fn_mk, Con.le_def, Con.rel_mk, leftRel_apply]
    refine ⟨fun h x _ ↦ ?_, fun hle _ _ h ↦ hle h⟩
    specialize @h 1 x
    simp_all

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7dccee0acc426228f6d8f83513ae96eb7efa417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
