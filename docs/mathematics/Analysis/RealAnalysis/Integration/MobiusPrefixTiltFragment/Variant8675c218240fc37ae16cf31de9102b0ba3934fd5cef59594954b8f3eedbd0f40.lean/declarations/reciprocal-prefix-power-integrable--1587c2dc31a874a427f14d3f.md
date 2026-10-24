# reciprocal_prefix_power_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf5006f62a44230e4a7294e58a9a42c550c6ba7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8675c218240fc37ae16cf31de9102b0ba3934fd5cef59594954b8f3eedbd0f40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c703cd8-b8ac-6a70-724a-a1f7bfabf18e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4e30244-1a2c-7c68-94be-1f917fb87b21",
  "kind": "theorem",
  "lexical_name": "reciprocal_prefix_power_integrable",
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
  "slug": "reciprocal-prefix-power-integrable--1587c2dc31a874a427f14d3f",
  "source": {
    "blob": "bf5006f62a44230e4a7294e58a9a42c550c6ba7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPrefixTiltFragment/Variant8675c218240fc37ae16cf31de9102b0ba3934fd5cef59594954b8f3eedbd0f40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1587c2dc31a874a427f14d3f0bc6bba76ab8868d20b9a2b772a248d8ced3ce2f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPrefixTiltFragment/Variant8675c218240fc37ae16cf31de9102b0ba3934fd5cef59594954b8f3eedbd0f40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4e30244-1a2c-7c68-94be-1f917fb87b21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_prefix_power_integrable (X : ℕ) (z : ℂ) :
    IntegrableOn (fun x : ℝ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ)) (Set.Icc (1 : ℝ) X) := by
  have hl : ContinuousOn (fun x : ℝ => (Real.log x : ℂ)) (Set.Icc (1 : ℝ) X) :=
    Complex.continuous_ofReal.comp_continuousOn (Real.continuousOn_log.mono
      (fun x hx => ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))
  have hc : ContinuousOn (fun x : ℝ => powerWeight z x / (x : ℂ))
      (Set.Icc (1 : ℝ) X) := by
    unfold powerWeight
    exact (Complex.continuous_exp.comp_continuousOn
      (continuousOn_const.mul hl)).div Complex.continuous_ofReal.continuousOn
      (fun x hx => Complex.ofReal_ne_zero.mpr
        (ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))
  have hi := integrableOn_mul_sum_Icc reciprocalCoefficient
    (m := 0) (by norm_num : (0 : ℝ) ≤ 1) hc.integrableOn_Icc
  simp_rw [reciprocal_prefix_eq] at hi
  convert hi using 1
  funext x
  simp only [powerWeight]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPrefixTiltFragment/Variant8675c218240fc37ae16cf31de9102b0ba3934fd5cef59594954b8f3eedbd0f40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPrefixTiltFragment/Variant8675c218240fc37ae16cf31de9102b0ba3934fd5cef59594954b8f3eedbd0f40.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5006f62a44230e4a7294e58a9a42c550c6ba7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
