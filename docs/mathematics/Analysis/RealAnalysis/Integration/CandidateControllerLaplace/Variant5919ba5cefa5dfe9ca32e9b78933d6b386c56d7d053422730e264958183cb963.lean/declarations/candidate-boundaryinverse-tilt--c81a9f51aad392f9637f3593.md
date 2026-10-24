# candidate_boundaryInverse_tilt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:435f14a6-3664-dc37-7343-940cd4312162",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_tilt",
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
  "slug": "candidate-boundaryinverse-tilt--c81a9f51aad392f9637f3593",
  "source": {
    "blob": "9bac26bf20978a861a2d08859f92827ad4f08bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 386,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c81a9f51aad392f9637f3593ab0147647e6cf001f650b8f242a895b9e6c4a0f6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:435f14a6-3664-dc37-7343-940cd4312162`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_tilt (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (σ : ℝ) (hσ : 0 ≤ σ) (x : ℝ) :
    Complex.exp (-(σ : ℂ) * (x : ℂ)) * boundaryInverse (candidate X ε h) x =
      boundaryInverse (candidate X (ε + σ) h) x := by
  rw [candidate_boundaryInverse_shift X hX ε h hε hh hh1 σ hσ x]
  rw [← mul_assoc]
  have he : Complex.exp (-(σ : ℂ) * (x : ℂ)) * (Real.exp (x * σ) : ℂ) = 1 := by
    rw [Complex.ofReal_exp, ← Complex.exp_add]
    have hz : -(σ : ℂ) * (x : ℂ) + (x * σ : ℝ) = 0 := by push_cast; ring
    rw [hz, Complex.exp_zero]
  rw [he, one_mul]

/-- The genuine causal Laplace integral equals the original candidate on the closed right half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bac26bf20978a861a2d08859f92827ad4f08bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
