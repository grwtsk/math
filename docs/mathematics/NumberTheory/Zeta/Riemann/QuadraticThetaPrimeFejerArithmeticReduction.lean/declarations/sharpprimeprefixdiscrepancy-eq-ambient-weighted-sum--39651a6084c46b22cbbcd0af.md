# sharpPrimePrefixDiscrepancy_eq_ambient_weighted_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce90bd6b-a81b-97ee-76dd-98ce4cd49c37",
  "kind": "theorem",
  "lexical_name": "sharpPrimePrefixDiscrepancy_eq_ambient_weighted_sum",
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
  "slug": "sharpprimeprefixdiscrepancy-eq-ambient-weighted-sum--39651a6084c46b22cbbcd0af",
  "source": {
    "blob": "47f16e128dccf02f1fca4bd21a19ebdabe22d2c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39651a6084c46b22cbbcd0af751013f00c6eac326a7be9c8df5926dbb53dfe10",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce90bd6b-a81b-97ee-76dd-98ce4cd49c37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharpPrimePrefixDiscrepancy_eq_ambient_weighted_sum
    {X m : ℕ}
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    sharpPrimePrefixDiscrepancy X m =
      ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
        sharpPrefixWeight X m n *
          primeDiscrepancyAtom n := by
  rw [sharpPrimePrefixDiscrepancy_eq_atom_sum hm0]
  unfold sharpPrefixWeight
  rw [← Finset.sum_subset
    (show Finset.Ioc (2 * X) m ⊆
      Finset.Ioc (2 * X) (4 * X) by
        intro n hn
        have hni := Finset.mem_Ioc.mp hn
        exact Finset.mem_Ioc.mpr ⟨hni.1, hni.2.trans hm1⟩)]
  · apply Finset.sum_congr rfl
    intro n hn
    simp [hn]
  · intro n hnAmbient hnNotSharp
    simp [hnNotSharp]

/-- The corrected non-aliasing Fejer operator is exactly the same arithmetic
atom summed against the smoothed prefix weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47f16e128dccf02f1fca4bd21a19ebdabe22d2c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
