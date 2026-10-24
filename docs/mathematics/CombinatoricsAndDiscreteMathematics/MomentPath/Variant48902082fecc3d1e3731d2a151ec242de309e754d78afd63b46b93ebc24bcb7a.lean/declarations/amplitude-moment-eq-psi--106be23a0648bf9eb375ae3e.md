# amplitude_moment_eq_psi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8722a561-8a07-5d1a-1ea2-dae31e20c649",
  "kind": "theorem",
  "lexical_name": "amplitude_moment_eq_psi",
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
  "slug": "amplitude-moment-eq-psi--106be23a0648bf9eb375ae3e",
  "source": {
    "blob": "39bd0fe2ead6f3fcf5172242f35be88807a0dff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 161,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:106be23a0648bf9eb375ae3ef882fe7953e44a0cfd8e7acf5d73ff0ac9efde63",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8722a561-8a07-5d1a-1ea2-dae31e20c649`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem amplitude_moment_eq_psi {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (x : Fin (2 * N + 1)) :
    (∑ a : frame.Atom,
        if frame.index a ≤ x then frame.amplitude a else 0) =
      (conductorThreePsi x : ℂ) := by
  classical
  have hsingle (a : frame.Atom) :
      (∑ n : Fin (2 * N + 1),
          if n ≤ x then
            if frame.index a = n then frame.amplitude a else 0
          else 0) =
        if frame.index a ≤ x then frame.amplitude a else 0 := by
    rw [Finset.sum_eq_single (frame.index a)]
    · simp
    · intro b _ hba
      have hab : frame.index a ≠ b := Ne.symm hba
      simp [hab]
    · simp
  calc
    (∑ a : frame.Atom,
        if frame.index a ≤ x then frame.amplitude a else 0) =
        ∑ a : frame.Atom, ∑ n : Fin (2 * N + 1),
          if n ≤ x then
            if frame.index a = n then frame.amplitude a else 0
          else 0 := by
            apply Finset.sum_congr rfl
            intro a _
            exact (hsingle a).symm
    _ = ∑ n : Fin (2 * N + 1), ∑ a : frame.Atom,
          if n ≤ x then
            if frame.index a = n then frame.amplitude a else 0
          else 0 := Finset.sum_comm
    _ = ∑ n : Fin (2 * N + 1),
          if n ≤ x then
            (∑ a : frame.Atom,
              if frame.index a = n then frame.amplitude a else 0)
          else 0 := by
            apply Finset.sum_congr rfl
            intro n _
            by_cases hn : n ≤ x <;> simp [hn]
    _ = ∑ n : Fin (2 * N + 1),
          if n ≤ x then (twistedVonMangoldtThree n : ℂ) else 0 := by
            apply Finset.sum_congr rfl
            intro n _
            by_cases hn : n ≤ x
            · simp only [hn, if_true]
              exact frame.collapse n
            · simp [hn]
    _ = (conductorThreePsi x : ℂ) := by
      change
        (∑ n : Fin (2 * N + 1),
          if n.val ≤ x.val then
            (twistedVonMangoldtThree n.val : ℂ) else 0) =
          (conductorThreePsi x.val : ℂ)
      rw [Fin.sum_univ_eq_sum_range
        (fun n : ℕ ↦
          if n ≤ x.val then (twistedVonMangoldtThree n : ℂ) else 0)
        (2 * N + 1)]
      rw [← Finset.sum_range_add_sum_Ico
        (f := fun n ↦
          if n ≤ x then (twistedVonMangoldtThree n : ℂ) else 0)
        (show x.val + 1 ≤ 2 * N + 1 by omega)]
      have hmain :
          (∑ n ∈ Finset.range (x.val + 1),
              if n ≤ x then (twistedVonMangoldtThree n : ℂ) else 0) =
            ∑ n ∈ Finset.range (x.val + 1),
              (twistedVonMangoldtThree n : ℂ) := by
        apply Finset.sum_congr rfl
        intro n hn
        simp only [Finset.mem_range] at hn
        have hnle : n ≤ x.val := by omega
        simp [hnle]
      rw [hmain]
      have htail :
          (∑ n ∈ Finset.Ico (x.val + 1) (2 * N + 1),
              if n ≤ x then (twistedVonMangoldtThree n : ℂ) else 0) = 0 := by
        apply Finset.sum_eq_zero
        intro n hn
        simp only [Finset.mem_Ico] at hn
        simp [show ¬n ≤ x by omega]
      rw [htail, add_zero]
      simp [conductorThreePsi]

/-- The bounded readout of the moment state is exactly the twisted Chebyshev
sum at that moment. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39bd0fe2ead6f3fcf5172242f35be88807a0dff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
