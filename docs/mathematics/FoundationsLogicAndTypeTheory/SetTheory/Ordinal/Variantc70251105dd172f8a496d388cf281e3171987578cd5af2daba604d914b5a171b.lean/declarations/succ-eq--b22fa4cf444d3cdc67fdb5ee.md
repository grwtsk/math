# succ?_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0461404-81fb-4d4d-440c-383def5cae54",
  "kind": "theorem",
  "lexical_name": "succ?_eq",
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
  "slug": "succ-eq--b22fa4cf444d3cdc67fdb5ee",
  "source": {
    "blob": "830406f14a4e1cd9ae841412254a2369bebf4dec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc70251105dd172f8a496d388cf281e3171987578cd5af2daba604d914b5a171b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b22fa4cf444d3cdc67fdb5ee8c30d02fb277df885fa0cc651dc15e256cb4b7bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc70251105dd172f8a496d388cf281e3171987578cd5af2daba604d914b5a171b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0461404-81fb-4d4d-440c-383def5cae54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ?_eq {c : Char} : c.succ? = (c.ordinal.addNat? 1).map Char.ofOrdinal := by
  fun_cases Char.succ? with
  | case1 h =>
    rw [Fin.addNat?_eq_some]
    · simp only [coe_ordinal, Option.map_some, Option.some.injEq, Char.ext_iff, val_ofOrdinal,
        UInt32.ofNatLT_add, UInt32.reduceOfNatLT]
      split
      · simp only [UInt32.ofNatLT_toNat, dite_eq_ite, left_eq_ite_iff, Nat.not_lt,
          Nat.reduceLeDiff, UInt32.left_eq_add]
        grind [UInt32.lt_iff_toNat_lt]
      · grind
    · simp [coe_ordinal, -toNat_val]
      grind [UInt32.lt_iff_toNat_lt]
  | case2 =>
    rw [Fin.addNat?_eq_some]
    · simp [coe_ordinal, *, Char.ext_iff, val_ofOrdinal, numSurrogates]
    · simp [coe_ordinal, *, numCodePoints]
  | case3 =>
    rw [Fin.addNat?_eq_some]
    · simp only [coe_ordinal, Option.map_some, Option.some.injEq, Char.ext_iff, val_ofOrdinal,
        UInt32.ofNatLT_add, UInt32.reduceOfNatLT]
      split
      · grind
      · rw [dif_neg]
        · simp only [← UInt32.toNat_inj, UInt32.toNat_add, UInt32.reduceToNat, Nat.reducePow,
            UInt32.toNat_ofNatLT, Nat.mod_add_mod]
          grind [UInt32.lt_iff_toNat_lt, UInt32.toNat_inj]
        · grind [UInt32.lt_iff_toNat_lt, UInt32.toNat_inj]
    · grind [UInt32.lt_iff_toNat_lt]
  | case4 =>
    rw [eq_comm]
    grind [UInt32.lt_iff_toNat_lt]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc70251105dd172f8a496d388cf281e3171987578cd5af2daba604d914b5a171b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc70251105dd172f8a496d388cf281e3171987578cd5af2daba604d914b5a171b.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830406f14a4e1cd9ae841412254a2369bebf4dec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
