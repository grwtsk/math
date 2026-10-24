# _root_.GRWTSK.Analysis.MeasureTheory.IntervalIntegrable.Variant97e7a2efda146d0d1280f23d660cc07655dd7c48b51631752e9aa94deaa18ab9.ContinuousLinearMap.intervalIntegral_comp_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c696bfd-506d-bf44-dc4a-61ea01983d0b",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.IntervalIntegrable.Variant97e7a2efda146d0d1280f23d660cc07655dd7c48b51631752e9aa94deaa18ab9.ContinuousLinearMap.intervalIntegral_comp_comm",
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
  "slug": "root-grwtsk-analysis-measuretheory-intervalintegrable-variant97e7a2efda1--06ec3e2382c5c5c7857c0731",
  "source": {
    "blob": "5e4f728d6af658326b073506faee0f72ff0c7494",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 892,
    "line": 880,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant0695d1df4c022467a91050d21f8825bdf3ae5b288c12432bbcbe2d90c4393d13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06ec3e2382c5c5c7857c07311ab49530523b8f59ddc01b8e5c2673b89317ba57",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant0695d1df4c022467a91050d21f8825bdf3ae5b288c12432bbcbe2d90c4393d13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c696bfd-506d-bf44-dc4a-61ea01983d0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 880–892.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.IntervalIntegrable.Variant97e7a2efda146d0d1280f23d660cc07655dd7c48b51631752e9aa94deaa18ab9.ContinuousLinearMap.intervalIntegral_comp_comm [CompleteSpace E] (L : E →L[𝕜] F)
    (hf : IntervalIntegrable f μ a b) : (∫ x in a..b, L (f x) ∂μ) = L (∫ x in a..b, f x ∂μ) := by
  simp_rw [intervalIntegral, L.integral_comp_comm hf.1, L.integral_comp_comm hf.2, L.map_sub]

end ContinuousLinearMap

section LinearIsometry

variable {a b : ℝ} {μ : Measure ℝ} {f : ℝ → E} [RCLike 𝕜]
variable [NormedAddCommGroup F] [NormedSpace 𝕜 E] [NormedSpace 𝕜 F]

variable [NormedSpace ℝ F] [CompleteSpace E] [CompleteSpace F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant0695d1df4c022467a91050d21f8825bdf3ae5b288c12432bbcbe2d90c4393d13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant0695d1df4c022467a91050d21f8825bdf3ae5b288c12432bbcbe2d90c4393d13.lean#L880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e4f728d6af658326b073506faee0f72ff0c7494` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
