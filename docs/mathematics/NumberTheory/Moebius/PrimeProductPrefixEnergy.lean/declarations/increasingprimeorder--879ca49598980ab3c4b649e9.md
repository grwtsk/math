# IncreasingPrimeOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5db5b78808af40197743ab12a684571db2151bda559f5ffa941bfd923e2c137d",
  "kind": "def",
  "lexical_name": "IncreasingPrimeOrder",
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
  "slug": "increasingprimeorder--879ca49598980ab3c4b649e9",
  "source": {
    "blob": "4fe5ac16109f03a2e30c66d17c2992c1d691472f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 205,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeProductPrefixEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:879ca49598980ab3c4b649e953efc4045e77adb9021d93aa55ac13e765681db3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeProductPrefixEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5db5b78808af40197743ab12a684571db2151bda559f5ffa941bfd923e2c137d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IncreasingPrimeOrder {T η : ℝ} (controller : AdmissibleController T η) : Prop :=
  ∀ i j, i < j → ∀ p ∈ controller.blocks i, ∀ q ∈ controller.blocks j, p < q

end PPNCP04.ActualDiagnostics

#print axioms PPNCP04.ActualDiagnostics.orderEnergy_completed
#print axioms PPNCP04.ActualDiagnostics.EnergyEnclosure.contains_literal_integral
#print axioms PPNCP04.ActualDiagnostics.orderEnergy_le_max
#print axioms PPNCP04.ActualDiagnostics.all_minus_baseline_energy_is_actual
#print axioms PPNCP04.ActualDiagnostics.AdmissibleController.exactly_once
#print axioms PPNCP04.ActualDiagnostics.AdmissibleController.union_complete
#print axioms PPNCP04.ActualDiagnostics.AdmissibleController.total_mass_is_inventory_mass
#print axioms PPNCP04.ActualDiagnostics.no_small_eta_controller
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeProductPrefixEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeProductPrefixEnergy.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fe5ac16109f03a2e30c66d17c2992c1d691472f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
