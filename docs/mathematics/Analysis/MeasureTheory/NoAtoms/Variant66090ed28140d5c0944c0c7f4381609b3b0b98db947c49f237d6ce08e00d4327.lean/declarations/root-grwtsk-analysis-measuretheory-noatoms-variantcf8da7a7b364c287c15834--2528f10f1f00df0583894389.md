# _root_.GRWTSK.Analysis.MeasureTheory.NoAtoms.Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.Set.Countable.ae_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:614d0a2b-4383-d074-f918-67b5294bb292",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.NoAtoms.Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.Set.Countable.ae_notMem",
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
  "slug": "root-grwtsk-analysis-measuretheory-noatoms-variantcf8da7a7b364c287c15834--2528f10f1f00df0583894389",
  "source": {
    "blob": "d59c45d7da4b753786e6ea37e5b64b3017a79240",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 65,
    "path": "GRWTSK/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2528f10f1f00df058389438915c82017bc44c00f4afbf5ffd126803a9b7c6408",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:614d0a2b-4383-d074-f918-67b5294bb292`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.NoAtoms.Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.Set.Countable.ae_notMem (h : s.Countable) (μ : Measure α) [NoAtoms μ] :
    ∀ᵐ x ∂μ, x ∉ s := by
  simpa only [ae_iff, Classical.not_not] using h.measure_zero μ

@[deprecated (since := "2025-05-23")]
alias _root_.Set.Countable.ae_not_mem := _root_.GRWTSK.Analysis.MeasureTheory.NoAtoms.Variantcf8da7a7b364c287c15834dffe659aa0841736510c3a68fbc53e5b35c5cd233e.Set.Countable.ae_notMem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NoAtoms/Variant66090ed28140d5c0944c0c7f4381609b3b0b98db947c49f237d6ce08e00d4327.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d59c45d7da4b753786e6ea37e5b64b3017a79240` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
