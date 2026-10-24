# energy_le_of_cumulativeSupplyBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90fb64c9-7ac6-5ec2-c70f-7e715fa2d275",
  "kind": "theorem",
  "lexical_name": "energy_le_of_cumulativeSupplyBound",
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
  "slug": "energy-le-of-cumulativesupplybound--81f619994315c0fbc6e50a9f",
  "source": {
    "blob": "a90ff5d9f8341c68b1a688e33138b0c2589b7db2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 138,
    "path": "GRWTSK/Analysis/Inequalities/DiscreteEnergyBalance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81f619994315c0fbc6e50a9f500909f0ab9b9fe43d2566e0909f88bfbaea5356",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/DiscreteEnergyBalance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90fb64c9-7ac6-5ec2-c70f-7e715fa2d275`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_le_of_cumulativeSupplyBound (L : SignedWorkLedger) (start : ℕ)
    (budget : ℕ → ℝ) (hbudget : L.CumulativeSupplyBound start budget) :
    ∀ horizon, L.signedEnergy (start + horizon) ≤
      L.signedEnergy start + L.storage start + budget horizon := by
  intro horizon
  exact L.energy_le_of_supply_bound start horizon (budget horizon) (hbudget horizon)

end SignedWorkLedger

section Readout

universe u

variable {V : Type u} [AddCommGroup V] [Module ℝ V]

/-- Positive source geometry and signed source readout are different data.
No positivity is requested or inferred for `signedForm`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/DiscreteEnergyBalance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/DiscreteEnergyBalance.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90ff5d9f8341c68b1a688e33138b0c2589b7db2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
