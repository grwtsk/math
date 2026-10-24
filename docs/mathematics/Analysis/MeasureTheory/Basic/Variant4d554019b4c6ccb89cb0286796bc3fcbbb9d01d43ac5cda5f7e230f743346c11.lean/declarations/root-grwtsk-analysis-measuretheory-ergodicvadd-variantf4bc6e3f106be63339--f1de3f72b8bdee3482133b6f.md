# _root_.GRWTSK.Analysis.MeasureTheory.ErgodicVAdd.Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.ErgodicSMul.of_aestabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c535e674-2b98-c87e-e22f-ef33dd84bf27",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.ErgodicVAdd.Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.ErgodicSMul.of_aestabilizer",
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
  "slug": "root-grwtsk-analysis-measuretheory-ergodicvadd-variantf4bc6e3f106be63339--f1de3f72b8bdee3482133b6f",
  "source": {
    "blob": "2d20195a8cc7ace29711ac7d7aff69fb0d5cc696",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 85,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1de3f72b8bdee3482133b6f8dfc76ad7dd388c899c8688ff41e552291115300",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c535e674-2b98-c87e-e22f-ef33dd84bf27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.ErgodicVAdd.Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.ErgodicSMul.of_aestabilizer [Group G] [MulAction G α] [SMulInvariantMeasure G α μ]
    (h : ∀ s, MeasurableSet s → aestabilizer G μ s = ⊤ → EventuallyConst s (ae μ)) :
    ErgodicSMul G α μ :=
  ⟨fun hm hs ↦ h _ hm <| (Subgroup.eq_top_iff' _).2 fun g ↦ by
    simpa only [preimage_smul_inv] using hs g⁻¹⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d20195a8cc7ace29711ac7d7aff69fb0d5cc696` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
