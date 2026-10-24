# prod_apply_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd88ad76-c308-66de-95af-8ed20face5b9",
  "kind": "lemma",
  "lexical_name": "prod_apply_eq_integral",
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
  "slug": "prod-apply-eq-integral--8a50d006f6f0bd2d188fb3d9",
  "source": {
    "blob": "ccbd4a15c5845619bac6d506fe64148062840dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 187,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a50d006f6f0bd2d188fb3d971442628ae0b95a4532c4dfcfab0c349dd559e05",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd88ad76-c308-66de-95af-8ed20face5b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_apply_eq_integral [CompleteSpace G] [IsFiniteMeasure μ.variation]
    {s : Set (X × Y)} (hs : MeasurableSet s) :
    μ.prod ν B s = ∫ᵛ x, ν (Prod.mk x ⁻¹' s) ∂[B.flip; μ] := by
  have : μ.prod ν B = prodOfIsFiniteMeasureLeft μ ν B := by
    classical
    apply prod_eq_of_forall_apply_prod (fun s t hs ht ↦ ?_)
    simp [prodOfIsFiniteMeasureLeft, hs.prod ht, ↓reduceIte, mk_preimage_prod_right_eq_if,
      of_if, integral_indicator hs, ContinuousLinearMap.flip_apply, restrict_apply, hs]
  rw [this]
  simp [prodOfIsFiniteMeasureLeft, hs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccbd4a15c5845619bac6d506fe64148062840dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
