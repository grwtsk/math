# integral_boundary_rect_of_continuousOn_of_hasFDerivAt_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a069dd3387f8dacd6277e4b9cb3815ca502d74b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90787b9a-3aec-bba4-c2e0-e1d7210db105",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5cf31df-61e2-d529-b95e-98502aafa6af",
  "kind": "theorem",
  "lexical_name": "integral_boundary_rect_of_continuousOn_of_hasFDerivAt_real",
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
  "slug": "integral-boundary-rect-of-continuouson-of-hasfderivat-real--ede0ffee3dfb43dca5ce795f",
  "source": {
    "blob": "8a069dd3387f8dacd6277e4b9cb3815ca502d74b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 209,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ede0ffee3dfb43dca5ce795fbf99355bdd89a74d11a44b300a2a90a618f7ce51",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5cf31df-61e2-d529-b95e-98502aafa6af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_boundary_rect_of_continuousOn_of_hasFDerivAt_real (f : ℂ → E) (f' : ℂ → ℂ →L[ℝ] E)
    (z w : ℂ) (Hc : ContinuousOn f ([[z.re, w.re]] ×ℂ [[z.im, w.im]]))
    (Hd : ∀ x ∈ Ioo (min z.re w.re) (max z.re w.re) ×ℂ Ioo (min z.im w.im) (max z.im w.im),
      HasFDerivAt f (f' x) x)
    (Hi : IntegrableOn (fun z => I • f' z 1 - f' z I) ([[z.re, w.re]] ×ℂ [[z.im, w.im]])) :
    (∫ x : ℝ in z.re..w.re, f (x + z.im * I)) - (∫ x : ℝ in z.re..w.re, f (x + w.im * I)) +
      I • (∫ y : ℝ in z.im..w.im, f (re w + y * I)) -
      I • (∫ y : ℝ in z.im..w.im, f (re z + y * I)) =
      ∫ x : ℝ in z.re..w.re, ∫ y : ℝ in z.im..w.im, I • f' (x + y * I) 1 - f' (x + y * I) I :=
  integral_boundary_rect_of_hasFDerivAt_real_off_countable f f' z w ∅ countable_empty Hc
    (fun x hx => Hd x hx.1) Hi

/-- Suppose that a function `f : ℂ → E` is *real* differentiable on a closed rectangle with opposite
corners at `z w : ℂ` and $\frac{\partial f}{\partial \bar z}$ is integrable on this rectangle. Then
the integral of `f` over the boundary of the rectangle is equal to the integral of
$2i\frac{\partial f}{\partial \bar z}=i\frac{\partial f}{\partial x}-\frac{\partial f}{\partial y}$
over the rectangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant563ba92e16e17ce0d1c9736fbdaa744af52cb13c2eefefc6bb1d4b4f0e8c9b86.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a069dd3387f8dacd6277e4b9cb3815ca502d74b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
