# divided_continuation_principal_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad72a65d-e7b2-2a7f-3f48-43567d220ac6",
  "kind": "theorem",
  "lexical_name": "divided_continuation_principal_limit",
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
  "slug": "divided-continuation-principal-limit--f12ba5b28cb87d5d0fc173ca",
  "source": {
    "blob": "0572bc86a0c154ce1c6eba3976a58548f0d5fe03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScaleDivision/Variantb9e4a7bc8a9d93450834968e89dd68af95b427b2d4123c2e01c77020d7a5411c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f12ba5b28cb87d5d0fc173cadd24af4182b143c51e54c99823da2d032ec84cf6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScaleDivision/Variantb9e4a7bc8a9d93450834968e89dd68af95b427b2d4123c2e01c77020d7a5411c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad72a65d-e7b2-2a7f-3f48-43567d220ac6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divided_continuation_principal_limit (p : ZeroPoint) (hp : 0 < (p.val - 1 / 2).re) :
    Tendsto (fun w : ℂ ↦ w^9 *
      (continuedTransform (2*(p.val-1 / 2)+w) / (2*(p.val-1 / 2)+w)))
      (𝓝[≠] 0) (𝓝 (pointPairPrincipalCoefficient p / (2*(p.val-1 / 2)))) ∧
      pointPairPrincipalCoefficient p / (2*(p.val-1 / 2)) ≠ 0 := by
  have hc := center_ne_zero p hp
  have hden : Tendsto (fun w : ℂ ↦ 2*(p.val-1 / 2)+w) (𝓝[≠] 0) (𝓝 (2*(p.val-1 / 2))) :=
    by
      have hd : ContinuousAt (fun w : ℂ ↦ 2*(p.val-1 / 2)+w) 0 := by fun_prop
      simpa using hd.tendsto.mono_left nhdsWithin_le_nhds
  constructor
  · have h := (continuedTransform_cleared_tendsto p hp).div hden hc
    apply h.congr'
    filter_upwards with w
    change (w^9 * continuedTransform (2*(p.val-1 / 2)+w)) / (2*(p.val-1 / 2)+w) =
      w^9 * (continuedTransform (2*(p.val-1 / 2)+w) / (2*(p.val-1 / 2)+w))
    ring
  · exact div_ne_zero (point_pair_principal_coefficient_ne_zero p) hc

end
end FormalResearch.RiemannHypothesis.Laplace.ScaleDivision
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScaleDivision/Variantb9e4a7bc8a9d93450834968e89dd68af95b427b2d4123c2e01c77020d7a5411c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScaleDivision/Variantb9e4a7bc8a9d93450834968e89dd68af95b427b2d4123c2e01c77020d7a5411c.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0572bc86a0c154ce1c6eba3976a58548f0d5fe03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
