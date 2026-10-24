# full_dyadic_bank_square_energy_not_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fafd3769-af27-d71f-3e0c-823b7207bf9f",
  "kind": "theorem",
  "lexical_name": "full_dyadic_bank_square_energy_not_summable",
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
  "slug": "full-dyadic-bank-square-energy-not-summable--4f764a7bd527baaf7cd7f21e",
  "source": {
    "blob": "05b70f0b95aecbc24f404b526f35067be747a466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 59,
    "path": "GRWTSK/Analysis/TriangularBankSquareEnergy/Variant50f21911b4b526e5b8910fcd00d0d4e0b1be9cebe138e580977dc48d6d3351a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f764a7bd527baaf7cd7f21ebf0453d266e3fccdfe9925d5cd9b0a22e6f338c4",
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

Occurrence: `result:fafd3769-af27-d71f-3e0c-823b7207bf9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_dyadic_bank_square_energy_not_summable {a : ℝ} (ha : 0 < a) :
    ¬ Summable (cellEnergy a) := by
  intro hsum
  have hc : 0 < a ^ 2 / 768 := by positivity
  obtain ⟨s, hs⟩ := summable_iff_vanishing_norm.mp hsum (a ^ 2 / 768) hc
  let j : ℕ := s.sup id + 1
  have hd : Disjoint (inventory (dyadicSize j)) s := by
    apply Finset.disjoint_left.mpr
    intro n hn hns
    have hnhi : n ≤ s.sup id := Finset.le_sup (f := id) hns
    have hnlo := (Finset.mem_Icc.mp hn).1
    have hj := dyadic_size_sufficient j
    dsimp only [j] at hj
    nlinarith
  have hsmall := hs (inventory (dyadicSize j)) hd
  rw [Real.norm_eq_abs, abs_of_nonneg
    (Finset.sum_nonneg (fun n _ ↦ bank_cell_energy_nonnegative a n))] at hsmall
  exact (not_lt_of_ge (complete_dyadic_pulse_pays_square_price j ha.le)) hsmall

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TriangularBankSquareEnergy/Variant50f21911b4b526e5b8910fcd00d0d4e0b1be9cebe138e580977dc48d6d3351a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TriangularBankSquareEnergy/Variant50f21911b4b526e5b8910fcd00d0d4e0b1be9cebe138e580977dc48d6d3351a8.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05b70f0b95aecbc24f404b526f35067be747a466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
