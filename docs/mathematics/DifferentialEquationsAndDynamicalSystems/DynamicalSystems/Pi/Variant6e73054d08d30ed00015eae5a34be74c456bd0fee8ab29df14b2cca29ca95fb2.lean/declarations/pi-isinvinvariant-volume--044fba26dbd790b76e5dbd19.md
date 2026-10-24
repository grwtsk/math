# Pi.isInvInvariant_volume

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19aff3eb028e9ef798a42e2d95a57e4654642d84fa560ff5d6c90c227a387efe",
  "kind": "instance",
  "lexical_name": "Pi.isInvInvariant_volume",
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
  "slug": "pi-isinvinvariant-volume--044fba26dbd790b76e5dbd19",
  "source": {
    "blob": "4e5a2b6aaad20f340b204f870463f99ddd6330e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 738,
    "line": 720,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:044fba26dbd790b76e5dbd191a67155662c44ed0fe25892095e58faace00b50e",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19aff3eb028e9ef798a42e2d95a57e4654642d84fa560ff5d6c90c227a387efe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 720–738.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.isInvInvariant_volume {α} [Group α] [MeasureSpace α] [SigmaFinite (volume : Measure α)]
    [MeasurableInv α] [IsInvInvariant (volume : Measure α)] :
    IsInvInvariant (volume : Measure (ι → α)) :=
  pi.isInvInvariant _
#align measure_theory.pi.is_inv_invariant_volume MeasureTheory.Pi.isInvInvariant_volume
#align measure_theory.pi.is_neg_invariant_volume MeasureTheory.Pi.isNegInvariant_volume

/-!
### Measure preserving equivalences

In this section we prove that some measurable equivalences (e.g., between `Fin 1 → α` and `α` or
between `Fin 2 → α` and `α × α`) preserve measure or volume. These lemmas can be used to prove that
measures of corresponding sets (images or preimages) have equal measures and functions `f ∘ e` and
`f` have equal integrals, see lemmas in the `MeasureTheory.measurePreserving` prefix.
-/


section MeasurePreserving

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean#L720).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e5a2b6aaad20f340b204f870463f99ddd6330e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
