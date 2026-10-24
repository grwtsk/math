# actualXiLogStep_cell_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7c7beef-766a-14ba-ccbd-1fd03306c65f",
  "kind": "theorem",
  "lexical_name": "actualXiLogStep_cell_integral",
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
  "slug": "actualxilogstep-cell-integral--0198bc14fd39a7106e5a8d57",
  "source": {
    "blob": "50e3d4d0f14003667c2ae277d32cdc3e55f1f2e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0198bc14fd39a7106e5a8d57e5308189f8b391a5dc63770e89f6a6bf97ea40e6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7c7beef-766a-14ba-ccbd-1fd03306c65f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogStep_cell_integral {n : ℕ} (hn : 7 ≤ n) {b : ℝ}
    (hl : Real.log (n : ℝ) ≤ b) (hu : b ≤ Real.log ((n + 1 : ℕ) : ℝ)) :
    (∫ t in Real.log (n : ℝ)..b, |actualIntegerXiTailLogStep t|) =
      |actualAnchoredXiTailPrimitive (Real.log (n : ℝ))| *
        (b - Real.log (n : ℝ)) := by
  have he : (∫ t in Real.log (n : ℝ)..b, |actualIntegerXiTailLogStep t|) =
      ∫ _t in Real.log (n : ℝ)..b,
        |actualAnchoredXiTailPrimitive (Real.log (n : ℝ))| := by
    apply intervalIntegral.integral_congr_Ioo_of_le hl
    intro t ht
    change |actualIntegerXiTailLogStep t| = _
    rw [actualXiLogStep_on_open_integer_cell hn ⟨ht.1, ht.2.trans_le hu⟩]
  rw [he, intervalIntegral.integral_const, smul_eq_mul]
  ring

/-- Exact completed cells give the true weighted integer prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50e3d4d0f14003667c2ae277d32cdc3e55f1f2e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
