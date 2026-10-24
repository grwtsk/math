# multiplier_abs_le_of_estimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c631668441237cecd5e058defcb7f9a35189598",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae4e14c0852a23217e312b57bd7b8c66d34592519776de5a9dd04b1ec94fd048.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a72f139-d1ec-f4d4-8467-4845bb333413",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06b21b91-cfb5-b010-6deb-935660d8e5e1",
  "kind": "theorem",
  "lexical_name": "multiplier_abs_le_of_estimate",
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
  "slug": "multiplier-abs-le-of-estimate--d4a6564a0f64a7f4b337b655",
  "source": {
    "blob": "0c631668441237cecd5e058defcb7f9a35189598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 30,
    "path": "GRWTSK/Analysis/MeasureTheory/BridgeMultiplier/Variantae4e14c0852a23217e312b57bd7b8c66d34592519776de5a9dd04b1ec94fd048.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4a6564a0f64a7f4b337b655873f566093d4b027563417cd6c7f016f37de8456",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BridgeMultiplier/Variantae4e14c0852a23217e312b57bd7b8c66d34592519776de5a9dd04b1ec94fd048.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06b21b91-cfb5-b010-6deb-935660d8e5e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplier_abs_le_of_estimate (hestimate : MultiplierEstimateObligation) (ξ : ℝ) :
    |archimedeanMultiplier ξ| ≤ |archimedeanConstant| + 4 +
      Real.log (1 + 4 * ξ ^ 2) / 2 := by
  have hlo := (hestimate ξ).1
  have hhi := (hestimate ξ).2
  have hlog : 0 ≤ Real.log (1 + 4 * ξ ^ 2) :=
    Real.log_nonneg (by nlinarith [sq_nonneg ξ])
  have hc₁ := le_abs_self archimedeanConstant
  have hc₂ := neg_abs_le archimedeanConstant
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- This is genuine integrability of the actual archimedean integrand, conditional only on
its explicitly named source estimate. Both Fourier-energy majorants were proved independently. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BridgeMultiplier/Variantae4e14c0852a23217e312b57bd7b8c66d34592519776de5a9dd04b1ec94fd048.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BridgeMultiplier/Variantae4e14c0852a23217e312b57bd7b8c66d34592519776de5a9dd04b1ec94fd048.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c631668441237cecd5e058defcb7f9a35189598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
