# actualMangoldtErrorConvolution_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:173f32cb-7632-49b4-22bc-481152a638b4",
  "kind": "theorem",
  "lexical_name": "actualMangoldtErrorConvolution_absolutelyContinuous",
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
  "slug": "actualmangoldterrorconvolution-absolutelycontinuous--b197ca024302cf3f65d16453",
  "source": {
    "blob": "2472fbaf73e7c639a2aedea748c08521cadcacca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant997780bc60347cf417c8e9ef8b625cdf670069906394c4dd0fa5aa68417b598c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b197ca024302cf3f65d16453b4f58eb944f38b97425875e49802f911d5a696bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant997780bc60347cf417c8e9ef8b625cdf670069906394c4dd0fa5aa68417b598c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:173f32cb-7632-49b4-22bc-481152a638b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtErrorConvolution_absolutelyContinuous (lam : ℝ) {b : ℝ} (hb : 0 ≤ b) :
    AbsolutelyContinuousOnInterval (actualMangoldtErrorConvolution lam) 0 b := by
  have hi := weighted_error_intervalIntegrable lam hb
  have he : ContDiff ℝ 1 (fun t : ℝ => Real.exp (-lam * t)) := by fun_prop
  have hf : actualMangoldtErrorConvolution lam = fun t => Real.exp (-lam * t) *
      ∫ r in 0..t, actualCenteredMangoldtLogError r * Real.exp (lam * r) :=
    funext (convolution_eq_primitive lam)
  rw [hf]
  exact he.contDiffOn.absolutelyContinuousOnInterval.fun_mul
    (hi.absolutelyContinuousOnInterval_intervalIntegral (by simp))

/-- The actual AE convolution ODE keeps every closed prime-power jump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant997780bc60347cf417c8e9ef8b625cdf670069906394c4dd0fa5aa68417b598c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant997780bc60347cf417c8e9ef8b625cdf670069906394c4dd0fa5aa68417b598c.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2472fbaf73e7c639a2aedea748c08521cadcacca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
