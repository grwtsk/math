# primeHarmonicPrefix_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d8f331d-b329-8332-14a0-7b4a309588a5",
  "kind": "theorem",
  "lexical_name": "primeHarmonicPrefix_eq",
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
  "slug": "primeharmonicprefix-eq--7c58b51894ba5d2439f79a47",
  "source": {
    "blob": "6b6c60e5e99a997fd8bbe50ab8cbc60681faf208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c58b51894ba5d2439f79a47fc0c036146cad5cf2ae0136c48ac415dcbdf15b0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d8f331d-b329-8332-14a0-7b4a309588a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primeHarmonicPrefix_eq (u : ℝ) :
    primeHarmonicPrefix u =
      ∑ n ∈ Finset.Icc 0 ⌊Real.exp u⌋₊, (n : ℝ)⁻¹ * primeWeight n := by
  rw [primeHarmonicPrefix]
  calc
    _ = ∑ n ∈ (Finset.Icc 2 ⌊Real.exp u⌋₊).filter Nat.Prime,
        (n : ℝ)⁻¹ * Real.log (n : ℝ) := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [ArithmeticFunction.vonMangoldt_apply_prime (Finset.mem_filter.mp hn).2]
      ring
    _ = ∑ n ∈ (Finset.Icc 0 ⌊Real.exp u⌋₊).filter Nat.Prime,
        (n : ℝ)⁻¹ * Real.log (n : ℝ) := by
      apply Finset.sum_subset
      · intro n hn
        obtain ⟨hn, hp⟩ := Finset.mem_filter.mp hn
        exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
          ⟨Nat.zero_le n, (Finset.mem_Icc.mp hn).2⟩, hp⟩
      · intro n hn hn'
        obtain ⟨hn, hp⟩ := Finset.mem_filter.mp hn
        exact False.elim (hn' (Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
          ⟨hp.two_le, (Finset.mem_Icc.mp hn).2⟩, hp⟩))
    _ = _ := by
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro n _
      simp only [primeWeight]
      split_ifs <;> simp

/-- The reciprocal-square theta integral is genuinely integrable on each finite interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b6c60e5e99a997fd8bbe50ab8cbc60681faf208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
