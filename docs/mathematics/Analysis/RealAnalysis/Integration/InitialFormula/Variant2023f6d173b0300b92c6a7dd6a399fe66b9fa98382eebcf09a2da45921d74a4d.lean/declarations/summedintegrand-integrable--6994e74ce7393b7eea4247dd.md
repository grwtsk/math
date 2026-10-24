# summedIntegrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "754ccac173094178192c7e051096f1ff06033325",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 565,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:417dfb50-ff05-84d6-80f5-cea9e1af2cfa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cae5b42-011d-f043-d101-cdde749d9389",
  "kind": "theorem",
  "lexical_name": "summedIntegrand_integrable",
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
  "slug": "summedintegrand-integrable--6994e74ce7393b7eea4247dd",
  "source": {
    "blob": "754ccac173094178192c7e051096f1ff06033325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 565,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6994e74ce7393b7eea4247dd197806ecf399287d73563cf17683c57ddc388bf4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cae5b42-011d-f043-d101-cdde749d9389`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summedIntegrand_integrable
    (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn
      (fun A : ℝ ↦
        ∑' o : ZeroOccurrence,
          occurrenceIntegrand s o A)
      (Ioi 1) := by
  constructor
  · have hm :
        ∀ o : ZeroOccurrence,
          AEStronglyMeasurable (occurrenceIntegrand s o)
            (volume.restrict (Ioi 1)) :=
      fun o ↦ (occurrence_integrable o s hs).1
    exact (AEMeasurable.tsum fun o ↦ (hm o).aemeasurable).aestronglyMeasurable
  · rw [hasFiniteIntegral_iff_enorm]
    apply lt_of_le_of_lt
      (lintegral_mono
        (fun A ↦ enorm_tsum_le_tsum_enorm))
    rw [lintegral_tsum (f := fun o A ↦ ‖occurrenceIntegrand s o A‖ₑ)
      (fun o ↦ (occurrence_integrable o s hs).1.enorm)]
    exact lt_top_iff_ne_top.mpr
      (integrals_enorm_ne_top s hs)

/-- Genuine absolute convergence of the actual weighted source Laplace
integral on `Re s > 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `754ccac173094178192c7e051096f1ff06033325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
