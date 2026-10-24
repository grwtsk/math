# nilpotencyClass_le_of_ker_le_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e5d5266-e6dc-b6ed-65e0-d7d2d4933ec9",
  "kind": "theorem",
  "lexical_name": "nilpotencyClass_le_of_ker_le_center",
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
  "slug": "nilpotencyclass-le-of-ker-le-center--3bdf2daa50bfb445fd85f879",
  "source": {
    "blob": "7daadc8d4a5272557076fb6cb1d6dcf712139a6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 520,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variantc9f0487e08f309469bec4911a81a2130404207d00c46979234a53c45f51c703c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bdf2daa50bfb445fd85f879be675b1cbfb71f66a7beaa41cad9caecb0a01595",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variantc9f0487e08f309469bec4911a81a2130404207d00c46979234a53c45f51c703c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e5d5266-e6dc-b6ed-65e0-d7d2d4933ec9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nilpotencyClass_le_of_ker_le_center {H : Type*} [Group H] (f : G →* H)
    (hf1 : f.ker ≤ center G) (hH : IsNilpotent H) :
    Group.nilpotencyClass (hG := isNilpotent_of_ker_le_center f hf1 hH) ≤
      Group.nilpotencyClass H + 1 := by
  haveI : IsNilpotent G := isNilpotent_of_ker_le_center f hf1 hH
  rw [← lowerCentralSeries_length_eq_nilpotencyClass]
  classical apply Nat.find_min'
  refine lowerCentralSeries_succ_eq_bot (le_trans ((Subgroup.map_eq_bot_iff _).mp ?_) hf1)
  rw [eq_bot_iff]
  apply le_trans (lowerCentralSeries.map f _)
  simp only [lowerCentralSeries_nilpotencyClass, le_bot_iff]

/-- The range of a surjective homomorphism from a nilpotent group is nilpotent -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variantc9f0487e08f309469bec4911a81a2130404207d00c46979234a53c45f51c703c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variantc9f0487e08f309469bec4911a81a2130404207d00c46979234a53c45f51c703c.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7daadc8d4a5272557076fb6cb1d6dcf712139a6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
