# IsNilpotent.commute_of_orderOf_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fa00367eb3bad43d0c638d420316f801679775a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9c9dab6-5310-ba17-e93c-e375793cf3bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d53e2b4-c886-7e31-00a9-eb04e26b2145",
  "kind": "theorem",
  "lexical_name": "IsNilpotent.commute_of_orderOf_coprime",
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
  "slug": "isnilpotent-commute-of-orderof-coprime--65ea4c93050ab9f7ea3c159f",
  "source": {
    "blob": "5fa00367eb3bad43d0c638d420316f801679775a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1246,
    "line": 1222,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65ea4c93050ab9f7ea3c159f332c375c41abacd7881020f12752b7a36760798d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d53e2b4-c886-7e31-00a9-eb04e26b2145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1222–1246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsNilpotent.commute_of_orderOf_coprime [IsNilpotent G] {x y : G}
    (h : (orderOf x).Coprime (orderOf y)) : Commute x y := by
  revert x y
  apply @nilpotent_center_quotient_ind _ G _ _ (by simp +contextual)
  intro G _ _ ih x y h
  have hcomm : ∀ g : G, Commute g ⁅x, y⁆ := by
    simp_rw [commute_iff_eq, ← mem_center_iff, ← eq_one_iff, ← mk'_apply,
      map_commutatorElement, commutatorElement_eq_one_iff_commute]
    apply ih <| h.of_dvd ?_ ?_ <;> apply orderOf_map_dvd
  rw [← commutatorElement_eq_one_iff_commute, ← orderOf_eq_one_iff, ← Nat.dvd_one, ← h.gcd_eq_one,
    Nat.dvd_gcd_iff, orderOf_dvd_iff_pow_eq_one, orderOf_dvd_iff_pow_eq_one,
    (hcomm x).commutatorElement_pow_left, (hcomm y).commutatorElement_pow_right]
  simp

end Group

end WithGroup

section WithFiniteGroup

open Group Fintype

variable {G : Type*} [hG : Group G]

/-- A p-group is nilpotent -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean#L1222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa00367eb3bad43d0c638d420316f801679775a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
