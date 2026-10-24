# OrderIso.setIsotypicComponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5f41b323494c1ff76c8f1c4c845880075781140fba19ebda2e72f901230b845",
  "kind": "def",
  "lexical_name": "OrderIso.setIsotypicComponents",
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
  "slug": "orderiso-setisotypiccomponents--1e065418533695d8c9fc5fdb",
  "source": {
    "blob": "2cf4fdeed8a3090f2a35b04122e231d7e7601918",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 456,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant4db4589a7bb689aa81f15ab5917180e8e0f6827da5907dc16850d246797a6735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e065418533695d8c9fc5fdba138b4135d760a107abf50aa10afe31f9527b245",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isotypic/Variant4db4589a7bb689aa81f15ab5917180e8e0f6827da5907dc16850d246797a6735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5f41b323494c1ff76c8f1c4c845880075781140fba19ebda2e72f901230b845`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def OrderIso.setIsotypicComponents :
    Set (isotypicComponents R M) ≃o fullyInvariantSubmodule R M where
  toFun s := ⨆ c ∈ s, ⟨c, .of_mem_isotypicComponents c.2⟩
  invFun m := { c | c.1 ≤ m }
  left_inv := (GaloisCoinsertion.setIsotypicComponents R M).u_l_eq
  right_inv m := (iSup₂_le fun _ ↦ by exact id).antisymm <| (sSup_simples_le m.1).ge.trans <|
      sSup_le fun S ⟨simple, le⟩ ↦ S.le_isotypicComponent.trans <| by
    let c : isotypicComponents R M := ⟨_, S, simple, rfl⟩
    simp_rw [← show c.1 = isotypicComponent R M S from rfl, CompleteSublattice.coe_iSup]
    exact le_biSup _ (isFullyInvariant_iff_le_imp_isotypicComponent_le.mp m.2 _ le)
  map_rel_iff' := (GaloisCoinsertion.setIsotypicComponents R M).l_le_l_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isotypic/Variant4db4589a7bb689aa81f15ab5917180e8e0f6827da5907dc16850d246797a6735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant4db4589a7bb689aa81f15ab5917180e8e0f6827da5907dc16850d246797a6735.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cf4fdeed8a3090f2a35b04122e231d7e7601918` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
