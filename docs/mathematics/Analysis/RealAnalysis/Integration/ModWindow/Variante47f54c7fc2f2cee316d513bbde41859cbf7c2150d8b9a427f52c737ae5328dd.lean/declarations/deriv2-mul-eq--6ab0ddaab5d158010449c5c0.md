# deriv2_mul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66a739eb-234c-5f29-1e64-c9f6bf488034",
  "kind": "theorem",
  "lexical_name": "deriv2_mul_eq",
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
  "slug": "deriv2-mul-eq--6ab0ddaab5d158010449c5c0",
  "source": {
    "blob": "313e0cb80f1a74a85dd7cbd1254688b4d0d64763",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 221,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ab0ddaab5d158010449c5c032e36067d415b8363078deb284cd0c1058b3a90a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66a739eb-234c-5f29-1e64-c9f6bf488034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv2_mul_eq {F G : ℝ → ℝ} {U : Set ℝ} (hU : IsOpen U) (hF : ContDiffOn ℝ 2 F U)
    (hG : ContDiffOn ℝ 2 G U) {u : ℝ} (hu : u ∈ U) :
    deriv (deriv (fun v => F v * G v)) u
      = deriv (deriv F) u * G u + 2 * (deriv F u * deriv G u) + F u * deriv (deriv G) u := by
  have hFd : ∀ v ∈ U, DifferentiableAt ℝ F v := fun v hv =>
    (hF.differentiableOn (by norm_num)).differentiableAt (hU.mem_nhds hv)
  have hGd : ∀ v ∈ U, DifferentiableAt ℝ G v := fun v hv =>
    (hG.differentiableOn (by norm_num)).differentiableAt (hU.mem_nhds hv)
  have hF' : ContDiffOn ℝ 1 (deriv F) U := hF.deriv_of_isOpen hU (by norm_num)
  have hG' : ContDiffOn ℝ 1 (deriv G) U := hG.deriv_of_isOpen hU (by norm_num)
  have hF'd : DifferentiableAt ℝ (deriv F) u :=
    (hF'.differentiableOn (by norm_num)).differentiableAt (hU.mem_nhds hu)
  have hG'd : DifferentiableAt ℝ (deriv G) u :=
    (hG'.differentiableOn (by norm_num)).differentiableAt (hU.mem_nhds hu)
  have h1 : deriv (fun v => F v * G v) =ᶠ[nhds u] fun v => deriv F v * G v + F v * deriv G v := by
    filter_upwards [hU.mem_nhds hu] with v hv
    exact deriv_mul (hFd v hv) (hGd v hv)
  rw [h1.deriv_eq]
  have hA : HasDerivAt (fun v => deriv F v * G v) (deriv (deriv F) u * G u + deriv F u * deriv G u) u :=
    hF'd.hasDerivAt.mul (hGd u hu).hasDerivAt
  have hB : HasDerivAt (fun v => F v * deriv G v) (deriv F u * deriv G u + F u * deriv (deriv G) u) u :=
    (hFd u hu).hasDerivAt.mul hG'd.hasDerivAt
  have hAB : HasDerivAt (fun v => deriv F v * G v + F v * deriv G v)
      ((deriv (deriv F) u * G u + deriv F u * deriv G u)
        + (deriv F u * deriv G u + F u * deriv (deriv G) u)) u := hA.add hB
  rw [hAB.deriv]; ring

/-- first product rule on the open set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `313e0cb80f1a74a85dd7cbd1254688b4d0d64763` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
