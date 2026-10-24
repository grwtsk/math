# integral_scaling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23d604a1-f8ac-d845-d71c-6724408c3de5",
  "kind": "theorem",
  "lexical_name": "integral_scaling",
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
  "slug": "integral-scaling--29e51803ae2702419bce18f1",
  "source": {
    "blob": "8802f9ac1246ef8cd95db7c565094cd76de11159",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 98,
    "path": "GRWTSK/Analysis/MellinTransform/PositiveCoordinates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29e51803ae2702419bce18f1ad1e5355cbd317db9c854d9183a4392d6a4236bb",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23d604a1-f8ac-d845-d71c-6724408c3de5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_scaling {X : ℝ} (hX : 0 < X) (s : ℂ) :
    (∫ u in X..(2*X), power u (-s)) =
      power X (1-s) *
        (∫ t in (0:ℝ)..1, power (1+t) (1-s) / (1+(t:ℂ))) := by
  have hchange := intervalIntegral.smul_integral_comp_mul_add
    (fun u : ℝ => power u (-s)) (a := (0:ℝ)) (b := 1) X X
  have hpoint : (∫ t in (0:ℝ)..1,
        power X (1-s) * (power (1+t) (1-s)/(1+(t:ℂ)))) =
      ∫ t in (0:ℝ)..1, (X : ℂ) * power (X*t+X) (-s) := by
    apply intervalIntegral.integral_congr
    intro t ht
    have ht' : t ∈ Set.Icc (0:ℝ) 1 := by simpa using ht
    have hy : 0 < 1+t := by linarith [ht'.1]
    have h := density_scaling hX hy s
    convert h using 1 <;> push_cast <;> ring
  rw [intervalIntegral.integral_const_mul,
    intervalIntegral.integral_const_mul] at hpoint
  have hchange' : (X : ℂ) * (∫ t in (0:ℝ)..1, power (X*t+X) (-s)) =
      ∫ u in X..(2*X), power u (-s) := by
    simpa only [mul_zero, zero_add, mul_one, ← two_mul, Complex.real_smul] using hchange
  exact hchange'.symm.trans hpoint.symm

end GRWTSK.Analysis.MellinTransform.PositiveCoordinates
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/PositiveCoordinates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/PositiveCoordinates.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8802f9ac1246ef8cd95db7c565094cd76de11159` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
