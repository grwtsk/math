# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant5262fdf93e7ffe6d0bd04899b157daa0afed46f6a4085e9263594339fa0ca422.EquivLike.coe_symm_apply_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d315663-51ee-93ab-e6ff-f4f71c4759f1",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant5262fdf93e7ffe6d0bd04899b157daa0afed46f6a4085e9263594339fa0ca422.EquivLike.coe_symm_apply_apply",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-equiv-varian--51fde3b2d9625ff1152d10c0",
  "source": {
    "blob": "889a716d7313d0dca2ebeb0b8105034be3f049d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 256,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant813e783cec799df094d755fe2b8493ca04893bee417a4f54e812476669494aaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51fde3b2d9625ff1152d10c08f44f80dbc225a786c61e0d59cc0fc0f991816e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant813e783cec799df094d755fe2b8493ca04893bee417a4f54e812476669494aaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d315663-51ee-93ab-e6ff-f4f71c4759f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variant5262fdf93e7ffe6d0bd04899b157daa0afed46f6a4085e9263594339fa0ca422.EquivLike.coe_symm_apply_apply {F} [EquivLike F α β] (e : F) (x : α) :
    (e : α ≃ β).symm (e x) = x :=
  (e : α ≃ β).symm_apply_apply x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant813e783cec799df094d755fe2b8493ca04893bee417a4f54e812476669494aaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant813e783cec799df094d755fe2b8493ca04893bee417a4f54e812476669494aaa.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `889a716d7313d0dca2ebeb0b8105034be3f049d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
