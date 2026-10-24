# range_zmultiplesHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de417ca8-32ef-1100-47c2-a4da1bdb967b",
  "kind": "theorem",
  "lexical_name": "range_zmultiplesHom",
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
  "slug": "range-zmultipleshom--1ca912becd76ffe213d2041b",
  "source": {
    "blob": "37d324211ed0f418705b5c7c6475389196f8752b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 98,
    "path": "GRWTSK/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ca912becd76ffe213d2041b60dc5b04cdc8a45ffad3236527ea1a4b2dfbb254",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de417ca8-32ef-1100-47c2-a4da1bdb967b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_zmultiplesHom (a : A) : (zmultiplesHom A a).range = zmultiples a :=
  rfl
#align add_subgroup.range_zmultiples_hom AddSubgroup.range_zmultiplesHom

attribute [to_additive existing AddSubgroup.zmultiples] Subgroup.zpowers

attribute [to_additive (attr := simp) AddSubgroup.mem_zmultiples] Subgroup.mem_zpowers
#align add_subgroup.mem_zmultiples AddSubgroup.mem_zmultiples

attribute [to_additive (attr := norm_cast) AddSubgroup.coe_zmultiples] Subgroup.coe_zpowers

attribute [to_additive AddSubgroup.zmultiples_eq_closure] Subgroup.zpowers_eq_closure
#align add_subgroup.zmultiples_eq_closure AddSubgroup.zmultiples_eq_closure

attribute [to_additive existing (attr := simp) AddSubgroup.range_zmultiplesHom]
  Subgroup.range_zpowersHom

attribute [to_additive AddSubgroup.mem_zmultiples_iff] Subgroup.mem_zpowers_iff
#align add_subgroup.mem_zmultiples_iff AddSubgroup.mem_zmultiples_iff

attribute [to_additive (attr := simp) AddSubgroup.zsmul_mem_zmultiples] Subgroup.zpow_mem_zpowers
#align add_subgroup.zsmul_mem_zmultiples AddSubgroup.zsmul_mem_zmultiples

attribute [to_additive (attr := simp) AddSubgroup.nsmul_mem_zmultiples] Subgroup.npow_mem_zpowers
#align add_subgroup.nsmul_mem_zmultiples AddSubgroup.nsmul_mem_zmultiples

--Porting note: increasing simp priority. Better lemma than `Subtype.forall`
attribute [to_additive (attr := simp 1100) AddSubgroup.forall_zmultiples] Subgroup.forall_zpowers
#align add_subgroup.forall_zmultiples AddSubgroup.forall_zmultiples

attribute [to_additive AddSubgroup.forall_mem_zmultiples] Subgroup.forall_mem_zpowers
#align add_subgroup.forall_mem_zmultiples AddSubgroup.forall_mem_zmultiples

--Porting note: increasing simp priority. Better lemma than `Subtype.exists`
attribute [to_additive (attr := simp 1100) AddSubgroup.exists_zmultiples] Subgroup.exists_zpowers
#align add_subgroup.exists_zmultiples AddSubgroup.exists_zmultiples

attribute [to_additive AddSubgroup.exists_mem_zmultiples] Subgroup.exists_mem_zpowers
#align add_subgroup.exists_mem_zmultiples AddSubgroup.exists_mem_zmultiples

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ZPowers/Variant58d1ee06c096bf0f1e98787e64bc5879a5ed314d39e104183588844acc16a895.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37d324211ed0f418705b5c7c6475389196f8752b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
