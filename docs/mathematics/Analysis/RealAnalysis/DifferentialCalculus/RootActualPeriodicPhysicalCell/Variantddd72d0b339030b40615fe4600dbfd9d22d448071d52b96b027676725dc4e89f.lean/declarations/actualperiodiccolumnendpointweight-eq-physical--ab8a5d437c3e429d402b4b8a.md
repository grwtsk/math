# actualPeriodicColumnEndpointWeight_eq_physical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96089429-aee0-82b3-85ff-62ac2da2951f",
  "kind": "theorem",
  "lexical_name": "actualPeriodicColumnEndpointWeight_eq_physical",
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
  "slug": "actualperiodiccolumnendpointweight-eq-physical--ab8a5d437c3e429d402b4b8a",
  "source": {
    "blob": "ab93beaea40b8cc45709cb9ad041ea53fd34765f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variantddd72d0b339030b40615fe4600dbfd9d22d448071d52b96b027676725dc4e89f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab8a5d437c3e429d402b4b8ac0807dbfdc228607b26fae6a889ea95bcefb96e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variantddd72d0b339030b40615fe4600dbfd9d22d448071d52b96b027676725dc4e89f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96089429-aee0-82b3-85ff-62ac2da2951f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodicColumnEndpointWeight_eq_physical {A : ℝ} (hA : 0 < A)
    (t : ℝ) (M : ℕ) (hM : 2 ≤ M) :
    actualPeriodicColumnEndpointWeight A t M =
      ∫ x in ((M : ℝ) - 1)..(M : ℝ), actualPeriodicPhysicalCellProfile A t x := by
  have hm : (2 : ℝ) ≤ (M : ℝ) := by exact_mod_cast hM
  have hlb : (M : ℝ) - 1 ≤ (M : ℝ) := by linarith
  have hp (x : ℝ) (hx : x ∈ uIcc ((M : ℝ) - 1) (M : ℝ)) : 0 < x := by
    rw [uIcc_of_le hlb] at hx
    linarith [hx.1]
  have hi : ContinuousOn (fun x : ℝ => x⁻¹) (uIcc ((M : ℝ) - 1) (M : ℝ)) :=
    continuousOn_id.inv (fun x hx => (hp x hx).ne')
  have ht : Continuous (actualTwistedTimeDensity A t) := by
    rw [continuous_iff_continuousAt]
    intro s
    exact (twisted_column_hasDerivAt hA t s).continuousAt
  have h := intervalIntegral.integral_comp_mul_deriv
    (fun x hx => Real.hasDerivAt_log (hp x hx).ne') hi ht
  unfold actualPeriodicColumnEndpointWeight actualPeriodicPhysicalCellProfile
  simpa only [Function.comp_apply, div_eq_mul_inv] using h.symm

end
end FormalResearch.RiemannHypothesis.RootActualPeriodicPhysicalCell
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variantddd72d0b339030b40615fe4600dbfd9d22d448071d52b96b027676725dc4e89f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variantddd72d0b339030b40615fe4600dbfd9d22d448071d52b96b027676725dc4e89f.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab93beaea40b8cc45709cb9ad041ea53fd34765f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
