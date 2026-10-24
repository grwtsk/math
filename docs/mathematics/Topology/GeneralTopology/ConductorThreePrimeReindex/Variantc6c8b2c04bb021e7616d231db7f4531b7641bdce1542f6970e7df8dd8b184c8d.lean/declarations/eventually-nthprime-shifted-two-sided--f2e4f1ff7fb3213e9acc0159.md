# eventually_nthPrime_shifted_two_sided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90e2f74f-71c0-0760-8790-1d91629b34ef",
  "kind": "theorem",
  "lexical_name": "eventually_nthPrime_shifted_two_sided",
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
  "slug": "eventually-nthprime-shifted-two-sided--f2e4f1ff7fb3213e9acc0159",
  "source": {
    "blob": "db8181eba682ff15d4baf598fbcb3c8815994841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 476,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2e4f1ff7fb3213e9acc015999ad52e83ba2a5654a685130da118a2970240da3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90e2f74f-71c0-0760-8790-1d91629b34ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_nthPrime_shifted_two_sided :
    ∀ᶠ n : ℕ in atTop,
      (n : ℝ) * Real.log n / (Real.log 4 + 1) ≤
          (Nat.nth Nat.Prime (n + 1) : ℝ) ∧
        (Nat.nth Nat.Prime (n + 1) : ℝ) ≤ 80 * (n : ℝ) * Real.log n := by
  filter_upwards [eventually_nthPrime_lower_product, eventually_nthPrime_upper_product]
    with n hlower hupper
  have hApos : (0 : ℝ) < Real.log 4 + 1 := by positivity
  refine ⟨?_, hupper⟩
  have hmono : Nat.nth Nat.Prime n ≤ Nat.nth Nat.Prime (n + 1) :=
    Nat.nth_monotone Nat.infinite_setOf_prime (by omega)
  rw [div_le_iff₀ hApos]
  calc
    (n : ℝ) * Real.log n ≤
        (Real.log 4 + 1) * (Nat.nth Nat.Prime n : ℝ) := hlower
    _ ≤ (Real.log 4 + 1) * (Nat.nth Nat.Prime (n + 1) : ℝ) := by
      gcongr
    _ = (Nat.nth Nat.Prime (n + 1) : ℝ) * (Real.log 4 + 1) := by ring

open Surface.Core.ConductorThreeCritical
open Surface.Core.ConductorThreePrimeReindex

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db8181eba682ff15d4baf598fbcb3c8815994841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
