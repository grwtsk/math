# principalUnitGroup_le_principalUnitGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7984ce1909c32310a0ed7719e002efbc0b423603",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 579,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:157c6487-d588-f103-5196-39560e70934a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69411fae-a352-9154-cfdb-8c52718fa1fb",
  "kind": "theorem",
  "lexical_name": "principalUnitGroup_le_principalUnitGroup",
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
  "slug": "principalunitgroup-le-principalunitgroup--7696f76903e79085a0056711",
  "source": {
    "blob": "7984ce1909c32310a0ed7719e002efbc0b423603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 579,
    "path": "GRWTSK/Algebra/ValuationSubring/Variant5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7696f76903e79085a0056711818751dc68b3e634d3d2c559523583e2db277056",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationSubring/Variant5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69411fae-a352-9154-cfdb-8c52718fa1fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem principalUnitGroup_le_principalUnitGroup {A B : ValuationSubring K} :
    B.principalUnitGroup ≤ A.principalUnitGroup ↔ A ≤ B := by
  constructor
  · intro h x hx
    by_cases h_1 : x = 0; · simp only [h_1, zero_mem]
    by_cases h_2 : x⁻¹ + 1 = 0
    · rw [add_eq_zero_iff_eq_neg, inv_eq_iff_eq_inv, inv_neg, inv_one] at h_2
      simpa only [h_2] using B.neg_mem _ B.one_mem
    · rw [← valuation_le_one_iff, ← not_lt, Valuation.one_lt_val_iff _ h_1,
        ← add_sub_cancel_right x⁻¹, ← Units.val_mk0 h_2, ← mem_principalUnitGroup_iff] at hx ⊢
      simpa only [hx] using @h (Units.mk0 (x⁻¹ + 1) h_2)
  · intro h x hx
    by_contra h_1; exact not_lt.2 (monotone_mapOfLE _ _ h (not_lt.1 h_1)) hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationSubring/Variant5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationSubring/Variant5b188c03f6199671ad50f0c61294ffa7b24fb439837dbbdd3acf42e16871b34e.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7984ce1909c32310a0ed7719e002efbc0b423603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
