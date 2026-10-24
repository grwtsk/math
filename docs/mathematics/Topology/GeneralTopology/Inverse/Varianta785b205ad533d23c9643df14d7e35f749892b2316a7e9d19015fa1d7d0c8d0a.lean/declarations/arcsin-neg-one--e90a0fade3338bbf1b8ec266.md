# arcsin_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1045aafe-3c04-c061-c30e-6a4ae3f81ca9",
  "kind": "theorem",
  "lexical_name": "arcsin_neg_one",
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
  "slug": "arcsin-neg-one--e90a0fade3338bbf1b8ec266",
  "source": {
    "blob": "dbab83c2c442469a08fd6eba27d981722fa75992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/Inverse/Varianta785b205ad533d23c9643df14d7e35f749892b2316a7e9d19015fa1d7d0c8d0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e90a0fade3338bbf1b8ec2664195130789b1d704566a659f4f0f180ddbf0ffe4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inverse/Varianta785b205ad533d23c9643df14d7e35f749892b2316a7e9d19015fa1d7d0c8d0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1045aafe-3c04-c061-c30e-6a4ae3f81ca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arcsin_neg_one : arcsin (-1) = -(π / 2) :=
  arcsin_eq_of_sin_eq (by rw [sin_neg, sin_pi_div_two]) <|
    left_mem_Icc.2 (neg_le_self pi_div_two_pos.le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inverse/Varianta785b205ad533d23c9643df14d7e35f749892b2316a7e9d19015fa1d7d0c8d0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inverse/Varianta785b205ad533d23c9643df14d7e35f749892b2316a7e9d19015fa1d7d0c8d0a.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbab83c2c442469a08fd6eba27d981722fa75992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
