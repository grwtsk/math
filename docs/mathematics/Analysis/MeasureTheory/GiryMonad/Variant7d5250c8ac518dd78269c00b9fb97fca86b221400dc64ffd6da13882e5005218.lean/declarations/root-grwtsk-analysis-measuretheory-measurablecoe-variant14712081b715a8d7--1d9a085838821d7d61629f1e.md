# _root_.GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.AEMeasurable.ae_of_join

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb94c976-9c03-0f0f-fde4-d390e6153698",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.AEMeasurable.ae_of_join",
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
  "slug": "root-grwtsk-analysis-measuretheory-measurablecoe-variant14712081b715a8d7--1d9a085838821d7d61629f1e",
  "source": {
    "blob": "11bc189ae7232a0216ce593fbb36ba426409d99a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 178,
    "path": "GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant7d5250c8ac518dd78269c00b9fb97fca86b221400dc64ffd6da13882e5005218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d9a085838821d7d61629f1e74508bd0c817ef892609c3737dec9b98cd21ce6e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/GiryMonad/Variant7d5250c8ac518dd78269c00b9fb97fca86b221400dc64ffd6da13882e5005218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb94c976-9c03-0f0f-fde4-d390e6153698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.AEMeasurable.ae_of_join {m : Measure (Measure α)} {f : α → β}
    (h : AEMeasurable f m.join) : ∀ᵐ μ ∂m, AEMeasurable f μ :=
  let ⟨g, hgm, hg⟩ := h; (ae_ae_of_ae_join hg).mono fun _μ hμ ↦ ⟨g, hgm, hμ⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/GiryMonad/Variant7d5250c8ac518dd78269c00b9fb97fca86b221400dc64ffd6da13882e5005218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant7d5250c8ac518dd78269c00b9fb97fca86b221400dc64ffd6da13882e5005218.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11bc189ae7232a0216ce593fbb36ba426409d99a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
