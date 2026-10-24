# actualClosedPrimeLogPotential_norm_le_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d8bd601-c31b-8c56-bdf4-cfdb0c46bd71",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeLogPotential_norm_le_mass",
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
  "slug": "actualclosedprimelogpotential-norm-le-mass--593339b47a4d76395d3e71ab",
  "source": {
    "blob": "bb8453b388fc99225c4f0ff26633792c62e59413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative02/Variant0d950e883c70e42af54fa85f0371477d73b6c0bc0129687e42060043fab33073.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:593339b47a4d76395d3e71abc51885cda08d6a2db3bc004666698fbd8a8386bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative02/Variant0d950e883c70e42af54fa85f0371477d73b6c0bc0129687e42060043fab33073.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d8bd601-c31b-8c56-bdf4-cfdb0c46bd71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeLogPotential_norm_le_mass (A c t : ℝ) :
    ‖actualClosedPrimeLogPotential A ((c : ℂ)+(t : ℂ)*I)‖ ≤
      actualClosedPrimeLogMass A c := by
  unfold actualClosedPrimeLogPotential
  calc
    _ ≤ ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
        ‖((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ) : ℂ) *
          Complex.exp (-((c : ℂ)+(t : ℂ)*I)*(Real.log n : ℂ))‖ := norm_sum_le _ _
    _ = _ := by simp only [term_norm, mass_eq_sum]

/-- The actual Q and S share one coefficient disk; they are not independent budgets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative02/Variant0d950e883c70e42af54fa85f0371477d73b6c0bc0129687e42060043fab33073.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative02/Variant0d950e883c70e42af54fa85f0371477d73b6c0bc0129687e42060043fab33073.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8453b388fc99225c4f0ff26633792c62e59413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
