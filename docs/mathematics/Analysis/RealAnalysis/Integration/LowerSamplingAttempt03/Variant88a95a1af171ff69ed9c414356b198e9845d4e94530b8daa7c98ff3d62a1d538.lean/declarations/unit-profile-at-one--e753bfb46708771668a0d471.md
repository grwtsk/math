# unit_profile_at_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9eccd6ac-5e94-dd44-57bc-0043a0c7dddc",
  "kind": "theorem",
  "lexical_name": "unit_profile_at_one",
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
  "slug": "unit-profile-at-one--e753bfb46708771668a0d471",
  "source": {
    "blob": "5f330288866f0bddf1cdd2aa602d0e3acb9c3c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LowerSamplingAttempt03/Variant88a95a1af171ff69ed9c414356b198e9845d4e94530b8daa7c98ff3d62a1d538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e753bfb46708771668a0d47102c49b45f03e4222c6ffc92cedf5cb7ee5a09787",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LowerSamplingAttempt03/Variant88a95a1af171ff69ed9c414356b198e9845d4e94530b8daa7c98ff3d62a1d538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9eccd6ac-5e94-dd44-57bc-0043a0c7dddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_profile_at_one {A : ℝ} (hA : 1 ≤ A) : plainProfile A 1 1 = 1 := by
  rw [plainProfile_eq_of_pos A 1 (by norm_num)]
  simp only [sourcePlainSamplingTerm, Real.log_one, zero_add, neg_zero,
    zero_div, Real.exp_zero, one_mul]
  exact actual_correlation_at_zero A hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LowerSamplingAttempt03/Variant88a95a1af171ff69ed9c414356b198e9845d4e94530b8daa7c98ff3d62a1d538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LowerSamplingAttempt03/Variant88a95a1af171ff69ed9c414356b198e9845d4e94530b8daa7c98ff3d62a1d538.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f330288866f0bddf1cdd2aa602d0e3acb9c3c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
