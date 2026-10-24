# zeta_growth_quarter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79523c00f44c58bd648d60906369762e89044d27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82eb6930-ccbf-2666-cd2a-40299c406b16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e484f4e-5631-2e2b-3271-6312c341639d",
  "kind": "theorem",
  "lexical_name": "zeta_growth_quarter",
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
  "slug": "zeta-growth-quarter--5d1e1b37f3539edeb4fe98e8",
  "source": {
    "blob": "79523c00f44c58bd648d60906369762e89044d27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d1e1b37f3539edeb4fe98e81900a0f66c868cb2d11ec626abf7836dd8314557",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e484f4e-5631-2e2b-3271-6312c341639d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_growth_quarter :
    ∃ A C : ℝ, 0 < C ∧ ∀ s : ℂ, (1 / 4 : ℝ) ≤ s.re → s.re ≤ 2 → 1 ≤ |s.im| →
      ‖riemannZeta s‖ ≤ C * |s.im| ^ A := by
  obtain ⟨C, hC, h⟩ := zeta_growth (δ := 1 / 4) (by norm_num)
  refine ⟨1, C, hC, fun s h₁ _ h₃ => ?_⟩
  simpa [Real.rpow_one] using h s h₁ h₃

/-- **Consumer interface (Zeta23/RvM/LocalCount.lean).** Polynomial growth to
the right of σ = 0.15, uniform down to small |Im s| as long as s keeps distance ≥ 1 from the pole:
∃ A C, 0 < C ∧ ∀ s, 0.15 ≤ Re s → 1 ≤ ‖s − 1‖ → ‖ζ s‖ ≤ C·(|Im s| + 3)^A.  (We give A = 1, C = 20/3.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79523c00f44c58bd648d60906369762e89044d27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
