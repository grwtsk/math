# pelim_join

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b375d53-fb57-7fe8-3d0a-7dbdd972fad5",
  "kind": "theorem",
  "lexical_name": "pelim_join",
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
  "slug": "pelim-join--e585ab14a2ba161742f222ce",
  "source": {
    "blob": "87a93adccf85fda7fa5b1ba0d7721778c5d4e3a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1295,
    "line": 1291,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant354615be1934455c9d6f3909456afa29459af82fc6b2a7ee74ff91c230e2e18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e585ab14a2ba161742f222ce675ef7ac8d704ff4b8a4cc01ff755424208fec47",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant354615be1934455c9d6f3909456afa29459af82fc6b2a7ee74ff91c230e2e18c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b375d53-fb57-7fe8-3d0a-7dbdd972fad5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1291–1295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[grind =] theorem pelim_join {o : Option (Option α)} {b : β} {f : (a : α) → a ∈ o.join → β} :
    o.join.pelim b f = o.pelim b (fun o' ho' => o'.pelim b (fun a ha => f a (by simp_all))) := by
  cases o <;> simp <;> congr

@[congr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant354615be1934455c9d6f3909456afa29459af82fc6b2a7ee74ff91c230e2e18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant354615be1934455c9d6f3909456afa29459af82fc6b2a7ee74ff91c230e2e18c.lean#L1291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87a93adccf85fda7fa5b1ba0d7721778c5d4e3a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
