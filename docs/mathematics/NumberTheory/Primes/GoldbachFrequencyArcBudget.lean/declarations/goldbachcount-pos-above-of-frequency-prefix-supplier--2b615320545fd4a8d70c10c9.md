# goldbachCount_pos_above_of_frequency_prefix_supplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b467e00-2a76-da69-bcab-1797b092078b",
  "kind": "theorem",
  "lexical_name": "goldbachCount_pos_above_of_frequency_prefix_supplier",
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
  "slug": "goldbachcount-pos-above-of-frequency-prefix-supplier--2b615320545fd4a8d70c10c9",
  "source": {
    "blob": "c3a58baf8a462dd2c4a6fd6be73a4868cb569788",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 167,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b615320545fd4a8d70c10c9548cd921483a8b2fe06fb04b6ad9c856c96e123c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b467e00-2a76-da69-bcab-1797b092078b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCount_pos_above_of_frequency_prefix_supplier
    {N₀ : ℕ} (Q : ℕ → ℕ) (B : ℕ → ℕ → ℕ → ℝ)
    (hp : GoldbachReducedPrefixSupplier N₀ Q B) (L T : ℕ → ℝ)
    (hscale : ∀ N, N₀ ≤ N → 2 < N → Even N → 2 * (Q N) ^ 2 < N + 1)
    (hmodel : ∀ N, N₀ ≤ N → 2 < N → Even N →
      L N ≤ (goldbachProgressionArcModelMajorSum (Q N) N).re)
    (hminor : ∀ N, N₀ ≤ N → 2 < N → Even N →
      ‖goldbachRationalMinorContribution (Q N) N‖ ≤ T N)
    (hmargin : ∀ N, N₀ ≤ N → 2 < N → Even N →
      goldbachFrequencyMajorErrorBudget (Q N) N (B N) + T N < L N) :
    ∀ N, N₀ ≤ N → 2 < N → Even N → 0 < goldbachCount N := by
  intro N hN htwo heven
  exact goldbachCount_pos_of_frequency_prefix_bounds (hscale N hN htwo heven) (B N)
    (hp N hN htwo heven) (L N) (T N)
    (hmodel N hN htwo heven) (hminor N hN htwo heven) (hmargin N hN htwo heven)

end
end GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3a58baf8a462dd2c4a6fd6be73a4868cb569788` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
