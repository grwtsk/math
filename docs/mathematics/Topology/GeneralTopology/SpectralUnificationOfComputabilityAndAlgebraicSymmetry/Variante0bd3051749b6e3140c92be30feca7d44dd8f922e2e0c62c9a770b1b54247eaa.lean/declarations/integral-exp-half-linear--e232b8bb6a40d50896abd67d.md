# integral_exp_half_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edaad9990003b638d717db8c0db2108e6cf46bfa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ede35b97-9abf-8b45-5310-4a23bc946cf5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b793bc41-7c40-2fc1-6d28-007b6767a541",
  "kind": "theorem",
  "lexical_name": "integral_exp_half_linear",
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
  "slug": "integral-exp-half-linear--e232b8bb6a40d50896abd67d",
  "source": {
    "blob": "edaad9990003b638d717db8c0db2108e6cf46bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e232b8bb6a40d50896abd67d38bc1483fdd64fe9c4d856c6cba2aa6bea6c356f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b793bc41-7c40-2fc1-6d28-007b6767a541`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_exp_half_linear (S : ℝ) :
    (∫ s in (0 : ℝ)..S, Real.exp (s / 2) * (s + 4)) =
      2 * (Real.exp (S / 2) * (S + 2) - 2) := by
  have hd (s : ℝ) : HasDerivAt (fun s : ℝ => 2 * Real.exp (s / 2) * (s + 2))
      (Real.exp (s / 2) * (s + 4)) s := by
    apply ((((hasDerivAt_id s).div_const 2).exp.const_mul 2).mul
      ((hasDerivAt_id s).add_const 2)).congr_deriv
    simp only [id_eq]
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hd s)
    ((by fun_prop : Continuous (fun s : ℝ => Real.exp (s / 2) * (s + 4))).intervalIntegrable _ _)]
  simp only [zero_div, Real.exp_zero, zero_add, mul_one]
  ring

/-- Integrating the growing arithmetic envelope against an anchored linear
derivative bound keeps the real upper endpoint explicitly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edaad9990003b638d717db8c0db2108e6cf46bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
