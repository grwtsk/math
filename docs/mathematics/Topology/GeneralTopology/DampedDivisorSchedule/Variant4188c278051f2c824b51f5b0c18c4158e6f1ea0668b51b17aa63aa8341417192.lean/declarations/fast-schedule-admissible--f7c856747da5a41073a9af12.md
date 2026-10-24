# fast_schedule_admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49c20732-9708-e836-5014-f00ec7d35127",
  "kind": "theorem",
  "lexical_name": "fast_schedule_admissible",
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
  "slug": "fast-schedule-admissible--f7c856747da5a41073a9af12",
  "source": {
    "blob": "db63735814ca12dc6f1bf05a56eb39d122ba8a62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/DampedDivisorSchedule/Variant4188c278051f2c824b51f5b0c18c4158e6f1ea0668b51b17aa63aa8341417192.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7c856747da5a41073a9af122622ed8355fe000fc58676092670d10c0785a3d8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DampedDivisorSchedule/Variant4188c278051f2c824b51f5b0c18c4158e6f1ea0668b51b17aa63aa8341417192.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49c20732-9708-e836-5014-f00ec7d35127`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fast_schedule_admissible (X : ℕ) (hX : 4 ≤ X) :
    0 < fastEpsilon X ∧ fastEpsilon X ≤ 1 / 4 ∧ 1 ≤ cutoffSchedule X := by
  obtain ⟨hx, _, _⟩ := scale_facts X (by omega)
  refine ⟨by unfold fastEpsilon; positivity, ?_, (schedule_admissible X (by omega)).2.2⟩
  unfold fastEpsilon
  exact one_div_le_one_div_of_le (by norm_num) (by exact_mod_cast hX)

/-- Both original endpoint quantities retain shrinking explicit bounds under faster damping. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DampedDivisorSchedule/Variant4188c278051f2c824b51f5b0c18c4158e6f1ea0668b51b17aa63aa8341417192.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DampedDivisorSchedule/Variant4188c278051f2c824b51f5b0c18c4158e6f1ea0668b51b17aa63aa8341417192.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db63735814ca12dc6f1bf05a56eb39d122ba8a62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
