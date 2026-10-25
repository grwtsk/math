# mirimanoffKR_eq_false_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fcaa47d-d6bd-e32d-8216-2ec5eabf92c9",
  "kind": "theorem",
  "lexical_name": "mirimanoffKR_eq_false_iff",
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
  "slug": "mirimanoffkr-eq-false-iff--f6ef0e972681e4329c27dc4d",
  "source": {
    "blob": "3e5b5c6ff27700a46f3118b991dd5da55f20b143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6ef0e972681e4329c27dc4dcb835da006dd55e93966a5bb34591364f1afb831",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fcaa47d-d6bd-e32d-8216-2ec5eabf92c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem mirimanoffKR_eq_false_iff (p : ℕ) (hp : p ≠ 1) :
    mirimanoffKR p = false ↔ ¬Mirimanoff p := by
  rw [← Bool.not_eq_true, mirimanoffKR_eq_true_iff p hp]

/-! # We check odd numbers up to 6000 in the classes 1%6 and 5%6 -/

-- set_option trace.profiler true
-- set_option trace.profiler.threshold 0

-- elab: 37 ms
-- kernel: 470 ms
-- 6n+1 to 6000
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Wieferich/Variantdcdf4b08064cecedfa06bb56fc40f9542f1f9123ac1e9af6e8d7d2994a8e30ab.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e5b5c6ff27700a46f3118b991dd5da55f20b143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
