# phaseAngle_three_quarters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b839d41-bb36-5c9a-1e05-06f4b5360bee",
  "kind": "theorem",
  "lexical_name": "phaseAngle_three_quarters",
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
  "slug": "phaseangle-three-quarters--2ac1d65cecffa54a1367ad97",
  "source": {
    "blob": "8bfc05300dea8de3a0b8c7eaa0ba0c49290a7a7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 237,
    "path": "GRWTSK/Analysis/CyclicNeutral/Variant186c895d9877bb7062f66e4f894f502e23942ae0a3e1a0c6de84c18f0b71bca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ac1d65cecffa54a1367ad972527728be9ccb8376a32ad920fb583112d12049d",
  "verification": {
    "reference": "docs/verification/Analysis/CyclicNeutral/Variant186c895d9877bb7062f66e4f894f502e23942ae0a3e1a0c6de84c18f0b71bca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b839d41-bb36-5c9a-1e05-06f4b5360bee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem phaseAngle_three_quarters :
    phaseAngle (3 / 4 : ℝ) = Real.pi / 2 + Real.pi := by
  unfold phaseAngle
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CyclicNeutral/Variant186c895d9877bb7062f66e4f894f502e23942ae0a3e1a0c6de84c18f0b71bca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CyclicNeutral/Variant186c895d9877bb7062f66e4f894f502e23942ae0a3e1a0c6de84c18f0b71bca9.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bfc05300dea8de3a0b8c7eaa0ba0c49290a7a7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
