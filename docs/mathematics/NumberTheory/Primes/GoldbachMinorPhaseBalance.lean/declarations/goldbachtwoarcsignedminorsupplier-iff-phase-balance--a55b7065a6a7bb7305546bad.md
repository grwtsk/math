# goldbachTwoArcSignedMinorSupplier_iff_phase_balance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ca581f1-7f2e-b4fd-0617-7f413c39489f",
  "kind": "theorem",
  "lexical_name": "goldbachTwoArcSignedMinorSupplier_iff_phase_balance",
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
  "slug": "goldbachtwoarcsignedminorsupplier-iff-phase-balance--a55b7065a6a7bb7305546bad",
  "source": {
    "blob": "f6fb20622491a7ff2f1391e8bbd6ca514c7db7bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 145,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a55b7065a6a7bb7305546badef606a59996e307eff2bf12e76a18b66ca65aff6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ca581f1-7f2e-b4fd-0617-7f413c39489f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachTwoArcSignedMinorSupplier_iff_phase_balance (N₀ : ℕ) :
    GoldbachTwoArcSignedMinorSupplier N₀ ↔
      ∀ n, N₀ ≤ 2 * n → 2 < 2 * n →
        goldbachMinorImagPhaseEnergy 2 n ≤
          goldbachMinorRealPhaseEnergy 2 n + (2 * (n : ℝ) + 1) := by
  constructor
  · intro h n hn htwo
    have heven : Even (2 * n) := ⟨n, by omega⟩
    have hs : -(2 * (n : ℝ) + 1) ≤
        (goldbachRationalMinorContribution 2 (2 * n)).re := by
      simpa only [Nat.cast_mul, Nat.cast_ofNat] using h (2 * n) hn htwo heven
    exact (goldbachMinor_lower_iff_phase_balance 2 n (2 * (n : ℝ) + 1)).1 hs
  · intro h N hN htwo heven
    rcases heven with ⟨n, hn⟩
    have heq : N = 2 * n := by omega
    rw [heq] at hN htwo ⊢
    have hm := (goldbachMinor_lower_iff_phase_balance 2 n (2 * (n : ℝ) + 1)).2
      (h n hN htwo)
    simpa only [Nat.cast_mul, Nat.cast_ofNat] using hm

end
end GRWTSK.NumberTheory.Primes.GoldbachMinorPhaseBalance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachMinorPhaseBalance.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6fb20622491a7ff2f1391e8bbd6ca514c7db7bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
