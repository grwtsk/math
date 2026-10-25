# noMaxOrder_of_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8005b7e7496ac0b80b778e28f2118de1ee2cdccfaec0ff6e578e7116ccacf9ce",
  "kind": "instance",
  "lexical_name": "noMaxOrder_of_left",
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
  "slug": "nomaxorder-of-left--cac599277255478900fe1ff7",
  "source": {
    "blob": "06d782fa6c7995ce5f154862e9c784c21ad183d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cac599277255478900fe1ff7e4c21d18964195957b55df90165f5723a25425a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8005b7e7496ac0b80b778e28f2118de1ee2cdccfaec0ff6e578e7116ccacf9ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance noMaxOrder_of_left [Preorder α] [Preorder β] [NoMaxOrder α] : NoMaxOrder (α × β) :=
  ⟨fun ⟨a, b⟩ => by
    obtain ⟨c, h⟩ := exists_gt a
    exact ⟨(c, b), Prod.mk_lt_mk_iff_left.2 h⟩⟩
#align no_max_order_of_left noMaxOrder_of_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06d782fa6c7995ce5f154862e9c784c21ad183d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
