# measurable_of_measurable_nnreal_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9706c91-bd66-660a-8d22-ec2bfebaec9e",
  "kind": "theorem",
  "lexical_name": "measurable_of_measurable_nnreal_prod",
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
  "slug": "measurable-of-measurable-nnreal-prod--ca590a710498e5f221efab88",
  "source": {
    "blob": "8a25633b4775782565ba768b78967f5aa0ab171d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 228,
    "path": "GRWTSK/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca590a710498e5f221efab883b30a2c255952fc99d132290302ce79f1c27fcfb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9706c91-bd66-660a-8d22-ec2bfebaec9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_of_measurable_nnreal_prod {_ : MeasurableSpace β} {_ : MeasurableSpace γ}
    {f : ℝ≥0∞ × β → γ} (H₁ : Measurable fun p : ℝ≥0 × β => f (p.1, p.2))
    (H₂ : Measurable fun x => f (∞, x)) : Measurable f :=
  let e : ℝ≥0∞ × β ≃ᵐ (ℝ≥0 × β) ⊕ (Unit × β) :=
    (ennrealEquivSum.prodCongr (MeasurableEquiv.refl β)).trans
      (MeasurableEquiv.sumProdDistrib _ _ _)
  e.symm.measurable_comp_iff.1 <| measurable_sum H₁ (H₂.comp measurable_id.snd)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Real/Variant26926b256c5ef7e827d7813293348d7b287a0bac9fc0c49f809226fb6d3fffa5.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a25633b4775782565ba768b78967f5aa0ab171d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
