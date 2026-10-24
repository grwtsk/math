# ae_le_set_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d752cd94-9534-3f0f-0f2c-a44a51519b0a",
  "kind": "theorem",
  "lexical_name": "ae_le_set_pi",
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
  "slug": "ae-le-set-pi--88a8d2aeb3081f73eb11cafe",
  "source": {
    "blob": "4e5a2b6aaad20f340b204f870463f99ddd6330e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 478,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88a8d2aeb3081f73eb11cafeb668932aed7074dbeb8e27fd31bc31b6670d838b",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d752cd94-9534-3f0f-0f2c-a44a51519b0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_le_set_pi {I : Set ι} {s t : ∀ i, Set (α i)} (h : ∀ i ∈ I, s i ≤ᵐ[μ i] t i) :
    Set.pi I s ≤ᵐ[Measure.pi μ] Set.pi I t :=
  ((eventually_all_finite I.toFinite).2 fun i hi => tendsto_eval_ae_ae.eventually (h i hi)).mono
    fun _ hst hx i hi => hst i hi <| hx i hi
#align measure_theory.measure.ae_le_set_pi MeasureTheory.Measure.ae_le_set_pi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e5a2b6aaad20f340b204f870463f99ddd6330e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
