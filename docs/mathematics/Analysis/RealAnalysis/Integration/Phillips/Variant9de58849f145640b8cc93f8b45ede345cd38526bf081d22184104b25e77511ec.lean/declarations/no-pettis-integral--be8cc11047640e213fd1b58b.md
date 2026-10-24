# no_pettis_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc17dade-aa1f-8d64-4deb-a20a908fbf0d",
  "kind": "theorem",
  "lexical_name": "no_pettis_integral",
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
  "slug": "no-pettis-integral--be8cc11047640e213fd1b58b",
  "source": {
    "blob": "9a04c1930d85357b652259a54d97b96776d007e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 643,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be8cc11047640e213fd1b58b3fe2d32eb979ee403e6accc23f25856a06e4534c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc17dade-aa1f-8d64-4deb-a20a908fbf0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_pettis_integral (Hcont : #ℝ = aleph 1) :
    ¬∃ g : DiscreteCopy ℝ →ᵇ ℝ,
        ∀ φ : (DiscreteCopy ℝ →ᵇ ℝ) →L[ℝ] ℝ, ∫ x in Icc 0 1, φ (f Hcont x) = φ g := by
  rintro ⟨g, h⟩
  simp only [integral_comp] at h
  have : g = 0 := by
    ext x
    have : g x = evalClm ℝ x g := rfl
    rw [this, ← h]
    simp
  simp only [this, ContinuousLinearMap.map_zero] at h
  specialize h (volume.restrict (Icc (0 : ℝ) 1)).extensionToBoundedFunctions
  simp_rw [toFunctions_toMeasure_continuousPart _ _ MeasurableSet.univ] at h
  simp at h
#align counterexample.phillips_1940.no_pettis_integral Counterexample.Phillips1940.no_pettis_integral

end Phillips1940

end

end Counterexample
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a04c1930d85357b652259a54d97b96776d007e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
