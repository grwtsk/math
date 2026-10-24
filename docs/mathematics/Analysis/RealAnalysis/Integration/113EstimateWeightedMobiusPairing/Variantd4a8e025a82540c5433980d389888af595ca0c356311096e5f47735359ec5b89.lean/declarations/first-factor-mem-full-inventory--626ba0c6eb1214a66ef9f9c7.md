# first_factor_mem_full_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8be1489a-2a4e-0690-23ab-19063872f65d",
  "kind": "theorem",
  "lexical_name": "first_factor_mem_full_inventory",
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
  "slug": "first-factor-mem-full-inventory--626ba0c6eb1214a66ef9f9c7",
  "source": {
    "blob": "5a21b0f52d67363df0dd7294f7649f67eb5eb53c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 169,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantd4a8e025a82540c5433980d389888af595ca0c356311096e5f47735359ec5b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:626ba0c6eb1214a66ef9f9c76f5230aadd3d48d0d96ec1d76e63e56eadde6e18",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantd4a8e025a82540c5433980d389888af595ca0c356311096e5f47735359ec5b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8be1489a-2a4e-0690-23ab-19063872f65d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_factor_mem_full_inventory (A : ℝ) (n : ℕ)
    (hn : n ∈ primePowerInventory (2 * A)) (dk : ℕ × ℕ)
    (hdk : dk ∈ n.divisorsAntidiagonal) :
    dk.1 ∈ Finset.Icc 1 (sourceKernelCutoff A) := by
  have hn0 : n ≠ 0 := by have := (Finset.mem_Icc.mp hn).1; omega
  have hdvd := Nat.fst_mem_divisors_of_mem_antidiagonal hdk
  have hd0 := ne_zero_of_dvd_ne_zero hn0 (Nat.dvd_of_mem_divisors hdvd)
  exact Finset.mem_Icc.mpr ⟨by omega, (Nat.divisor_le hdvd).trans (Finset.mem_Icc.mp hn).2⟩

/-- Exact recombination of all divisor sectors, with unit divisor and moving
equality boundary retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantd4a8e025a82540c5433980d389888af595ca0c356311096e5f47735359ec5b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantd4a8e025a82540c5433980d389888af595ca0c356311096e5f47735359ec5b89.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a21b0f52d67363df0dd7294f7649f67eb5eb53c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
