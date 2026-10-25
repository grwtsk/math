# hasCardinalLT_sum_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51173274-535a-2bdd-f41e-054cfe44a246",
  "kind": "lemma",
  "lexical_name": "hasCardinalLT_sum_iff",
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
  "slug": "hascardinallt-sum-iff--f8111fe9dbd177a580be67b4",
  "source": {
    "blob": "f45099c63a72fcdbe09fc7b24f86030c435322fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8111fe9dbd177a580be67b468465a218b987726ec27f55e4cb03d91d5e7271c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51173274-535a-2bdd-f41e-054cfe44a246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasCardinalLT_sum_iff (X : Type u) (Y : Type u') (κ : Cardinal.{w})
    (hκ : Cardinal.aleph0 ≤ κ) :
    HasCardinalLT (X ⊕ Y) κ ↔ HasCardinalLT X κ ∧ HasCardinalLT Y κ := by
  constructor
  · intro h
    exact ⟨h.of_injective _ Sum.inl_injective,
      h.of_injective _ Sum.inr_injective⟩
  · rintro ⟨hX, hY⟩
    dsimp [HasCardinalLT] at hX hY ⊢
    rw [← Cardinal.lift_lt.{_, u'}, Cardinal.lift_lift, Cardinal.lift_lift] at hX
    rw [← Cardinal.lift_lt.{_, u}, Cardinal.lift_lift, Cardinal.lift_lift] at hY
    simp only [Cardinal.mk_sum, Cardinal.lift_add, Cardinal.lift_lift]
    exact Cardinal.add_lt_of_lt (by simpa using hκ) hX hY

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/HasCardinalLT/Variant8ee974cff7b96030b109e98058f157e950b500097c0212e3f1155728d36e2a48.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f45099c63a72fcdbe09fc7b24f86030c435322fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
