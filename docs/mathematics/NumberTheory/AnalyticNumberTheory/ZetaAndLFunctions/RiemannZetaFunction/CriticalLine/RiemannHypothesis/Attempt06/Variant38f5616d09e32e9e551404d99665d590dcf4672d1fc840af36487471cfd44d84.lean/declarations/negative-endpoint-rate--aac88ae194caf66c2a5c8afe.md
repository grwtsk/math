# negative_endpoint_rate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e859a8d-85ef-9a47-7610-144c8699ac3e",
  "kind": "theorem",
  "lexical_name": "negative_endpoint_rate",
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
  "slug": "negative-endpoint-rate--aac88ae194caf66c2a5c8afe",
  "source": {
    "blob": "fca6f62e78ae7b8d6dfd65fc07abe04b45709db2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 204,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant38f5616d09e32e9e551404d99665d590dcf4672d1fc840af36487471cfd44d84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aac88ae194caf66c2a5c8afea40e424aca00b6f6b6132f6c8c9f46833ae1d481",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant38f5616d09e32e9e551404d99665d590dcf4672d1fc840af36487471cfd44d84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e859a8d-85ef-9a47-7610-144c8699ac3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_endpoint_rate {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖Complex.exp (-2*(A : ℂ)*z)‖ ≤ 1/(2*delta*A) := by
  have hp : 0 < A := by linarith
  rw [Complex.norm_exp]
  have hre : (-2*(A : ℂ)*z).re = -2*A*z.re := by
    norm_num [Complex.mul_re,Complex.mul_im]
  rw [hre]
  calc
    _ ≤ Real.exp (-2*A*delta) := by
      apply Real.exp_le_exp.mpr
      nlinarith
    _ ≤ 1/(2*delta*A) := by
      apply (le_div_iff₀ (by positivity : 0 < 2*delta*A)).mpr
      have h := Real.mul_exp_neg_le_exp_neg_one (2*delta*A)
      have h1 : Real.exp (-1) ≤ 1 := by
        exact (Real.exp_le_one_iff).mpr (by norm_num)
      rw [show -(2*delta*A) = -2*A*delta by ring] at h
      nlinarith

/-- Explicit uniform relative rate; there is no bound on the imaginary ordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant38f5616d09e32e9e551404d99665d590dcf4672d1fc840af36487471cfd44d84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt06/Variant38f5616d09e32e9e551404d99665d590dcf4672d1fc840af36487471cfd44d84.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fca6f62e78ae7b8d6dfd65fc07abe04b45709db2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
