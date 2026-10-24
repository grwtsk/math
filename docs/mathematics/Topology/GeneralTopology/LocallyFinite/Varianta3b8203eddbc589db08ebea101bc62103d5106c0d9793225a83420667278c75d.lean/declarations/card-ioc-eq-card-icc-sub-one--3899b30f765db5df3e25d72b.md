# card_Ioc_eq_card_Icc_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:729373a5-31d8-fe75-8d29-4b7d5907abce",
  "kind": "theorem",
  "lexical_name": "card_Ioc_eq_card_Icc_sub_one",
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
  "slug": "card-ioc-eq-card-icc-sub-one--3899b30f765db5df3e25d72b",
  "source": {
    "blob": "07690eda2f8498e868200ee71df29762b213e7b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 653,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Varianta3b8203eddbc589db08ebea101bc62103d5106c0d9793225a83420667278c75d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3899b30f765db5df3e25d72b2d3429c68b74b6a40f649038e2df88dcc77951c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinite/Varianta3b8203eddbc589db08ebea101bc62103d5106c0d9793225a83420667278c75d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:729373a5-31d8-fe75-8d29-4b7d5907abce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 653–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_Ioc_eq_card_Icc_sub_one (a b : α) : (Ioc a b).card = (Icc a b).card - 1 :=
  @card_Ico_eq_card_Icc_sub_one αᵒᵈ _ _ _ _
#align finset.card_Ioc_eq_card_Icc_sub_one Finset.card_Ioc_eq_card_Icc_sub_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinite/Varianta3b8203eddbc589db08ebea101bc62103d5106c0d9793225a83420667278c75d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinite/Varianta3b8203eddbc589db08ebea101bc62103d5106c0d9793225a83420667278c75d.lean#L653).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07690eda2f8498e868200ee71df29762b213e7b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
