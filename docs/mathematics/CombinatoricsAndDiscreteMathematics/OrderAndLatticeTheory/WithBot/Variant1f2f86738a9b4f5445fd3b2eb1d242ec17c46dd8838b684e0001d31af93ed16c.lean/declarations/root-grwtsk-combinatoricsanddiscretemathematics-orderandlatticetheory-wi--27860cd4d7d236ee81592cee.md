# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithBot.Variant5133380f84c1adcfecdcf93ab6db59c16d868f46ee7bb987944d7da0d7968dc2.WithBot.isWellOrder.gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b67559169a167ef5f206bbd36cf801f3ead960fb618ac105d7db50b2bd2a1be1",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithBot.Variant5133380f84c1adcfecdcf93ab6db59c16d868f46ee7bb987944d7da0d7968dc2.WithBot.isWellOrder.gt",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-wi--27860cd4d7d236ee81592cee",
  "source": {
    "blob": "5fc48659cee760bd6554872be468cc5c3b2cd151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1358,
    "line": 1354,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant1f2f86738a9b4f5445fd3b2eb1d242ec17c46dd8838b684e0001d31af93ed16c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27860cd4d7d236ee81592cee7f4e584fb982125b76d230cd076d8f614d68a698",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant1f2f86738a9b4f5445fd3b2eb1d242ec17c46dd8838b684e0001d31af93ed16c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b67559169a167ef5f206bbd36cf801f3ead960fb618ac105d7db50b2bd2a1be1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1354–1358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithBot.Variant5133380f84c1adcfecdcf93ab6db59c16d868f46ee7bb987944d7da0d7968dc2.WithBot.isWellOrder.gt [Preorder α] [h : IsWellOrder α (· > ·)] :
    IsWellOrder (WithBot α) (· > ·) :=
  @WithTop.IsWellOrder.lt αᵒᵈ _ h
#align with_bot.is_well_order.gt WithBot.isWellOrder.gt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant1f2f86738a9b4f5445fd3b2eb1d242ec17c46dd8838b684e0001d31af93ed16c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant1f2f86738a9b4f5445fd3b2eb1d242ec17c46dd8838b684e0001d31af93ed16c.lean#L1354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc48659cee760bd6554872be468cc5c3b2cd151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
