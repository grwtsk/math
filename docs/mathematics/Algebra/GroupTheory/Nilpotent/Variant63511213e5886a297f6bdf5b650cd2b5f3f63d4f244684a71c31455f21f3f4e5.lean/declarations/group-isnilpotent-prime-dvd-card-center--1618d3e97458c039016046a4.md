# Group.IsNilpotent.prime_dvd_card_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c321565-5fb9-c90c-e1f7-f1214df5707b",
  "kind": "lemma",
  "lexical_name": "Group.IsNilpotent.prime_dvd_card_center",
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
  "slug": "group-isnilpotent-prime-dvd-card-center--1618d3e97458c039016046a4",
  "source": {
    "blob": "30c59694ffb89b9851d8498640ef653bd9c59778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1312,
    "line": 1305,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1618d3e97458c039016046a4ad010a5c29bc04af2dd61d72c47e1924c06c44d7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c321565-5fb9-c90c-e1f7-f1214df5707b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1305–1312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Group.IsNilpotent.prime_dvd_card_center [IsNilpotent G] {p : ℕ} [hp : Fact p.Prime]
    (hcard : p ∣ Nat.card G) : p ∣ Nat.card (center G) := by
  obtain P : Sylow p G := Classical.arbitrary ..
  refine dvd_trans ?_ <| (↑P ⊓ center G).card_dvd_of_le inf_le_right
  have hnt := mt (eq_bot_iff_card _).mpr (inf_center_ne_bot_of_normal (P.ne_bot_of_dvd_card hcard))
  exact P.isPGroup'.to_inf_left.card_eq_or_dvd.resolve_left hnt

/-- A finite nilpotent group has normal subgroups of every possible index. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean#L1305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30c59694ffb89b9851d8498640ef653bd9c59778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
