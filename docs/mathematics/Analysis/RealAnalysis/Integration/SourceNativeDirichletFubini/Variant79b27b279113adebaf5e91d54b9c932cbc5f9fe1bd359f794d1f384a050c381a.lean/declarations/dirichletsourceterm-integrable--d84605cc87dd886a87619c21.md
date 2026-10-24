# dirichletSourceTerm_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ba5914f877134ce9f1293110f707401f9495e4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8263fbf-ce9d-9f26-12c9-672c79f785d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08f288de-ae88-e877-ac2e-bcdd383364bb",
  "kind": "theorem",
  "lexical_name": "dirichletSourceTerm_integrable",
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
  "slug": "dirichletsourceterm-integrable--d84605cc87dd886a87619c21",
  "source": {
    "blob": "9ba5914f877134ce9f1293110f707401f9495e4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d84605cc87dd886a87619c21a747790c9634fe1d7bfdde5d1a03977ae55e5dbf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08f288de-ae88-e877-ac2e-bcdd383364bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletSourceTerm_integrable (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    Integrable (dirichletSourceTerm A n) := by
  unfold dirichletSourceTerm
  apply Integrable.const_mul
  apply (nativeMellin_two_integrable A hA).mul_bdd (c := 1)
  · have hc : Continuous (dirichletPhase n) := by unfold dirichletPhase; fun_prop
    exact hc.aestronglyMeasurable
  · filter_upwards [] with t
    rw [dirichletPhase_norm]

/-- Exact norm integral majorant, preserving the original fixed-line coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba5914f877134ce9f1293110f707401f9495e4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
