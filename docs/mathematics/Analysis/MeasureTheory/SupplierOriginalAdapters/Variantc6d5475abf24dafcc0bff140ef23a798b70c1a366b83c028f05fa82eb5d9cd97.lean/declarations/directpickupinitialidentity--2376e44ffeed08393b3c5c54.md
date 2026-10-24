# DirectPickupInitialIdentity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8205fd7bb492f65a9248f598a8796546228ee8b497b74cec38f32f3923a83ac3",
  "kind": "def",
  "lexical_name": "DirectPickupInitialIdentity",
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
  "slug": "directpickupinitialidentity--2376e44ffeed08393b3c5c54",
  "source": {
    "blob": "3c05c1608b14b0e522cd92f3ec160857acaf0264",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 216,
    "path": "GRWTSK/Analysis/MeasureTheory/SupplierOriginalAdapters/Variantc6d5475abf24dafcc0bff140ef23a798b70c1a366b83c028f05fa82eb5d9cd97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2376e44ffeed08393b3c5c54faee9d0949180ae22c700ecea1887c18f6e5e6b6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SupplierOriginalAdapters/Variantc6d5475abf24dafcc0bff140ef23a798b70c1a366b83c028f05fa82eb5d9cd97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8205fd7bb492f65a9248f598a8796546228ee8b497b74cec38f32f3923a83ac3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DirectPickupInitialIdentity : Prop :=
  ∀ z : ℂ, 1 < z.re →
    (∫ t : ℝ, Complex.exp (-z * t) * (pickup t : ℂ) ∂pickupTimeMeasure) = pickupTransform z

/-- Assuming the signed supplier and its separately stated critical tail,
the original positive envelope has exactly the paper's real exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SupplierOriginalAdapters/Variantc6d5475abf24dafcc0bff140ef23a798b70c1a366b83c028f05fa82eb5d9cd97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SupplierOriginalAdapters/Variantc6d5475abf24dafcc0bff140ef23a798b70c1a366b83c028f05fa82eb5d9cd97.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c05c1608b14b0e522cd92f3ec160857acaf0264` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
