# filterMap_cons_none

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b61dab5-45f2-f873-c4e1-108286683a8d",
  "kind": "theorem",
  "lexical_name": "filterMap_cons_none",
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
  "slug": "filtermap-cons-none--20a9c36f6b8cc52c0e8e9a04",
  "source": {
    "blob": "40d432f100e1550a761548ebe49ec1b395f4a96d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 189,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant220b3e9d187b31a1fa4d3571925b3fe1dd35b4a6c4038dd2fc32a1ada49df3ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20a9c36f6b8cc52c0e8e9a04c7efb0e387fe4331b8acf7a4bcb20d908b74e057",
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

Occurrence: `result:3b61dab5-45f2-f873-c4e1-108286683a8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filterMap_cons_none {f : α → Option β} (a : α) (s : Multiset α) (h : f a = none) :
    filterMap f (a ::ₘ s) = filterMap f s :=
  Quot.inductionOn s fun _ => congr_arg ofList <| List.filterMap_cons_none h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant220b3e9d187b31a1fa4d3571925b3fe1dd35b4a6c4038dd2fc32a1ada49df3ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant220b3e9d187b31a1fa4d3571925b3fe1dd35b4a6c4038dd2fc32a1ada49df3ba.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40d432f100e1550a761548ebe49ec1b395f4a96d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
