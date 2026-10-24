# _root_.GRWTSK.Analysis.MeasureTheory.HasPDF.Variant78dff239a514043c89d151bcf5ad5293c5afdf77840cfd23d169f1108c290eeb.Real.hasPDF_iff_of_aemeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:604c9aeb-2957-479d-c782-91441f69da26",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.HasPDF.Variant78dff239a514043c89d151bcf5ad5293c5afdf77840cfd23d169f1108c290eeb.Real.hasPDF_iff_of_aemeasurable",
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
  "slug": "root-grwtsk-analysis-measuretheory-haspdf-variant78dff239a514043c89d151b--a19a4cdc960a6f9b8108c9ae",
  "source": {
    "blob": "4e6d89a09bab6774e7b9b6481f048661284e64b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 255,
    "path": "GRWTSK/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a19a4cdc960a6f9b8108c9ae35f5f9f711c0aa44fab68a83a53392927c3282a7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:604c9aeb-2957-479d-c782-91441f69da26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem _root_.GRWTSK.Analysis.MeasureTheory.HasPDF.Variant78dff239a514043c89d151bcf5ad5293c5afdf77840cfd23d169f1108c290eeb.Real.hasPDF_iff_of_aemeasurable [SFinite ℙ] (hX : AEMeasurable X ℙ) :
    HasPDF X ℙ ↔ map X ℙ ≪ volume := by
  rw [Real.hasPDF_iff, and_iff_right hX]

variable [IsFiniteMeasure ℙ]

/-- If `X` is a real-valued random variable that has pdf `f`, then the expectation of `X` equals
`∫ x, x * f x ∂λ` where `λ` is the Lebesgue measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e6d89a09bab6774e7b9b6481f048661284e64b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
