# le_rpow_iff_log_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e3f62550a758e94a1d513133cd744406b319e41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 776,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f4970fe329b14615ca6cfa3e0dcb0cf9d2017c98d2e3501237412aa2474e70b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71cf8082-b877-fe61-1cb0-0a363ecf8baa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48f1e5d1-0943-da43-a502-c25d350a076f",
  "kind": "theorem",
  "lexical_name": "le_rpow_iff_log_le",
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
  "slug": "le-rpow-iff-log-le--36283a7d9de56c71f6a95280",
  "source": {
    "blob": "6e3f62550a758e94a1d513133cd744406b319e41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 778,
    "line": 776,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Real/Variant5f4970fe329b14615ca6cfa3e0dcb0cf9d2017c98d2e3501237412aa2474e70b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36283a7d9de56c71f6a95280458b3dc58aaeb7a2a8e1c17a8060e1b9e8ddb904",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Real/Variant5f4970fe329b14615ca6cfa3e0dcb0cf9d2017c98d2e3501237412aa2474e70b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48f1e5d1-0943-da43-a502-c25d350a076f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 776–778.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_rpow_iff_log_le (hx : 0 < x) (hy : 0 < y) : x ≤ y ^ z ↔ log x ≤ z * log y := by
  rw [← log_le_log_iff hx (rpow_pos_of_pos hy z), log_rpow hy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Real/Variant5f4970fe329b14615ca6cfa3e0dcb0cf9d2017c98d2e3501237412aa2474e70b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Real/Variant5f4970fe329b14615ca6cfa3e0dcb0cf9d2017c98d2e3501237412aa2474e70b.lean#L776).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e3f62550a758e94a1d513133cd744406b319e41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
