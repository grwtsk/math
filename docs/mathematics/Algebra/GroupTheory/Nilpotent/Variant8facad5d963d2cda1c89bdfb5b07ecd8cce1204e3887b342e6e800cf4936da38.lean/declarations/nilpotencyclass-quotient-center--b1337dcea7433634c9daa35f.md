# nilpotencyClass_quotient_center

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
      "line": 875,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d212567-2ab5-d3fd-32d7-06348e43f303",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c22957df-359f-91ac-e1fe-710ae2e7b636",
  "kind": "theorem",
  "lexical_name": "nilpotencyClass_quotient_center",
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
  "slug": "nilpotencyclass-quotient-center--b1337dcea7433634c9daa35f",
  "source": {
    "blob": "5fa00367eb3bad43d0c638d420316f801679775a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 898,
    "line": 875,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1337dcea7433634c9daa35f15e661bb1201fbaab9d77c4153ec8e8b20c75f19",
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

Occurrence: `result:c22957df-359f-91ac-e1fe-710ae2e7b636`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 875–898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nilpotencyClass_quotient_center :
    Group.nilpotencyClass (G ⧸ center G) = Group.nilpotencyClass G - 1 := by
  by_cases hH : IsNilpotent G; swap
  · rw [nilpotencyClass_of_not_nilpotent hH, zero_tsub, nilpotencyClass_of_not_nilpotent]
    exact mt of_quotient_center_nilpotent hH
  generalize hn : Group.nilpotencyClass G = n
  rcases n with (rfl | n)
  · simp only [nilpotencyClass_zero_iff_subsingleton, zero_tsub] at *
    exact Quotient.instSubsingletonQuotient (leftRel (center G))
  · suffices Group.nilpotencyClass (G ⧸ center G) = n by simpa
    apply le_antisymm
    · apply upperCentralSeries_eq_top_iff_nilpotencyClass_le.mp
      apply comap_injective (f := (mk' (center G))) Quot.mk_surjective
      rw [comap_upperCentralSeries_quotient_center, comap_top, Nat.succ_eq_add_one, ← hn]
      exact upperCentralSeries_nilpotencyClass
    · apply le_of_add_le_add_right
      calc
        n + 1 = Group.nilpotencyClass G := hn.symm
        _ ≤ Group.nilpotencyClass (G ⧸ center G) + 1 :=
          nilpotencyClass_le_of_ker_le_center _ (le_of_eq (ker_mk' _))

/-- The nilpotency class of a non-trivial group is one more than its quotient by the center -/
@[to_additive /-- The nilpotency class of a non-trivial additive group is one more than its quotient
by the center -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variant8facad5d963d2cda1c89bdfb5b07ecd8cce1204e3887b342e6e800cf4936da38.lean#L875).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa00367eb3bad43d0c638d420316f801679775a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
