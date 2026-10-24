# continuous_posLog

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdacae09-cfff-7025-51d3-b32d40d83c6b",
  "kind": "theorem",
  "lexical_name": "continuous_posLog",
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
  "slug": "continuous-poslog--0341bae50030e5b926b2bc45",
  "source": {
    "blob": "3c965c5ee52579d26d813d487cc4c9246be5fdd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantd7156c155d3bd7b387ff5aeec1a2b4693b24cbddc268983954dcfd0d10d33bd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0341bae50030e5b926b2bc459600ad90c53714246a340a6f029c3d731d7a8159",
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

Occurrence: `result:cdacae09-cfff-7025-51d3-b32d40d83c6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[fun_prop] theorem continuous_posLog : Continuous log⁺ := by
  rw [continuous_iff_continuousAt]
  intro x
  by_cases hx : x = 0
  · apply ContinuousAt.congr (f := fun _ ↦ 0) (by fun_prop)
    filter_upwards [Metric.ball_mem_nhds _ zero_lt_one] with y hy
    rw [eq_comm, posLog_eq_zero_iff y]
    simp_all [le_of_lt]
  rw [posLog_def]
  fun_prop

/-!
## Trivial Estimates
-/

/-- For nonnegative `x`, the positive part of the logarithm is bounded by `log (1 + x)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PosLog/Variantd7156c155d3bd7b387ff5aeec1a2b4693b24cbddc268983954dcfd0d10d33bd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantd7156c155d3bd7b387ff5aeec1a2b4693b24cbddc268983954dcfd0d10d33bd0.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c965c5ee52579d26d813d487cc4c9246be5fdd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
