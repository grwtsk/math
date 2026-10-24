# Additive.subNegMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27131d03d6a6374d569b8e3be0fa8cd970eca8fd9806e5bba66f05a7de3d1220",
  "kind": "instance",
  "lexical_name": "Additive.subNegMonoid",
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
  "slug": "additive-subnegmonoid--76186f648ba4b2489e75f190",
  "source": {
    "blob": "55aed92411b5d969aa72977c6a861d322cd60891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 379,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd565fea129cb4ad6957239cf0fcb55a67e78c0d999f3b99a2c82da1f3cca0415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76186f648ba4b2489e75f190ead71c5b775fa34bf83042c0c77c74e68ee47aa4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantd565fea129cb4ad6957239cf0fcb55a67e78c0d999f3b99a2c82da1f3cca0415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27131d03d6a6374d569b8e3be0fa8cd970eca8fd9806e5bba66f05a7de3d1220`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Additive.subNegMonoid [DivInvMonoid α] : SubNegMonoid (Additive α) :=
  { Additive.neg, Additive.sub, Additive.addMonoid with
    sub_eq_add_neg := @div_eq_mul_inv α _
    zsmul := @DivInvMonoid.zpow α _
    zsmul_zero' := @DivInvMonoid.zpow_zero' α _
    zsmul_succ' := @DivInvMonoid.zpow_succ' α _
    zsmul_neg' := @DivInvMonoid.zpow_neg' α _ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantd565fea129cb4ad6957239cf0fcb55a67e78c0d999f3b99a2c82da1f3cca0415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantd565fea129cb4ad6957239cf0fcb55a67e78c0d999f3b99a2c82da1f3cca0415.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55aed92411b5d969aa72977c6a861d322cd60891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
