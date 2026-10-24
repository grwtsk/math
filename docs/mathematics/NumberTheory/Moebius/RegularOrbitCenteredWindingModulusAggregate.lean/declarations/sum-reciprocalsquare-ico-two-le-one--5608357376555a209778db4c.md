# sum_reciprocalSquare_Ico_two_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d09cbeb-0602-625f-4efe-850c9c8b31d9",
  "kind": "theorem",
  "lexical_name": "sum_reciprocalSquare_Ico_two_le_one",
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
  "slug": "sum-reciprocalsquare-ico-two-le-one--5608357376555a209778db4c",
  "source": {
    "blob": "40fe5172d37244ee49172c471d497b1d45261d64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 72,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5608357376555a209778db4c4b1aaafaf0a5b133969bb12ac4ad38e86fcd140c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d09cbeb-0602-625f-4efe-850c9c8b31d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_reciprocalSquare_Ico_two_le_one
    (b : ℕ) :
    (∑ d ∈ Finset.Ico 2 b, (((d : ℝ) ^ 2)⁻¹)) ≤ 1 := by
  by_cases hb : b ≤ 2
  · have hempty : Finset.Ico 2 b = ∅ := by
      ext d
      simp
      omega
    simp [hempty]
  · have h2b : 2 ≤ b := by omega
    calc
      (∑ d ∈ Finset.Ico 2 b, (((d : ℝ) ^ 2)⁻¹)) ≤
          ∑ d ∈ Finset.Ico 2 b,
            ((((d - 1 : ℕ) : ℝ))⁻¹ - (d : ℝ)⁻¹) := by
        apply Finset.sum_le_sum
        intro d hd
        exact reciprocalSquare_le_endpointDrop
          (Finset.mem_Ico.mp hd).1
      _ = 1 - (((b - 1 : ℕ) : ℝ))⁻¹ := by
        rw [Finset.sum_Ico_eq_sum_range]
        have htel :=
          finiteWeightDropTelescope
            (fun t : ℕ => (((t + 1 : ℕ) : ℝ))⁻¹)
            (b - 2)
        have hshift : (1 : ℝ) + ((b - 2 : ℕ) : ℝ) = ((b - 1 : ℕ) : ℝ) := by
          rw [Nat.cast_sub h2b, Nat.cast_sub (by omega)]
          push_cast
          ring
        simpa [hshift, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm,
          Nat.add_sub_of_le h2b] using htel
      _ ≤ 1 := by
        have hnonneg :
            0 ≤ (((b - 1 : ℕ) : ℝ))⁻¹ := by positivity
        linarith

/-- Every finite reciprocal-square initial segment beginning at one has mass
at most two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fe5172d37244ee49172c471d497b1d45261d64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
