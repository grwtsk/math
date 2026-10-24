# heightCount_le_low_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1398d0b-8db0-d9c7-600a-40cd061b152c",
  "kind": "theorem",
  "lexical_name": "heightCount_le_low_add",
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
  "slug": "heightcount-le-low-add--fc4e2544246a15f3147b8781",
  "source": {
    "blob": "dd4a7447fa9441839b2e76e0a0023d4e33249228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 146,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc4e2544246a15f3147b8781e5f8301dc75959bc2b222b9d799f96d911efcd49",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1398d0b-8db0-d9c7-600a-40cd061b152c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heightCount_le_low_add (t : ℝ) (ht : 2 ≤ t) :
    (heightCount t : ℝ) ≤ (heightCount 2 : ℝ) +
      countingCoefficient * (t * Real.log t) := by
  let N : ℕ := ⌈t⌉₊
  have hceil : t ≤ (N : ℝ) := Nat.le_ceil t
  have hceil' : (N : ℝ) < t + 1 := Nat.ceil_lt_add_one (by linarith)
  have hN : (N : ℝ) ≤ 2 * t := by linarith
  have hNt : ((N + 2 : ℕ) : ℝ) + 2 ≤ 4 * t := by
    push_cast
    linarith
  have hJ := localCountBudget_le_log_multiple (N + 2) t ht hNt
  have hm : (heightCount t : ℝ) ≤ (heightCount ((N : ℝ) + 2) : ℝ) := by
    exact_mod_cast heightCount_mono (show t ≤ (N : ℝ) + 2 by linarith)
  have hp := mul_le_mul hN hJ (localCountBudget_nonneg (N + 2))
    (show 0 ≤ 2 * t by linarith)
  calc
    _ ≤ (heightCount ((N : ℝ) + 2) : ℝ) := hm
    _ ≤ (heightCount 2 : ℝ) + (N : ℝ) * localCountBudget (N + 2) :=
      heightCount_nat_le_budget N
    _ ≤ (heightCount 2 : ℝ) + (2 * t) *
        ((22 / Real.log (6 / 5 : ℝ)) * Real.log t) := add_le_add le_rfl hp
    _ = _ := by unfold countingCoefficient; ring

/-- Uniform count for EVERY finite high subfamily. The exact low mass cancels;
it is neither bounded numerically nor asserted zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd4a7447fa9441839b2e76e0a0023d4e33249228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
