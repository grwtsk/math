# Icc_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59aa3c8b-9dbb-1b15-0933-9c318a5eb301",
  "kind": "theorem",
  "lexical_name": "Icc_compact",
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
  "slug": "icc-compact--022bc25cee7398284d1f33ea",
  "source": {
    "blob": "3fcd44115781dc5501a6acab15964937dfae07d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:022bc25cee7398284d1f33ea3c28259aa0dd56d87d08de67f3f704ece97e5838",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59aa3c8b-9dbb-1b15-0933-9c318a5eb301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Icc_compact (a b : ℝ) : IsCompact (Set.Icc a b) := isCompact_Icc

/-! ### Continuous functions on intervals -/

/-- A continuous function on a compact interval attains its bounds -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fcd44115781dc5501a6acab15964937dfae07d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
