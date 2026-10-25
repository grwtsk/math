# liftRel_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57d5bc34-93e5-3f00-8252-c1df7d5c6dfc",
  "kind": "theorem",
  "lexical_name": "liftRel_congr",
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
  "slug": "liftrel-congr--1c3f452e12a9e07c306ebaa8",
  "source": {
    "blob": "ebe8d97b4ddb957ba5f058f8a84862604c0ad3d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1016,
    "line": 1011,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf218677c889553e1c44ffbe72ccb9f718a01fa8c693b605804c7e776027e1791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c3f452e12a9e07c306ebaa8dd13d3e7135875fd6e0baf054263bd736b817272",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf218677c889553e1c44ffbe72ccb9f718a01fa8c693b605804c7e776027e1791.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57d5bc34-93e5-3f00-8252-c1df7d5c6dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1011–1016.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftRel_congr {R : α → β → Prop} {ca ca' : Computation α} {cb cb' : Computation β}
    (ha : ca ~ ca') (hb : cb ~ cb') : LiftRel R ca cb ↔ LiftRel R ca' cb' :=
  and_congr
    (forall_congr' fun _ => imp_congr (ha _) <| exists_congr fun _ => and_congr (hb _) Iff.rfl)
    (forall_congr' fun _ => imp_congr (hb _) <| exists_congr fun _ => and_congr (ha _) Iff.rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf218677c889553e1c44ffbe72ccb9f718a01fa8c693b605804c7e776027e1791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf218677c889553e1c44ffbe72ccb9f718a01fa8c693b605804c7e776027e1791.lean#L1011).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebe8d97b4ddb957ba5f058f8a84862604c0ad3d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
