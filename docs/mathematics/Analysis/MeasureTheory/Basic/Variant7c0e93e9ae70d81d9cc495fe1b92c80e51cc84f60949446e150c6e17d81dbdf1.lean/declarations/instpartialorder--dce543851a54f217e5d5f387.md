# instPartialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02afb31da2cb3af23cb016c0877cd8cf097486e7e80359af0c9f96330592c78d",
  "kind": "instance",
  "lexical_name": "instPartialOrder",
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
  "slug": "instpartialorder--dce543851a54f217e5d5f387",
  "source": {
    "blob": "9532c65dfde44fa423a57349d3b0bf521b0e9f45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 708,
    "line": 701,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant7c0e93e9ae70d81d9cc495fe1b92c80e51cc84f60949446e150c6e17d81dbdf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dce543851a54f217e5d5f387d926ad98bb56f5b487115bba4c8d578464516ec3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant7c0e93e9ae70d81d9cc495fe1b92c80e51cc84f60949446e150c6e17d81dbdf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02afb31da2cb3af23cb016c0877cd8cf097486e7e80359af0c9f96330592c78d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 701–708.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instPartialOrder : PartialOrder (VectorMeasure α M) where
  le v w := ∀ i, MeasurableSet i → v i ≤ w i
  le_refl _ _ _ := le_rfl
  le_trans _ _ _ h₁ h₂ i hi := le_trans (h₁ i hi) (h₂ i hi)
  le_antisymm _ _ h₁ h₂ := ext fun i hi => le_antisymm (h₁ i hi) (h₂ i hi)

variable {v w : VectorMeasure α M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant7c0e93e9ae70d81d9cc495fe1b92c80e51cc84f60949446e150c6e17d81dbdf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant7c0e93e9ae70d81d9cc495fe1b92c80e51cc84f60949446e150c6e17d81dbdf1.lean#L701).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9532c65dfde44fa423a57349d3b0bf521b0e9f45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
