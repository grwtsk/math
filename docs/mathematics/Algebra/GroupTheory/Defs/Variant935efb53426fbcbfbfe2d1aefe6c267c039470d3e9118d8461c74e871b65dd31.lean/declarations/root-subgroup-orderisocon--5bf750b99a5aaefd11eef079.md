# _root_.Subgroup.orderIsoCon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6b6bf8d83e26694056296fd97888279d475970b9ad8cc2be466b47bbf4a8b13",
  "kind": "def",
  "lexical_name": "_root_.Subgroup.orderIsoCon",
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
  "slug": "root-subgroup-orderisocon--5bf750b99a5aaefd11eef079",
  "source": {
    "blob": "1754237fcc3b4a87ed2aaadf5c1e8496886d370f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 223,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bf750b99a5aaefd11eef079d6a9e43e7b0c1a123b39db0bc4dc472c894b41b9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6b6bf8d83e26694056296fd97888279d475970b9ad8cc2be466b47bbf4a8b13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Subgroup.orderIsoCon :
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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1754237fcc3b4a87ed2aaadf5c1e8496886d370f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
