# divisor_dilation_eq_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:294aca81-bb3e-bfa7-6a36-8e9e38608647",
  "kind": "theorem",
  "lexical_name": "divisor_dilation_eq_kernel",
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
  "slug": "divisor-dilation-eq-kernel--6c3bc071779e521f9eb27d01",
  "source": {
    "blob": "ce26f376a53cac584bc777addb5fd986765d3061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 230,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c3bc071779e521f9eb27d0177f831e336ef180bc015c60c27c44b85ad87bd3a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:294aca81-bb3e-bfa7-6a36-8e9e38608647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisor_dilation_eq_kernel (T : ℝ) (m d P : ℕ) (hP : P ≠ 0)
    (hm : 1 ≤ m) (hd : 1 ≤ d)
    (hlog : 2*T-1/2 ≤ Real.log ((m*d : ℕ) : ℝ)) :
    (∑ a ∈ P.divisors, (ArithmeticFunction.moebius a : ℝ) * integratedKernel T m (a*d)) =
      integratedKernel T m d := by
  rw [Finset.sum_eq_single 1]
  · simp
  · intro a ha ha1
    have ha2 : 2 ≤ a := by have := Nat.pos_of_mem_divisors ha; omega
    rw [integratedKernel_dilate_zero T m d a hm hd ha2 hlog, mul_zero]
  · simp [hP]

/-- The complete k-sum itself is positive and polynomially large per endpoint atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce26f376a53cac584bc777addb5fd986765d3061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
