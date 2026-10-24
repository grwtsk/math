# higherPrimePowerWindowMass_le_mangoldt_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42bdff9f-3172-8578-d1d2-69446328df90",
  "kind": "theorem",
  "lexical_name": "higherPrimePowerWindowMass_le_mangoldt_div",
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
  "slug": "higherprimepowerwindowmass-le-mangoldt-div--7a4e17f6a97be81f33588027",
  "source": {
    "blob": "fd67f27f123229da4af05b526af8ad5c39554669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a4e17f6a97be81f335880272e83325ecab6db30ff7a2b827e6eaae9060eec67",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42bdff9f-3172-8578-d1d2-69446328df90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPrimePowerWindowMass_le_mangoldt_div
    {X : ℕ} (hX : 0 < X) :
    higherPrimePowerWindowMass X ≤
      higherPrimePowerMangoldtWindowMass X / (X : ℝ) := by
  unfold higherPrimePowerWindowMass higherPrimePowerMangoldtWindowMass
  calc
    (∑ n ∈ (window X).filter (fun n => ¬ n.Prime), coefficient n)
        ≤ ∑ n ∈ (window X).filter (fun n => ¬ n.Prime),
            mangoldt n / (X : ℝ) := by
      apply Finset.sum_le_sum
      intro n hn
      have hmem := (Finset.mem_filter.mp hn).1
      unfold coefficient
      apply div_le_div_of_nonneg_left
        (by
          unfold mangoldt
          exact ArithmeticFunction.vonMangoldt_nonneg)
        (by exact_mod_cast hX)
      exact_mod_cast Nat.le_of_lt (window_lower hmem)
    _ = higherPrimePowerMangoldtWindowMass X / (X : ℝ) := by
      rw [← Finset.sum_div]
      rfl

/-- The non-prime mass in one octave is at most the complete non-prime mass up
to 2X, which is psi(2X)-theta(2X). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd67f27f123229da4af05b526af8ad5c39554669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
