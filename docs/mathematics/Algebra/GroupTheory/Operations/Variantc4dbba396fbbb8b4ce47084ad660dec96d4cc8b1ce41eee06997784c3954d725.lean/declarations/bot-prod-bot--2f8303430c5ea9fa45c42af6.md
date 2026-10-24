# bot_prod_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5571172e066dee37586abc057c9167c7ebf595f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 890,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f95d9b29-d53a-8c1b-ccfa-686798a93ba9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1dc1a487-1bee-b5bb-6171-0753724f6974",
  "kind": "theorem",
  "lexical_name": "bot_prod_bot",
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
  "slug": "bot-prod-bot--2f8303430c5ea9fa45c42af6",
  "source": {
    "blob": "a5571172e066dee37586abc057c9167c7ebf595f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 898,
    "line": 890,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f8303430c5ea9fa45c42af6c50794e5c69066a3a59076015bbb2e35e1800338",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dc1a487-1bee-b5bb-6171-0753724f6974`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 890–898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bot_prod_bot : (⊥ : Submonoid M).prod (⊥ : Submonoid N) = ⊥ :=
  SetLike.coe_injective <| by simp [coe_prod, Prod.one_eq_mk]
#align submonoid.bot_prod_bot Submonoid.bot_prod_bot
-- Porting note: to_additive translated the name incorrectly in mathlib 3.
#align add_submonoid.bot_sum_bot AddSubmonoid.bot_prod_bot

/-- The product of submonoids is isomorphic to their product as monoids. -/
@[to_additive prodEquiv
      "The product of additive submonoids is isomorphic to their product as additive monoids"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean#L890).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5571172e066dee37586abc057c9167c7ebf595f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
