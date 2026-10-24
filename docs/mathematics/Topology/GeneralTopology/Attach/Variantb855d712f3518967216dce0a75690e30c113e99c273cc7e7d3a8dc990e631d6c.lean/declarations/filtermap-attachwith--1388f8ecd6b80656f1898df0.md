# filterMap_attachWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0db5b37-07f8-a7dd-1ab8-2c49aa845048",
  "kind": "theorem",
  "lexical_name": "filterMap_attachWith",
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
  "slug": "filtermap-attachwith--1388f8ecd6b80656f1898df0",
  "source": {
    "blob": "298de21244dbf716048660a16d8bc2d10ab5c10c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 494,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1388f8ecd6b80656f1898df0f97d2eab1acc543bf73988563cf9f52649c8f198",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0db5b37-07f8-a7dd-1ab8-2c49aa845048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filterMap_attachWith {q : α → Prop} {l : List α} {f : {x // q x} → Option β} (H) :
    (l.attachWith q H).filterMap f = l.attach.filterMap (fun ⟨x, h⟩ => f ⟨x, H _ h⟩) := by
  induction l with
  | nil => rfl
  | cons x xs ih =>
    simp only [attachWith_cons, filterMap_cons]
    split <;> simp_all [Function.comp_def]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variantb855d712f3518967216dce0a75690e30c113e99c273cc7e7d3a8dc990e631d6c.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `298de21244dbf716048660a16d8bc2d10ab5c10c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
