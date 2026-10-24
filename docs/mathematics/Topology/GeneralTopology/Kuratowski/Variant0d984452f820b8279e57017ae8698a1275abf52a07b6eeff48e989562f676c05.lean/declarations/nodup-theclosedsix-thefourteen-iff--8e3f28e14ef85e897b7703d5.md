# nodup_theClosedSix_theFourteen_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:075d7ac8-92fc-c9b6-0815-ff0bb1397bca",
  "kind": "theorem",
  "lexical_name": "nodup_theClosedSix_theFourteen_iff",
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
  "slug": "nodup-theclosedsix-thefourteen-iff--8e3f28e14ef85e897b7703d5",
  "source": {
    "blob": "2c28bb271714c425f877682fe5529ec85a4b3f39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Kuratowski/Variant0d984452f820b8279e57017ae8698a1275abf52a07b6eeff48e989562f676c05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e3f28e14ef85e897b7703d55da70f9e39534c11e082b43cc091150907553e7a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Kuratowski/Variant0d984452f820b8279e57017ae8698a1275abf52a07b6eeff48e989562f676c05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:075d7ac8-92fc-c9b6-0815-ff0bb1397bca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_theClosedSix_theFourteen_iff : (theClosedSix s).Nodup ↔ TheSixIneq s := by
  rw [TheSixIneq, theClosedSix]
  simp only [insert_eq_cons, nodup_cons, mem_cons, mem_singleton,
             not_or, nodup_singleton, and_true, ← ne_eq, and_assoc]
  -- The goal becomes 6 inequalities ↔ 15 inequalities.
  constructor -- Show both implications.
  · -- One implication is almost trivial as the six inequalities are among the fifteen.
    tauto
  · intro h -- Introduce `TheSixIneq` as an assumption.
    repeat obtain ⟨_, h⟩ := h -- Split the hypothesis into six different inequalities.
    repeat refine .symm (.intro ?_ ?_) -- Split the goal into 15 inequalities.
    any_goals
      rw [ne_comm]
      try assumption
    -- Solve trivial goals (the six inequalities contained in `TheSixIneq`).
    any_goals
    /- Now eight other goals can be solved by simplifying
      and then using one of the six given inequalities. -/
      apply mt (congr_arg (k ·ᶜ))
      first
      | try repeat rw [kckckck_eq_kck, eq_comm]
        assumption
      | apply mt (congr_arg (k ·ᶜ))
        try repeat rw [kckckck_eq_kck, eq_comm]
        assumption
    -- One last goal (`k (k (k sᶜ)ᶜ)ᶜ ≠ k s`) needs some other simplifying steps:
    · apply mt (congr_arg fun s ↦ k (k sᶜ)ᶜ)
      rwa [kckckck_eq_kck]

open Multiset in
/-- `theFourteen s` contains no duplicates if and only if `theClosedSix s` has none,
and `theClosedSix s` is disjoint from `theOpenSix s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Kuratowski/Variant0d984452f820b8279e57017ae8698a1275abf52a07b6eeff48e989562f676c05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Kuratowski/Variant0d984452f820b8279e57017ae8698a1275abf52a07b6eeff48e989562f676c05.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c28bb271714c425f877682fe5529ec85a4b3f39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
