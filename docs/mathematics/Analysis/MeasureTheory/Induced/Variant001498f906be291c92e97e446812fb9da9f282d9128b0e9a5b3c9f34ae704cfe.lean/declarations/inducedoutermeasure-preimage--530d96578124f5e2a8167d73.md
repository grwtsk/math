# inducedOuterMeasure_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81a34836-0665-6f9b-4f61-e5d6fa8a69b9",
  "kind": "theorem",
  "lexical_name": "inducedOuterMeasure_preimage",
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
  "slug": "inducedoutermeasure-preimage--530d96578124f5e2a8167d73",
  "source": {
    "blob": "0993464d26219d292db38b1110186ac18faeb15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 210,
    "path": "GRWTSK/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:530d96578124f5e2a8167d7345490a4f147db32d0a239f484ff768fe4ecb9528",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81a34836-0665-6f9b-4f61-e5d6fa8a69b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inducedOuterMeasure_preimage (f : α ≃ α) (Pm : ∀ s : Set α, P (f ⁻¹' s) ↔ P s)
    (mm : ∀ (s : Set α) (hs : P s), m (f ⁻¹' s) ((Pm _).mpr hs) = m s hs) {A : Set α} :
    inducedOuterMeasure m P0 m0 (f ⁻¹' A) = inducedOuterMeasure m P0 m0 A := by
    rw [inducedOuterMeasure_eq_iInf _ msU m_mono, inducedOuterMeasure_eq_iInf _ msU m_mono]; symm
    refine f.injective.preimage_surjective.iInf_congr (preimage f) fun s => ?_
    refine iInf_congr_Prop (Pm s) ?_; intro hs
    refine iInf_congr_Prop f.surjective.preimage_subset_preimage_iff ?_
    intro _; exact mm s hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Induced/Variant001498f906be291c92e97e446812fb9da9f282d9128b0e9a5b3c9f34ae704cfe.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0993464d26219d292db38b1110186ac18faeb15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
