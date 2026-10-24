# sqrt_normalized_integral_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b34f64d6-0944-8360-728f-fefeb64ae1f2",
  "kind": "theorem",
  "lexical_name": "sqrt_normalized_integral_add_le",
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
  "slug": "sqrt-normalized-integral-add-le--017f36f1eb5460c8eaf29b4b",
  "source": {
    "blob": "bf23fc591ef2c15e0f6d21909d554a43e67135ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AngularTriangleFullAudit/Variant14b6ae391d74f740ac20576750a565759e8560631802bb05d12bb53f18ccb93b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:017f36f1eb5460c8eaf29b4b48ad808b6a6cea3d01b4d537adf4f228b048262e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AngularTriangleFullAudit/Variant14b6ae391d74f740ac20576750a565759e8560631802bb05d12bb53f18ccb93b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b34f64d6-0944-8360-728f-fefeb64ae1f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_normalized_integral_add_le (f g : ℝ → ℂ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t + g t‖ ^ 2) ≤
      Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) +
        Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖g t‖ ^ 2) := by
  have hs := sqrt_normalized_integral_eq_norm (f + g) (hf.add hg)
  simp only [Pi.add_apply] at hs
  rw [hs,
    sqrt_normalized_integral_eq_norm f hf, sqrt_normalized_integral_eq_norm g hg]
  rw [MemLp.toLp_add hf hg]
  calc
    Real.sqrt (1 / (2 * Real.pi)) * ‖hf.toLp f + hg.toLp g‖ ≤
        Real.sqrt (1 / (2 * Real.pi)) * (‖hf.toLp f‖ + ‖hg.toLp g‖) :=
      mul_le_mul_of_nonneg_left (norm_add_le _ _) (Real.sqrt_nonneg _)
    _ = _ := mul_add _ _ _

end
end AngularL2TriangleScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @AngularL2TriangleScratch.sqrt_normalized_integral_eq_norm
#print AngularL2TriangleScratch.sqrt_normalized_integral_eq_norm
#print axioms AngularL2TriangleScratch.sqrt_normalized_integral_eq_norm
#check @AngularL2TriangleScratch.sqrt_normalized_integral_add_le
#print AngularL2TriangleScratch.sqrt_normalized_integral_add_le
#print axioms AngularL2TriangleScratch.sqrt_normalized_integral_add_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AngularTriangleFullAudit/Variant14b6ae391d74f740ac20576750a565759e8560631802bb05d12bb53f18ccb93b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AngularTriangleFullAudit/Variant14b6ae391d74f740ac20576750a565759e8560631802bb05d12bb53f18ccb93b.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf23fc591ef2c15e0f6d21909d554a43e67135ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
