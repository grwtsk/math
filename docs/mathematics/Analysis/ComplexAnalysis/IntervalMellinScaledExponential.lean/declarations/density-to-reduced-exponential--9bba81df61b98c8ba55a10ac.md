# density_to_reduced_exponential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63de6249-dd8e-0650-98fb-c04fd6fb60e8",
  "kind": "theorem",
  "lexical_name": "density_to_reduced_exponential",
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
  "slug": "density-to-reduced-exponential--9bba81df61b98c8ba55a10ac",
  "source": {
    "blob": "625d1683e862eabb9bc10ddea4eeabfef7e5fcbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 50,
    "path": "GRWTSK/Analysis/Complex/IntervalMellinScaledExponential.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bba81df61b98c8ba55a10ac9139870968ba2bf0093fb1a9fe7f4664ddd91317",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63de6249-dd8e-0650-98fb-c04fd6fb60e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_to_reduced_exponential {z : ℂ} (hz : z.re ≤ 1) {t : ℝ} (ht : 1 ≤ t)
    (k L₂ Lr : ℕ) (hk : (2 : ℝ) ^ k ≤ t) (hL₂ : 0 < L₂) (hLr : 0 < Lr) :
    ‖density z t - Complex.exp ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ))‖ ≤
      componentBound (z - 1) * reducedLogRadius t k L₂ Lr := by
  have hc := reducedLogCenter_nonneg k L₂ Lr hk hL₂ hLr
  have hr := reducedLogCenter_error ht k L₂ Lr hk hL₂ hLr
  have ha : (z - 1).re ≤ 0 := by simpa using sub_nonpos.mpr hz
  exact (norm_exp_ray_sub_le ha (Real.log_nonneg ht) hc).trans
    (mul_le_mul (norm_le_componentBound (z - 1)) hr (abs_nonneg _)
      (componentBound_nonneg (z - 1)))

/-- The guard is checked at B/2^s. Reconstruction pays the full squaring radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntervalMellinScaledExponential.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntervalMellinScaledExponential.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `625d1683e862eabb9bc10ddea4eeabfef7e5fcbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
