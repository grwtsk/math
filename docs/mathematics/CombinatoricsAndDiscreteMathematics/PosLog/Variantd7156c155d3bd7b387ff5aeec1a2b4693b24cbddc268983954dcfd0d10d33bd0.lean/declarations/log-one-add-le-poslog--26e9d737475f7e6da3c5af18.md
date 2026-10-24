# log_one_add_le_posLog

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0de97828-a540-af4e-92db-69c83749acf0",
  "kind": "lemma",
  "lexical_name": "log_one_add_le_posLog",
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
  "slug": "log-one-add-le-poslog--26e9d737475f7e6da3c5af18",
  "source": {
    "blob": "3c965c5ee52579d26d813d487cc4c9246be5fdd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantd7156c155d3bd7b387ff5aeec1a2b4693b24cbddc268983954dcfd0d10d33bd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26e9d737475f7e6da3c5af182b6312bfe29b8a2195adfdf1d827f2fcfb266f34",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PosLog/Variantd7156c155d3bd7b387ff5aeec1a2b4693b24cbddc268983954dcfd0d10d33bd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0de97828-a540-af4e-92db-69c83749acf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_one_add_le_posLog {x : ℝ} : log (1 + x) ≤ log⁺ x + log 2 := by
  have h₁ : (1 : ℝ) ≤ max 1 |x| := le_max_left ..
  have h₂ : |1 + x| ≤ max 1 |x| * 2 := by
    linarith [abs_add_le 1 x, le_max_right 1 |x|, abs_one (α := ℝ)]
  calc log (1 + x)
  _ ≤ log⁺ (1 + x) := le_max_right ..
  _ = log⁺ |1 + x| := (posLog_abs _).symm
  _ ≤ log⁺ (max 1 |x| * 2) := posLog_le_posLog (neg_one_lt_zero.le.trans (abs_nonneg _)) h₂
  _ = log⁺ x + log 2 := by
    rw [posLog_eq_log (by rw [abs_of_nonneg (by positivity)]; linarith),
      log_mul (by positivity) two_ne_zero, ← posLog_eq_log_max_one (abs_nonneg x), posLog_abs]

/-- The positive part of the logarithm is bounded by the absolute value: `log⁺ x ≤ |x|`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PosLog/Variantd7156c155d3bd7b387ff5aeec1a2b4693b24cbddc268983954dcfd0d10d33bd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantd7156c155d3bd7b387ff5aeec1a2b4693b24cbddc268983954dcfd0d10d33bd0.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c965c5ee52579d26d813d487cc4c9246be5fdd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
