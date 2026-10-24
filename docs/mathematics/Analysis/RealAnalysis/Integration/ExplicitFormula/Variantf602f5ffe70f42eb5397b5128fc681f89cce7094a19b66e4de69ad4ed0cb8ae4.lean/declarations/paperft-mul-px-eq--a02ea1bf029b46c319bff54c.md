# paperFT_mul_PX_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11119489556113fd419d7b6fb45ccbaa2e493e2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 650,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cf1f491-b596-c097-1f7a-1f12f392d076",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75e1362b-ff72-3c15-ebe3-56f52754d255",
  "kind": "theorem",
  "lexical_name": "paperFT_mul_PX_eq",
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
  "slug": "paperft-mul-px-eq--a02ea1bf029b46c319bff54c",
  "source": {
    "blob": "11119489556113fd419d7b6fb45ccbaa2e493e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 660,
    "line": 650,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a02ea1bf029b46c319bff54c10f3dc00809615371e4338bd5cee1ec8d0117f1d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75e1362b-ff72-3c15-ebe3-56f52754d255`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–660.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paperFT_mul_PX_eq (k : ℝ → ℂ) (L : ℝ) :
    (fun τ : ℝ => paperFT k τ * (PX (Real.exp L) τ : ℂ))
      = fun τ : ℝ => ∑ n ∈ Finset.Ioc 0 ⌊Real.exp L⌋₊, (-(1 / π) * ((Λ n / Real.sqrt n : ℝ) : ℂ)) *
          (paperFT k τ * (Real.cos (τ * Real.log n) : ℂ)) := by
  ext τ
  simp only [PX]
  push_cast
  rw [Finset.mul_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun n _ => ?_
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExplicitFormula/Variantf602f5ffe70f42eb5397b5128fc681f89cce7094a19b66e4de69ad4ed0cb8ae4.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11119489556113fd419d7b6fb45ccbaa2e493e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
