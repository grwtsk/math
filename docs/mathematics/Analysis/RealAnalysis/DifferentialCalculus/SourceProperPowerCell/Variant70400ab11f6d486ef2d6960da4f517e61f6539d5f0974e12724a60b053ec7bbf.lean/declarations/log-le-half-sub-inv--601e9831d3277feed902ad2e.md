# log_le_half_sub_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18af203a-4e77-3c4e-c840-96848144b390",
  "kind": "theorem",
  "lexical_name": "log_le_half_sub_inv",
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
  "slug": "log-le-half-sub-inv--601e9831d3277feed902ad2e",
  "source": {
    "blob": "e657aafd70157c7d9bd82eaa41ef3178143fc9d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:601e9831d3277feed902ad2eb2bbc89ab51e1ec34b133aed399022b61670294d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18af203a-4e77-3c4e-c840-96848144b390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_le_half_sub_inv (z : ℝ) (hz : 1 ≤ z) :
    Real.log z ≤ (z - z⁻¹) / 2 := by
  let f : ℝ → ℝ := fun x => (x - x⁻¹) / 2 - Real.log x
  have hd (x : ℝ) (hx : 1 ≤ x) :
      HasDerivAt f ((x - 1) ^ 2 / (2 * x ^ 2)) x := by
    have hx0 : x ≠ 0 := by linarith
    convert (((hasDerivAt_id x).sub (hasDerivAt_inv hx0)).div_const 2).sub
      (Real.hasDerivAt_log hx0) using 1 <;> dsimp [f]
    field_simp
    ring
  have hm : MonotoneOn f (Set.Ici 1) := by
    apply monotoneOn_of_hasDerivWithinAt_nonneg (convex_Ici 1)
    · intro x hx
      exact (hd x hx).continuousAt.continuousWithinAt
    · intro x hx
      exact (hd x (Set.mem_Ici.mp (Set.interior_subset hx))).hasDerivWithinAt
    · intro x hx
      positivity
  have hh := hm (by simp : (1 : ℝ) ∈ Set.Ici 1) hz hz
  simpa [f] using hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variant70400ab11f6d486ef2d6960da4f517e61f6539d5f0974e12724a60b053ec7bbf.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e657aafd70157c7d9bd82eaa41ef3178143fc9d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
