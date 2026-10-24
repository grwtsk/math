# half_line_polynomial_laplace_recurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c4a643f91247e50ac8d41ea4944d45524688f88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6409fb35-6c99-66be-3bd8-7bbf0241006f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff5cf553-01cc-01f0-42bb-e9a48bb4a00e",
  "kind": "theorem",
  "lexical_name": "half_line_polynomial_laplace_recurrence",
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
  "slug": "half-line-polynomial-laplace-recurrence--953939b152ebb7461b82b4bd",
  "source": {
    "blob": "8c4a643f91247e50ac8d41ea4944d45524688f88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:953939b152ebb7461b82b4bdd9fa144ba71b1bf6b690605b877d803158906c69",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff5cf553-01cc-01f0-42bb-e9a48bb4a00e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_line_polynomial_laplace_recurrence (k : ℕ) (s : ℂ) (hs : 0 < s.re) :
    s * (∫ y in Ioi (0 : ℝ), (y : ℂ) ^ (k + 1) * Complex.exp (-s * (y : ℂ))) =
      ((k + 1 : ℕ) : ℂ) *
        (∫ y in Ioi (0 : ℝ), (y : ℂ) ^ k * Complex.exp (-s * (y : ℂ))) := by
  have h0 := half_line_polynomial_laplace_integrable k s hs
  have h1 := half_line_polynomial_laplace_integrable (k + 1) s hs
  have hd := (h0.const_mul ((k + 1 : ℕ) : ℂ)).sub (h1.const_mul s)
  have ht := tendsto_zero_of_hasDerivAt_of_integrableOn_Ioi
    (fun y _ ↦ polynomial_laplace_has_deriv k s y) hd h1
  have hf := integral_Ioi_of_hasDerivAt_of_tendsto'
    (fun y _ ↦ polynomial_laplace_has_deriv k s y) hd ht
  rw [integral_sub (h0.const_mul _) (h1.const_mul s)] at hf
  simp only [integral_const_mul, Complex.ofReal_zero,
    zero_pow (by omega : k + 1 ≠ 0), zero_mul, mul_zero, sub_zero] at hf
  exact (sub_eq_zero.mp hf).symm

/-- The exact complex half-line polynomial Laplace formula, with genuine decay and integrability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c4a643f91247e50ac8d41ea4944d45524688f88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
