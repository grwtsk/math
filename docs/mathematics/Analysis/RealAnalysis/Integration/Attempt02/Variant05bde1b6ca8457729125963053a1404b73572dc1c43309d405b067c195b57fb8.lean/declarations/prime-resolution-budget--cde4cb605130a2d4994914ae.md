# prime_resolution_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6582e148-bfee-dee9-5256-bf1c7c838e64",
  "kind": "theorem",
  "lexical_name": "prime_resolution_budget",
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
  "slug": "prime-resolution-budget--cde4cb605130a2d4994914ae",
  "source": {
    "blob": "ddf8a6470ad34ed7aec34d8f054f38261675c661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cde4cb605130a2d4994914ae3c613f93d9d3986646313c7081ae3a7e903a841c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6582e148-bfee-dee9-5256-bf1c7c838e64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_resolution_budget {η A : ℝ} (hη : 0 < η) (hA : 1 ≤ A) :
    Real.exp A*((1/2 : ℝ)+5/A)*mesh A (primeResolutionCount η A)*(2*A) ≤ η := by
  let n := primeResolutionCount η A
  have hn : 1 ≤ n := primeResolutionCount_pos η A
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hceil : 22*A^2*Real.exp A/η ≤ (n : ℝ) := by
    exact (Nat.le_ceil _).trans (by exact_mod_cast (le_max_right 1 _))
  have hcost : 22*A^2*Real.exp A ≤ η*(n : ℝ) := by
    have hc := (div_le_iff₀ hη).mp hceil
    simpa only [mul_comm] using hc
  have hcoarse := mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_right (modulus_coarse hA) (mesh_pos hA hn).le)
    (show 0 ≤ 2*A by linarith)
  change Real.exp A*((1/2 : ℝ)+5/A)*mesh A n*(2*A) ≤ η
  refine hcoarse.trans ?_
  unfold mesh
  have he : (11/2 : ℝ)*Real.exp A*(2*A/(n : ℝ))*(2*A) =
      (22*A^2*Real.exp A)/(n : ℝ) := by ring
  rw [he]
  exact (div_le_iff₀ hn0).mpr hcost

/-- Genuine finite prime-informed reconstruction with the same fixed error at every real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddf8a6470ad34ed7aec34d8f054f38261675c661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
