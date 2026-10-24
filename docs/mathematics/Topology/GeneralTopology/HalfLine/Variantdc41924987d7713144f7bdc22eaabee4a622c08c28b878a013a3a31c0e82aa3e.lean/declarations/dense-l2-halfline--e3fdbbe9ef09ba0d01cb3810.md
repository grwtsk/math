# dense_L2_halfLine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5745a37b-9698-7cf1-bd7a-521b66a42cab",
  "kind": "lemma",
  "lexical_name": "dense_L2_halfLine",
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
  "slug": "dense-l2-halfline--e3fdbbe9ef09ba0d01cb3810",
  "source": {
    "blob": "78496b20f1d93444f09cbc25d9b7a1deb96036f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3fdbbe9ef09ba0d01cb3810ee0e175b47e28fbba0b2b942f37fd2160f58fd70",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5745a37b-9698-7cf1-bd7a-521b66a42cab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dense_L2_halfLine :
    DenseRange (fun φ : C∞₀_D ↦ (φ : L²(ℝ≥0))) := by
  -- Start with ordinary `C∞_c` density.
  have hDense : DenseRange (fun ψ : C∞_c ℝ≥0 ℝ ↦ (ψ : L²(ℝ≥0))) :=
    (SmoothCompactSupport.denseRange_Lp
        (p := (2 : ℝ≥0∞)) (μ := μ₊))
  -- Project every ψ onto the Dirichlet subspace: φ := ψ - ψ(0)·η.
  refine hDense.mono (by
    intro ψ
    let φ : C∞_c ℝ≥0 ℝ := ψ - (ψ ⟨0, le_rfl⟩) • η
    have hφ0 : φ ⟨0, le_rfl⟩ = 0 := by
      simp [φ, η_at_zero]
    exact ⟨⟨φ, hφ0⟩, by
      -- coercions are linear, so ‖φ - ψ‖_L² ≤ ‖ψ(0)·η‖; but η is fixed,
      -- hence the map ψ ↦ φ is continuous → closure unchanged.
      change (φ : L²(ℝ≥0)) = _; rfl⟩ )

/-!  ## 3. Regularity and boundary value                                       -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HalfLine/Variantdc41924987d7713144f7bdc22eaabee4a622c08c28b878a013a3a31c0e82aa3e.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78496b20f1d93444f09cbc25d9b7a1deb96036f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
