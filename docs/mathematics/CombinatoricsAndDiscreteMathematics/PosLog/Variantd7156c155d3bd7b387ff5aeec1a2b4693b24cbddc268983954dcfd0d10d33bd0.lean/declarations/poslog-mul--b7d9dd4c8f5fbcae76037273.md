# posLog_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54e122b7-fca5-5d87-386a-2c55060f0c04",
  "kind": "theorem",
  "lexical_name": "posLog_mul",
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
  "slug": "poslog-mul--b7d9dd4c8f5fbcae76037273",
  "source": {
    "blob": "3c965c5ee52579d26d813d487cc4c9246be5fdd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 193,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantd7156c155d3bd7b387ff5aeec1a2b4693b24cbddc268983954dcfd0d10d33bd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7d9dd4c8f5fbcae76037273b7fa22b1bd81d50b0e767e75589076fae7c4371c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PosLog/Variantd7156c155d3bd7b387ff5aeec1a2b4693b24cbddc268983954dcfd0d10d33bd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54e122b7-fca5-5d87-386a-2c55060f0c04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posLog_mul : log⁺ (x * y) ≤ log⁺ x + log⁺ y := by
  by_cases ha : x = 0
  · simp [ha, posLog]
  by_cases hb : y = 0
  · simp [hb, posLog]
  unfold posLog
  nth_rw 1 [← add_zero 0, log_mul ha hb]
  exact max_add_add_le_max_add_max

/-- Estimate for `log⁺` of a product. Special case of `Real.posLog_mul` where one of
the factors is a natural number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PosLog/Variantd7156c155d3bd7b387ff5aeec1a2b4693b24cbddc268983954dcfd0d10d33bd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantd7156c155d3bd7b387ff5aeec1a2b4693b24cbddc268983954dcfd0d10d33bd0.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c965c5ee52579d26d813d487cc4c9246be5fdd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
