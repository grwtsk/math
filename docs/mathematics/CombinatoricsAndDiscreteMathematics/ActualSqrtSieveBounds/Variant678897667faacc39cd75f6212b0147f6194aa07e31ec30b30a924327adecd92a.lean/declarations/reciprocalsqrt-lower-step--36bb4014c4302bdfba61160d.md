# reciprocalSqrt_lower_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de05abda-95d1-360f-7e47-6e91aa6b6106",
  "kind": "theorem",
  "lexical_name": "reciprocalSqrt_lower_step",
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
  "slug": "reciprocalsqrt-lower-step--36bb4014c4302bdfba61160d",
  "source": {
    "blob": "a855e1862257f0459a81931a40df6c44af4b3ed9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36bb4014c4302bdfba61160d06578ab3e35c94b2251e40105740eccbdf268d64",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de05abda-95d1-360f-7e47-6e91aa6b6106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem reciprocalSqrt_lower_step (n : ℕ) :
    2 * (Real.sqrt ((n + 2 : ℕ) : ℝ) - Real.sqrt ((n + 1 : ℕ) : ℝ)) ≤
      1 / Real.sqrt ((n + 1 : ℕ) : ℝ) := by
  have hp : 0 < ((n + 1 : ℕ) : ℝ) := by positivity
  apply (le_div_iff₀ (Real.sqrt_pos.2 hp)).mpr
  have hn := Real.sq_sqrt hp.le
  have hn' := Real.sq_sqrt (show (0 : ℝ) ≤ ((n + 2 : ℕ) : ℝ) by positivity)
  have hs := sq_nonneg
    (Real.sqrt ((n + 2 : ℕ) : ℝ) - Real.sqrt ((n + 1 : ℕ) : ℝ))
  push_cast at hn hn' hs ⊢
  nlinarith

/-- Complete positive integer weights have a square-root lower mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualSqrtSieveBounds/Variant678897667faacc39cd75f6212b0147f6194aa07e31ec30b30a924327adecd92a.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a855e1862257f0459a81931a40df6c44af4b3ed9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
