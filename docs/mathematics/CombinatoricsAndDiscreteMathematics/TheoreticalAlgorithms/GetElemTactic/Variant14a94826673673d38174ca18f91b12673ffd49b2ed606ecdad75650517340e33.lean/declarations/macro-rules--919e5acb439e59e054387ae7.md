# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b9e0ec1cd014f22bf2038ab58cbb584cc67b44fb7dfbe26b4b796dff57e3457",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--919e5acb439e59e054387ae7",
  "source": {
    "blob": "914f5109d0dc01097767db7fd80e198262791c84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetElemTactic/Variant14a94826673673d38174ca18f91b12673ffd49b2ed606ecdad75650517340e33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:919e5acb439e59e054387ae74b06745433cee9de9a1c3f2a4c7595cb2aeef9dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetElemTactic/Variant14a94826673673d38174ca18f91b12673ffd49b2ed606ecdad75650517340e33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b9e0ec1cd014f22bf2038ab58cbb584cc67b44fb7dfbe26b4b796dff57e3457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro_rules
  | `(tactic| get_elem_tactic_extensible) =>
    `(tactic|
      first
        | try rw [Std.Rcc.mem_iff] at *
          try rw [Std.Rco.mem_iff] at *
          try rw [Std.Rci.mem_iff] at *
          try rw [Std.Roc.mem_iff] at *
          try rw [Std.Roo.mem_iff] at *
          try rw [Std.Roi.mem_iff] at *
          try rw [Std.Ric.mem_iff] at *
          try rw [Std.Rio.mem_iff] at *
          try rw [Std.Rii.mem_iff] at *
          try dsimp +zetaDelta only [
            -- `Vector.size` needs to be unfolded because for `xs : Vector α n`, one needs to prove
            -- `i < n` instead of `i < xs.size`. Although `Vector.size` is reducible, this is
            -- not enough for `omega`.
            Vector.size] at *
          -- If we're accessing elements of a subarray, we need to calculate its size.
          try simp only [
            Array.size_mkSlice_rco, Array.size_mkSlice_rcc, Array.size_mkSlice_rci,
            Array.size_mkSlice_roo, Array.size_mkSlice_roc, Array.size_mkSlice_roi,
            Array.size_mkSlice_rio, Array.size_mkSlice_ric, Array.size_mkSlice_rii]
          omega
        | done)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetElemTactic/Variant14a94826673673d38174ca18f91b12673ffd49b2ed606ecdad75650517340e33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetElemTactic/Variant14a94826673673d38174ca18f91b12673ffd49b2ed606ecdad75650517340e33.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `914f5109d0dc01097767db7fd80e198262791c84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
