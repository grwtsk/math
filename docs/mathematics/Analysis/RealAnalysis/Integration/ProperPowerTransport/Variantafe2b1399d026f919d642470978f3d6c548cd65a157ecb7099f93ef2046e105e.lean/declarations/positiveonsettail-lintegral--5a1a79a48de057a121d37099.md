# positiveOnsetTail_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9563be03-0fb7-34b0-99dd-50590bfb8f92",
  "kind": "theorem",
  "lexical_name": "positiveOnsetTail_lintegral",
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
  "slug": "positiveonsettail-lintegral--5a1a79a48de057a121d37099",
  "source": {
    "blob": "0837fef432f3e4c3e640a4b5f14d07b6a8ebb1f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a1a79a48de057a121d370999ea113b63ad2e7d9f424ab8c9ade1914b95c2db2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9563be03-0fb7-34b0-99dd-50590bfb8f92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveOnsetTail_lintegral :
    (∫⁻ t : ℝ, ENNReal.ofReal (positiveOnsetTail t)) = ENNReal.ofReal properPowerB1 := by
  calc
    _ = ∫⁻ t : ℝ, ∑' pk : Nat.Primes×ℕ,
        ENNReal.ofReal (positiveOnsetAtom pk.1 pk.2 t) := by
      apply lintegral_congr
      intro t
      exact ENNReal.ofReal_tsum_of_nonneg
        (fun pk => positiveOnsetAtom_nonneg pk.1 pk.2 t) (positiveOnsetTail_summable t)
    _ = ∑' pk : Nat.Primes×ℕ, ∫⁻ t : ℝ,
        ENNReal.ofReal (positiveOnsetAtom pk.1 pk.2 t) :=
      lintegral_tsum (fun pk => (positiveOnsetAtom_measurable pk.1 pk.2).ennreal_ofReal.aemeasurable)
    _ = ∑' pk : Nat.Primes×ℕ, ENNReal.ofReal (primeMomentAtom 1 pk.1 pk.2) := by
      apply tsum_congr
      intro pk
      rw [← ofReal_integral_eq_lintegral_ofReal (positiveOnsetAtom_integrable pk.1 pk.2)
        (Eventually.of_forall (positiveOnsetAtom_nonneg pk.1 pk.2)),positiveOnsetAtom_integral]
    _ = ENNReal.ofReal properPowerB1 := by
      have he := ENNReal.ofReal_tsum_of_nonneg
        (f:=fun pk : Nat.Primes×ℕ => primeMomentAtom 1 pk.1 pk.2)
        (fun pk => momentAtom_nonneg 1 pk.1.val pk.2) (primeMomentAtom_summable 1)
      rw [←he,←properPowerMoment_eq_joint_sum]
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantafe2b1399d026f919d642470978f3d6c548cd65a157ecb7099f93ef2046e105e.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0837fef432f3e4c3e640a4b5f14d07b6a8ebb1f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
