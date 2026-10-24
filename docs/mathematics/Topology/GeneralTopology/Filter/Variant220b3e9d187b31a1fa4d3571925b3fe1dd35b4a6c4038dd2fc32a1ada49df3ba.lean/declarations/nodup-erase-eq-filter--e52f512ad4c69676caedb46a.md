# Nodup.erase_eq_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4e73575-0dc4-a384-7e7d-70000d7a6178",
  "kind": "theorem",
  "lexical_name": "Nodup.erase_eq_filter",
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
  "slug": "nodup-erase-eq-filter--e52f512ad4c69676caedb46a",
  "source": {
    "blob": "40d432f100e1550a761548ebe49ec1b395f4a96d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 419,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant220b3e9d187b31a1fa4d3571925b3fe1dd35b4a6c4038dd2fc32a1ada49df3ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e52f512ad4c69676caedb46ac6165bd2d55df186e0bbd0f9036103d1b21ee93a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant220b3e9d187b31a1fa4d3571925b3fe1dd35b4a6c4038dd2fc32a1ada49df3ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4e73575-0dc4-a384-7e7d-70000d7a6178`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nodup.erase_eq_filter [DecidableEq α] (a : α) {s} :
    Nodup s → s.erase a = Multiset.filter (· ≠ a) s :=
  Quot.induction_on s fun _ d =>
    congr_arg ((↑) : List α → Multiset α) <| by simpa using List.Nodup.erase_eq_filter d a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant220b3e9d187b31a1fa4d3571925b3fe1dd35b4a6c4038dd2fc32a1ada49df3ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant220b3e9d187b31a1fa4d3571925b3fe1dd35b4a6c4038dd2fc32a1ada49df3ba.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40d432f100e1550a761548ebe49ec1b395f4a96d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
