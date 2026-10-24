# complete_dyadic_pulse_pays_square_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aad96eb2-47b3-3fe1-cb21-202ad1395f91",
  "kind": "theorem",
  "lexical_name": "complete_dyadic_pulse_pays_square_price",
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
  "slug": "complete-dyadic-pulse-pays-square-price--1ab116be8eccae0ede9a4868",
  "source": {
    "blob": "05b70f0b95aecbc24f404b526f35067be747a466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 34,
    "path": "GRWTSK/Analysis/TriangularBankSquareEnergy/Variant50f21911b4b526e5b8910fcd00d0d4e0b1be9cebe138e580977dc48d6d3351a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ab116be8eccae0ede9a4868ff10ac3796f35687cd942721b752bbdea78c8b87",
  "verification": {
    "reference": "docs/verification/Analysis/TriangularBankSquareEnergy/Variant50f21911b4b526e5b8910fcd00d0d4e0b1be9cebe138e580977dc48d6d3351a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aad96eb2-47b3-3fe1-cb21-202ad1395f91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_dyadic_pulse_pays_square_price (j : ℕ) {a : ℝ} (ha : 0 ≤ a) :
    a ^ 2 / 768 ≤ ∑ n ∈ inventory (dyadicSize j), cellEnergy a n := by
  have hM : 2 ≤ dyadicSize j := by have := dyadic_size_sufficient j; omega
  have hw (n : ℕ) (hn : n ∈ inventory (dyadicSize j)) : 0 < cellClock n (n + 1 : ℕ) := by
    have h := (Finset.mem_Icc.mp hn).1
    exact cellClock_pos (by nlinarith)
  have hh := WeightedHodge.finite_refinement_mono (inventory (dyadicSize j))
    (fun n ↦ cellClock n (n + 1 : ℕ))
    (fun n ↦ storage (dyadicSize j) a n * cellClock n (n + 1 : ℕ)) hw
    (complete_pulse_width_positive hM).ne'
  have heq : (∑ n ∈ inventory (dyadicSize j),
      (storage (dyadicSize j) a n * cellClock n (n + 1 : ℕ)) ^ 2 /
        cellClock n (n + 1 : ℕ)) =
      ∑ n ∈ inventory (dyadicSize j), cellEnergy a n := by
    apply Finset.sum_congr rfl
    intro n hn
    obtain ⟨hlo, hhi⟩ := Finset.mem_Icc.mp hn
    have hn1 : 1 ≤ n := by nlinarith
    rw [cellEnergy, if_pos hn1,
      bank_retains_complete_pulse dyadicSize dyadic_size_sufficient dyadic_intervals_separated
        j n hlo hhi a]
    field_simp [(hw n hn).ne']
  rw [heq] at hh
  exact (complete_pulse_square_price hM ha).trans hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TriangularBankSquareEnergy/Variant50f21911b4b526e5b8910fcd00d0d4e0b1be9cebe138e580977dc48d6d3351a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TriangularBankSquareEnergy/Variant50f21911b4b526e5b8910fcd00d0d4e0b1be9cebe138e580977dc48d6d3351a8.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05b70f0b95aecbc24f404b526f35067be747a466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
