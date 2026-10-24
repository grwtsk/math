# part_mass_le_log_layers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:982b8feb-340b-2dea-c0d5-16370486287d",
  "kind": "theorem",
  "lexical_name": "part_mass_le_log_layers",
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
  "slug": "part-mass-le-log-layers--013a073220ee88e6486b30e0",
  "source": {
    "blob": "3e1dd968c25aac5f9f2e7eeadf0332d7a3ae7afe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 124,
    "path": "GRWTSK/Analysis/Fourier/ZModPartitionEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:013a073220ee88e6486b30e055d03f0d46f90610afd8e94a3a40b909d924f273",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:982b8feb-340b-2dea-c0d5-16370486287d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem part_mass_le_log_layers (parts : Fin m → Finset (ZMod p))
    (hpos : ∀ i, (parts i).Nonempty) (z : ZMod p) :
    GRWTSK.ZModIndependentSelection.valueProbability
      (GRWTSK.ZModIndependentSelection.selectionSum
        (fun i (x : (parts i : Type)) => (x : ZMod p))) z ≤
      (p : ℝ)⁻¹ *
        (((GRWTSK.FiniteExponentialLayers.lowBand (partitionEnergy parts)).card : ℝ) +
          ∑ k ∈ Finset.range (Nat.log 2 m + 1),
            ((GRWTSK.FiniteExponentialLayers.dyadicBand (partitionEnergy parts) k).card : ℝ) *
              Real.exp (-(2 : ℝ) ^ k)) := by
  apply part_mass_le_dyadic_layers parts hpos z (Nat.log 2 m)
  exact_mod_cast Nat.lt_pow_succ_log_self (by decide : 1 < 2) m

/-- A simple lower logarithm bound used only to discharge source range arithmetic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModPartitionEnergy.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e1dd968c25aac5f9f2e7eeadf0332d7a3ae7afe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
