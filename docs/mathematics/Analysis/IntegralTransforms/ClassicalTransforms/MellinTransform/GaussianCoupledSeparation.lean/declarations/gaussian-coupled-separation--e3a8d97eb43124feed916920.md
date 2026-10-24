# gaussian_coupled_separation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a517ba90-d1e6-3a21-a0db-24d74b30bb45",
  "kind": "theorem",
  "lexical_name": "gaussian_coupled_separation",
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
  "slug": "gaussian-coupled-separation--e3a8d97eb43124feed916920",
  "source": {
    "blob": "1063713a1f78fffd9290cff787affd647b9d7728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 85,
    "path": "GRWTSK/Analysis/MellinTransform/GaussianCoupledSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3a8d97eb43124feed9169206e74793bb0e09cf307dc8ffccbb37ab5b30c1513",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a517ba90-d1e6-3a21-a0db-24d74b30bb45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussian_coupled_separation {ι : Type*} [Fintype ι]
    (W : ι→ℝ→ℂ) (a y : ι→ℝ) (V : SchwartzMap ℝ ℂ)
    (hV : HasCompactSupport (V:ℝ→ℂ)) (R : ℝ) (hR : 0<R)
    (hactive : (∏i : ι,W i (y i))≠0→V (∑i : ι,a i*y i)=1) :
    (∏i : ι,W i (y i))*gaussianMellinProfile (R*Real.exp (∑i : ι,a i*y i))=
      ∫t : ℝ,(∏i : ι,W i (y i)*logPhase t (a i*y i))*gaussianJointDensity V hV R t := by
  classical
  have hinv := gaussianLogWindow_inversion V hV R hR (∑i : ι,a i*y i)
  by_cases hp : (∏i : ι,W i (y i))=0
  · simp only [coupled_phase_product,hp,zero_mul,integral_zero]
  · rw [hactive hp,one_mul] at hinv
    simp only [coupled_phase_product,mul_assoc,integral_const_mul,←hinv]

/-- One actual Schwartz cutoff is chosen before every positive R and every evaluation tuple.
The same actual density also supplies all natural Fourier moments, with the constant before R. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/GaussianCoupledSeparation.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1063713a1f78fffd9290cff787affd647b9d7728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
