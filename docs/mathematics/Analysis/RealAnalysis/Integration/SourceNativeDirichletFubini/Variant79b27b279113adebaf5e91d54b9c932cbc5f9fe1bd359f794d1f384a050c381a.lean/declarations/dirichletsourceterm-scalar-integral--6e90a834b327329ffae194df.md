# dirichletSourceTerm_scalar_integral

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
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fb58a34-17ab-ff26-c654-804011917da2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91d0bdbe-ce3d-d8c0-f405-fd5404fd6bfe",
  "kind": "theorem",
  "lexical_name": "dirichletSourceTerm_scalar_integral",
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
  "slug": "dirichletsourceterm-scalar-integral--6e90a834b327329ffae194df",
  "source": {
    "blob": "9ba5914f877134ce9f1293110f707401f9495e4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e90a834b327329ffae194dfef37983e2f85e9d6bced182646a81f56923a87ad",
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

Occurrence: `result:91d0bdbe-ce3d-d8c0-f405-fd5404fd6bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletSourceTerm_scalar_integral (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    (1 / (2 * Real.pi) : ℝ) * (∫ t : ℝ, dirichletSourceTerm A n t) =
      (vonMangoldt n / (n : ℝ) ^ 2 * weightedCorrelation A (Real.log n) : ℝ) := by
  have hi := weightedCorrelation_eq_native_inverse A hA (Real.log n)
  unfold dirichletSourceTerm dirichletPhase
  rw [integral_const_mul]
  calc
    _ = LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) (2 : ℂ) n *
        ((1 / (2 * Real.pi) : ℝ) * ∫ t : ℝ,
          nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
            Complex.exp (-Complex.I * (t : ℂ) * (Real.log n : ℂ))) := by ring
    _ = _ := by rw [← hi, mangoldt_term_two]; push_cast; rfl

/-- The inverted literal coefficient is the original closed prime-power weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba5914f877134ce9f1293110f707401f9495e4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
