# nonzero_source_charge_keeps_both_raw_children_singular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a41ef1ae-1146-2955-1af7-286debbd7c55",
  "kind": "theorem",
  "lexical_name": "nonzero_source_charge_keeps_both_raw_children_singular",
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
  "slug": "nonzero-source-charge-keeps-both-raw-children-singular--de51f746a7befd37e03c2d1c",
  "source": {
    "blob": "28730a4b5d984ad1fe93f51be3520b84f7e822c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeparatedPoleCharges/Variant7fbf4d4c5ae154d0302212f017c65ac748366a9de526ed860ac021ecb27771a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de51f746a7befd37e03c2d1c6332b9b6999318e8da5802768cf626172cf70d93",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeparatedPoleCharges/Variant7fbf4d4c5ae154d0302212f017c65ac748366a9de526ed860ac021ecb27771a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a41ef1ae-1146-2955-1af7-286debbd7c55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonzero_source_charge_keeps_both_raw_children_singular (U : ℕ)
    {C : ℂ → ℂ} (hC : ContinuousAt C 1)
    (hcharge : (momentZero U : ℂ) * C 1 ≠ 0) :
    ¬ ContinuousAt (rawLow U C) 1 ∧ ¬ ContinuousAt (rawHigh U C) 1 :=
  ⟨nonzero_charge_forbids_continuity (raw_low_charge U hC) hcharge,
    nonzero_charge_forbids_continuity (raw_high_charge U hC) (neg_ne_zero.mpr hcharge)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeparatedPoleCharges/Variant7fbf4d4c5ae154d0302212f017c65ac748366a9de526ed860ac021ecb27771a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeparatedPoleCharges/Variant7fbf4d4c5ae154d0302212f017c65ac748366a9de526ed860ac021ecb27771a6.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28730a4b5d984ad1fe93f51be3520b84f7e822c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
