# log_le_half_sub_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac2b76dd-2f3d-c2cd-f9d6-925e22dd9a78",
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
  "slug": "log-le-half-sub-inv--b022a02eded3821fe442ee55",
  "source": {
    "blob": "33b665085d492cab4126554d1b72e8b17d315e31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b022a02eded3821fe442ee550aec0c1188d557a2795a6d885e16d5fcba8af2c7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac2b76dd-2f3d-c2cd-f9d6-925e22dd9a78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–46.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33b665085d492cab4126554d1b72e8b17d315e31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
