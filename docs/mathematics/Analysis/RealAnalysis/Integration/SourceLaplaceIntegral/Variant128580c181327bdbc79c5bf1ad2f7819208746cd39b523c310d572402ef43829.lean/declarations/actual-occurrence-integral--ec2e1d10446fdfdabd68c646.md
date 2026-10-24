# actual_occurrence_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c3a5c6cfb6635c404c834da5a0bd410885924e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e9f734d-d3ea-0e94-0036-b47ecf8a45d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf65f28e-0cae-5978-a2fc-79c3c9a42794",
  "kind": "lemma",
  "lexical_name": "actual_occurrence_integral",
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
  "slug": "actual-occurrence-integral--ec2e1d10446fdfdabd68c646",
  "source": {
    "blob": "1c3a5c6cfb6635c404c834da5a0bd410885924e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec2e1d10446fdfdabd68c6468c396f36574b7cd3e7ecd4cb7d0ac6681ee4744d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf65f28e-0cae-5978-a2fc-79c3c9a42794`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma actual_occurrence_integral (o : ZeroObject.ZeroOccurrence) (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) *
      ((A : ℂ) ^ 17 * ZeroSideTargets.bilateralTransform A (ZeroObject.shiftedValue o) ^ 2))
      (Ioi 1) ∧
    (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) *
      ((A : ℂ) ^ 17 * ZeroSideTargets.bilateralTransform A (ZeroObject.shiftedValue o) ^ 2)) =
      sourceKernel (ZeroObject.shiftedValue o) s := by
  obtain ⟨hi, he⟩ := occurrence_integral o s hs
  have hpoint (A : ℝ) (hA : A ∈ Ioi 1) :
      Complex.exp (-s * A) * expandedSummand A (ZeroObject.shiftedValue o) =
        Complex.exp (-s * A) *
          ((A : ℂ) ^ 17 * ZeroSideTargets.bilateralTransform A (ZeroObject.shiftedValue o) ^ 2) := by
    rw [expanded_summand_eq A hA.le o]
  exact ⟨hi.congr_fun hpoint measurableSet_Ioi,
    (setIntegral_congr_fun measurableSet_Ioi hpoint).symm.trans he⟩

/-- The continued transform of the actual normalization polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3a5c6cfb6635c404c834da5a0bd410885924e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
