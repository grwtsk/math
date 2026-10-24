# card_mul_eq_card_subgroup_mul_card_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48acac4a-83b5-193c-768e-9c85e0d61e52",
  "kind": "lemma",
  "lexical_name": "card_mul_eq_card_subgroup_mul_card_quotient",
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
  "slug": "card-mul-eq-card-subgroup-mul-card-quotient--b04c9c97263ea78acfdc891c",
  "source": {
    "blob": "6a3149f1e6ceb01da98549d58f815d89a3acf434",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b04c9c97263ea78acfdc891ca9624963ea8913ad645dd24638e4cf580ce72a99",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48acac4a-83b5-193c-768e-9c85e0d61e52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_mul_eq_card_subgroup_mul_card_quotient (s : Subgroup α) (t : Set α) :
    Nat.card (t * s : Set α) = Nat.card s * Nat.card (t.image (↑) : Set (α ⧸ s)) := by
  rw [← Nat.card_prod, Nat.card_congr]
  apply Equiv.trans _ (QuotientGroup.preimageMkEquivSubgroupProdSet _ _)
  rw [QuotientGroup.preimage_image_mk]
  convert Equiv.refl ↑(t * s)
  aesop (add simp [Set.mem_mul])

/-- **Lagrange's Theorem**: The order of a subgroup divides the order of its ambient group. -/
@[to_additive "**Lagrange's Theorem**: The order of an additive subgroup divides the order of its
ambient additive group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a3149f1e6ceb01da98549d58f815d89a3acf434` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
