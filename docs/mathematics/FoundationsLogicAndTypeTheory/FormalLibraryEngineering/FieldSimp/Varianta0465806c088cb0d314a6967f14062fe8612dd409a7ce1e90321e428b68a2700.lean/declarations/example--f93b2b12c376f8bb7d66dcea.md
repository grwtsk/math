# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af0ed8485eb4e095eb5d0cc1dba5630f21908caaf21fca5d241139919e06d760",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--f93b2b12c376f8bb7d66dcea",
  "source": {
    "blob": "d1ebda7789c20b174a121704b013b7a93e7664a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 805,
    "line": 797,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Varianta0465806c088cb0d314a6967f14062fe8612dd409a7ce1e90321e428b68a2700.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f93b2b12c376f8bb7d66dcea04341e392e9eee425c71b73095451435492da8b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Varianta0465806c088cb0d314a6967f14062fe8612dd409a7ce1e90321e428b68a2700.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af0ed8485eb4e095eb5d0cc1dba5630f21908caaf21fca5d241139919e06d760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 797–805.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {K : Type*} [Field K] (n : ℕ) (w : K) (h0 : w ≠ 0) : w ^ n / w ^ n = n := by
  field_simp
  guard_target = (1 : K) = n
  exact test_sorry

section
variable {K : Type*} [Field K] [LinearOrder K] [IsStrictOrderedRing K]

-- mimic discharger
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Varianta0465806c088cb0d314a6967f14062fe8612dd409a7ce1e90321e428b68a2700.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldSimp/Varianta0465806c088cb0d314a6967f14062fe8612dd409a7ce1e90321e428b68a2700.lean#L797).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1ebda7789c20b174a121704b013b7a93e7664a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
