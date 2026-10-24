# arccos_le_pi_div_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:707f292a-c6e7-14a0-9302-d07581ae81f7",
  "kind": "theorem",
  "lexical_name": "arccos_le_pi_div_four",
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
  "slug": "arccos-le-pi-div-four--317166d2425170f56dc6f3aa",
  "source": {
    "blob": "dbab83c2c442469a08fd6eba27d981722fa75992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 389,
    "path": "GRWTSK/Topology/GeneralTopology/Inverse/Varianta785b205ad533d23c9643df14d7e35f749892b2316a7e9d19015fa1d7d0c8d0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:317166d2425170f56dc6f3aa98c59dddfaf666d59db7042edd2afbd144d267ef",
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

Occurrence: `result:707f292a-c6e7-14a0-9302-d07581ae81f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arccos_le_pi_div_four {x} : arccos x ≤ π / 4 ↔ √2 / 2 ≤ x := by
  rw [arccos, ← pi_div_four_le_arcsin]
  constructor <;>
    · intro
      linarith

@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inverse/Varianta785b205ad533d23c9643df14d7e35f749892b2316a7e9d19015fa1d7d0c8d0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inverse/Varianta785b205ad533d23c9643df14d7e35f749892b2316a7e9d19015fa1d7d0c8d0a.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbab83c2c442469a08fd6eba27d981722fa75992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
