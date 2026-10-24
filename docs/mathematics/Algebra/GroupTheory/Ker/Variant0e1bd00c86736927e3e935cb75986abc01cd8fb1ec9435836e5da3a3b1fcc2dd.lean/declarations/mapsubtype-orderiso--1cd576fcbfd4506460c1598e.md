# MapSubtype.orderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c81e452b3d1571ef5aa92e0becb9810469dc4df485815c2649e9f2226628f08",
  "kind": "def",
  "lexical_name": "MapSubtype.orderIso",
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
  "slug": "mapsubtype-orderiso--1cd576fcbfd4506460c1598e",
  "source": {
    "blob": "83f276ab0e3b5df06c48f14332d79b0cb7b60abe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 546,
    "path": "GRWTSK/Algebra/GroupTheory/Ker/Variant0e1bd00c86736927e3e935cb75986abc01cd8fb1ec9435836e5da3a3b1fcc2dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cd576fcbfd4506460c1598e45f42f23e33e9fbd9326b170c4b6ee80d9acceba",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ker/Variant0e1bd00c86736927e3e935cb75986abc01cd8fb1ec9435836e5da3a3b1fcc2dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c81e452b3d1571ef5aa92e0becb9810469dc4df485815c2649e9f2226628f08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MapSubtype.orderIso (H : Subgroup G) : Subgroup ↥H ≃o { H' : Subgroup G // H' ≤ H } where
  toFun H' := ⟨H'.map H.subtype, map_subtype_le H'⟩
  invFun sH' := sH'.1.subgroupOf H
  left_inv H' := comap_map_eq_self_of_injective H.subtype_injective H'
  right_inv sH' := Subtype.ext (map_subgroupOf_eq_of_le sH'.2)
  map_rel_iff' := by simp

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ker/Variant0e1bd00c86736927e3e935cb75986abc01cd8fb1ec9435836e5da3a3b1fcc2dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ker/Variant0e1bd00c86736927e3e935cb75986abc01cd8fb1ec9435836e5da3a3b1fcc2dd.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f276ab0e3b5df06c48f14332d79b0cb7b60abe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
