# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant6191f9b5a541fecc346f50293a91094850ec6b3502240c70223b676167b16ff1.EquivLike.coe_symm_comp_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:179278a7-1074-b65a-e991-9a39ea52bf94",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant6191f9b5a541fecc346f50293a91094850ec6b3502240c70223b676167b16ff1.EquivLike.coe_symm_comp_self",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-equiv-varian--4d125b14ba19ed8bc0951121",
  "source": {
    "blob": "d565cfc00aa9772be8242f76a32eff891fdb6899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3c0323ecc32bf5a6fd530913b2e9c183ba771e94a337ed6bd3b865526bd5c89a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d125b14ba19ed8bc095112143728f44fbae5bb43e23a1589117f82a701f41d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3c0323ecc32bf5a6fd530913b2e9c183ba771e94a337ed6bd3b865526bd5c89a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:179278a7-1074-b65a-e991-9a39ea52bf94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant6191f9b5a541fecc346f50293a91094850ec6b3502240c70223b676167b16ff1.EquivLike.coe_symm_comp_self {F} [EquivLike F α β] (e : F) :
    (e : α ≃ β).symm ∘ e = id :=
  (e : α ≃ β).symm_comp_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3c0323ecc32bf5a6fd530913b2e9c183ba771e94a337ed6bd3b865526bd5c89a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3c0323ecc32bf5a6fd530913b2e9c183ba771e94a337ed6bd3b865526bd5c89a.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d565cfc00aa9772be8242f76a32eff891fdb6899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
