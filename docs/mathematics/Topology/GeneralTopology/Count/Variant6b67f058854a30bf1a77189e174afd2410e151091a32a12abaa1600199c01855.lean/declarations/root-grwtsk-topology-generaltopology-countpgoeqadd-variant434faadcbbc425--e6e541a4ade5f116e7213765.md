# _root_.GRWTSK.Topology.GeneralTopology.CountPGoEqAdd.Variant434faadcbbc425cba5b93d1d5547ec060eece7826afc1d20b1f73e67d357ee1a.Std.Internal.List.not_of_countP_eq_zero_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74ad583d-c3c4-7691-4d5f-dfac1c4ecf30",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.CountPGoEqAdd.Variant434faadcbbc425cba5b93d1d5547ec060eece7826afc1d20b1f73e67d357ee1a.Std.Internal.List.not_of_countP_eq_zero_of_mem",
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
  "slug": "root-grwtsk-topology-generaltopology-countpgoeqadd-variant434faadcbbc425--e6e541a4ade5f116e7213765",
  "source": {
    "blob": "accad7a46e5390c05a2ccd917dee266166562af1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/Count/Variant6b67f058854a30bf1a77189e174afd2410e151091a32a12abaa1600199c01855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6e541a4ade5f116e7213765fc31a734525d2781526ff5edb59b6eec8d5b9c1e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Count/Variant6b67f058854a30bf1a77189e174afd2410e151091a32a12abaa1600199c01855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74ad583d-c3c4-7691-4d5f-dfac1c4ecf30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.CountPGoEqAdd.Variant434faadcbbc425cba5b93d1d5547ec060eece7826afc1d20b1f73e67d357ee1a.Std.Internal.List.not_of_countP_eq_zero_of_mem {xs : List α} (h : xs.countP p = 0) (h' : x ∈ xs) : ¬ p x :=
   countP_eq_zero.mp h _ h'

grind_pattern Std.Internal.List.not_of_countP_eq_zero_of_mem => xs.countP p, x ∈ xs where
  guard xs.countP p = 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Count/Variant6b67f058854a30bf1a77189e174afd2410e151091a32a12abaa1600199c01855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Count/Variant6b67f058854a30bf1a77189e174afd2410e151091a32a12abaa1600199c01855.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `accad7a46e5390c05a2ccd917dee266166562af1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
