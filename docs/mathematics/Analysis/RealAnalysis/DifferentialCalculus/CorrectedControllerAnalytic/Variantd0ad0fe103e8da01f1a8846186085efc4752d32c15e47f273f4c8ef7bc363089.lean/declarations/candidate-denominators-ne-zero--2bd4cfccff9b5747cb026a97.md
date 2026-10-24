# candidate_denominators_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7ed4337-ef10-eea1-6ba1-a4b6fcc0c22e",
  "kind": "theorem",
  "lexical_name": "candidate_denominators_ne_zero",
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
  "slug": "candidate-denominators-ne-zero--2bd4cfccff9b5747cb026a97",
  "source": {
    "blob": "f2fadc302170a5969bc232ff029b6f16f1aa4a41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bd4cfccff9b5747cb026a97ee7d5aca31b43a25f23b4f2e4661cf144eba69ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7ed4337-ef10-eea1-6ba1-a4b6fcc0c22e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_denominators_ne_zero (ε h : ℝ) (hε : 0 < ε) (hh : 0 ≤ h)
    (z : ℂ) (hz : 0 ≤ z.re) :
    reducedW (z + ε) ≠ 0 ∧ 1 + (h : ℂ) * (z + ε) ≠ 0 ∧ 1 + z + (ε : ℂ) ≠ 0 := by
  have hr : 0 < (z + (ε : ℂ)).re := by simp only [Complex.add_re, Complex.ofReal_re]; linarith
  refine ⟨reducedW_ne_zero _ hr, ?_, ?_⟩
  · intro he
    have := congrArg Complex.re he
    norm_num at this
    nlinarith [mul_nonneg hh (le_of_lt hr)]
  · intro he
    have := congrArg Complex.re he
    norm_num at this
    linarith

/-- Global complex differentiability includes every boundary parameter after a positive shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrectedControllerAnalytic/Variantd0ad0fe103e8da01f1a8846186085efc4752d32c15e47f273f4c8ef7bc363089.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2fadc302170a5969bc232ff029b6f16f1aa4a41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
