# lt_opow_succ_log_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95884d82-69a4-99c3-8c2c-c9b5239efc61",
  "kind": "theorem",
  "lexical_name": "lt_opow_succ_log_self",
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
  "slug": "lt-opow-succ-log-self--3449d1532318c83ae04982f6",
  "source": {
    "blob": "b863582fd293af8d354444f1cdffa83ad701435f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 370,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variant8e817555fcb549a9bc09e092cdbf165e7f23c7747272d8fa120bf3e91d3c4223.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3449d1532318c83ae04982f608fd74c7dc3de92f82d9e3f19f730e55c01adb81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variant8e817555fcb549a9bc09e092cdbf165e7f23c7747272d8fa120bf3e91d3c4223.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95884d82-69a4-99c3-8c2c-c9b5239efc61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_opow_succ_log_self {b : Ordinal} (hb : 1 < b) (x : Ordinal) :
    x < b ^ succ (log b x) := by
  obtain rfl | hx := eq_or_ne x 0
  · simpa using hb.pos
  · rw [lt_opow_iff_log_lt hb hx, lt_succ_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variant8e817555fcb549a9bc09e092cdbf165e7f23c7747272d8fa120bf3e91d3c4223.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variant8e817555fcb549a9bc09e092cdbf165e7f23c7747272d8fa120bf3e91d3c4223.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b863582fd293af8d354444f1cdffa83ad701435f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
