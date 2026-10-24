# thetaA_deriv_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad30a12da4cf20c1c25f5a5e173d9f019b4d9d7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7bf2e3ba-9c1f-fa33-1907-117bad911d30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:871c3253-7c9b-0258-87e2-d225289c19b4",
  "kind": "theorem",
  "lexical_name": "thetaA_deriv_zero",
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
  "slug": "thetaa-deriv-zero--dad17b48fe3c0f17e1e3df9e",
  "source": {
    "blob": "ad30a12da4cf20c1c25f5a5e173d9f019b4d9d7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 371,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dad17b48fe3c0f17e1e3df9ee042a86a52050dcb601ee568f3f34927c8af9aa4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:871c3253-7c9b-0258-87e2-d225289c19b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaA_deriv_zero : deriv thetaA 0 = -(1 / 2 : ℝ) := by
  have hA : HasDerivAt thetaA (thetaADerivSeries 0) 0 := hasDerivAt_thetaA 0
  have hneg :
      HasDerivAt (fun t : ℝ => thetaA (-t)) (-thetaADerivSeries 0) 0 := by
    simpa only [neg_zero, mul_neg_one] using!
      (hasDerivAt_thetaA (-0)).comp 0 (hasDerivAt_neg (0 : ℝ))
  have hleft :
      HasDerivAt (fun t : ℝ => thetaA t - thetaA (-t))
        (2 * thetaADerivSeries 0) 0 := by
    convert! hA.sub hneg using 1
    ring
  have hright :
      HasDerivAt (fun t : ℝ => (Real.exp (-t) - Real.exp t) / 2) (-1 : ℝ) 0 := by
    have h1 : HasDerivAt (fun t : ℝ => Real.exp (-t)) (-1 : ℝ) 0 := by
      simpa using! (Real.hasDerivAt_exp (-0)).comp 0 (hasDerivAt_neg (0 : ℝ))
    have h2 : HasDerivAt (fun t : ℝ => Real.exp t) (1 : ℝ) 0 := by
      simpa using Real.hasDerivAt_exp 0
    convert! (h1.sub h2).div_const 2 using 1
    norm_num
  have hEq :
      (fun t : ℝ => thetaA t - thetaA (-t)) =
        fun t : ℝ => (Real.exp (-t) - Real.exp t) / 2 := by
    funext t
    exact thetaA_reflection t
  have hright' : HasDerivAt (fun t : ℝ => thetaA t - thetaA (-t)) (-1 : ℝ) 0 := by
    rw [hEq]
    exact hright
  have hd : 2 * thetaADerivSeries 0 = (-1 : ℝ) :=
    hleft.unique hright'
  rw [hA.deriv]
  linarith

/-- Packaged form of the differential theta bridge proved in this module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantfec4e60e627e792815ebcd02df3a2d13a3f6e9d24af18e59359a89ea36d6ca77.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad30a12da4cf20c1c25f5a5e173d9f019b4d9d7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
