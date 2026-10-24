# centered_estimate_iff_source_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e14c321-6e13-0989-0341-97909b7d2220",
  "kind": "theorem",
  "lexical_name": "centered_estimate_iff_source_bound",
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
  "slug": "centered-estimate-iff-source-bound--fe15a0a8517da0f5584f9a99",
  "source": {
    "blob": "bbe6847c3e4e59db5b921b8bb0dfce5d02a509f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 291,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe15a0a8517da0f5584f9a99b19bee1c83c45b302d315e49dd98b90cbc8abcde",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e14c321-6e13-0989-0341-97909b7d2220`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_estimate_iff_source_bound (r : DilationRealization)
    (hsector : ∀ A : Set.Ici (1 : ℝ), SectorIntegrability r A) :
    CenteredSignedEstimate r ↔ UniformSignedLowerBound r := by
  constructor
  · rintro ⟨B, hB, h⟩
    refine ⟨B, hB, fun A hA ↦ ?_⟩
    simpa only [← signed_pairing_eq_centered_value r ⟨A, hA⟩ (hsector ⟨A, hA⟩)] using
      h ⟨A, hA⟩
  · rintro ⟨B, hB, h⟩
    refine ⟨B, hB, fun A ↦ ?_⟩
    rw [← signed_pairing_eq_centered_value r A (hsector A)]
    exact h A A.property

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.WeightReflection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe6847c3e4e59db5b921b8bb0dfce5d02a509f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
