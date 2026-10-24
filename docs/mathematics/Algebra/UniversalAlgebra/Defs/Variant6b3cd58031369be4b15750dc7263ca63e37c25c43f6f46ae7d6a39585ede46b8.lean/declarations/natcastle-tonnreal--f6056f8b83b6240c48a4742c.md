# natCastle_toNNReal'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64fcbeac-589d-b682-8076-2a5d29d14ce7",
  "kind": "lemma",
  "lexical_name": "natCastle_toNNReal'",
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
  "slug": "natcastle-tonnreal--f6056f8b83b6240c48a4742c",
  "source": {
    "blob": "7acbad55337a121b30a6450e8cb15e8fc47fc96f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 610,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant6b3cd58031369be4b15750dc7263ca63e37c25c43f6f46ae7d6a39585ede46b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6056f8b83b6240c48a4742c9c2a37b2f3231837c3132652d94c474173960afd",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Defs/Variant6b3cd58031369be4b15750dc7263ca63e37c25c43f6f46ae7d6a39585ede46b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64fcbeac-589d-b682-8076-2a5d29d14ce7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natCastle_toNNReal' {n : ℕ} {r : ℝ} : ↑n ≤ r.toNNReal ↔ n ≤ r ∨ n = 0 := by
  simpa [n.cast_nonneg.le_iff_eq] using toNNReal_le_toNNReal_iff' (r := n)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Defs/Variant6b3cd58031369be4b15750dc7263ca63e37c25c43f6f46ae7d6a39585ede46b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Defs/Variant6b3cd58031369be4b15750dc7263ca63e37c25c43f6f46ae7d6a39585ede46b8.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7acbad55337a121b30a6450e8cb15e8fc47fc96f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
