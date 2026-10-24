# factor_orderIso_map_one_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3d48cb4-5746-5516-d60d-ea45ffbe13da",
  "kind": "theorem",
  "lexical_name": "factor_orderIso_map_one_eq_bot",
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
  "slug": "factor-orderiso-map-one-eq-bot--38d9df597a467bf600d8efe6",
  "source": {
    "blob": "cf6279dbc6e2330cd114b57f377f15a6fb4d8011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 233,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38d9df597a467bf600d8efe6e2ca35014c3b5a5b4fc6ab4ae89bb83f924f2ff6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3d48cb4-5746-5516-d60d-ea45ffbe13da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factor_orderIso_map_one_eq_bot {m : Associates M} {n : Associates N}
    (d : { l : Associates M // l ≤ m } ≃o { l : Associates N // l ≤ n }) :
    (d ⟨1, one_dvd m⟩ : Associates N) = 1 := by
  letI : OrderBot { l : Associates M // l ≤ m } := Subtype.orderBot bot_le
  letI : OrderBot { l : Associates N // l ≤ n } := Subtype.orderBot bot_le
  simp only [← Associates.bot_eq_one, Subtype.mk_bot, bot_le, Subtype.coe_eq_bot_iff]
  letI : BotHomClass ({ l // l ≤ m } ≃o { l // l ≤ n }) _ _ := OrderIsoClass.toBotHomClass
  exact map_bot d
#align factor_order_iso_map_one_eq_bot factor_orderIso_map_one_eq_bot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf6279dbc6e2330cd114b57f377f15a6fb4d8011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
