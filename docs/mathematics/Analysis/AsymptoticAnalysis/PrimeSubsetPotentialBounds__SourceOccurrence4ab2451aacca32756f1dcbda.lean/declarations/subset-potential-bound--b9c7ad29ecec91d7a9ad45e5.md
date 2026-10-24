# subset_potential_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d2fbfbd-006d-2cd8-d48b-1b897c954ffe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/Analysis/Asymptotics/PrimeSubsetPotentialBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b980820-3dff-d826-d64a-a96926d808a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26a9deec-fee3-7f1f-beeb-4c3b8f555777",
  "kind": "theorem",
  "lexical_name": "subset_potential_bound",
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
  "slug": "subset-potential-bound--b9c7ad29ecec91d7a9ad45e5",
  "source": {
    "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 21,
    "path": "GRWTSK/Analysis/Asymptotics/PrimeSubsetPotentialBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9c7ad29ecec91d7a9ad45e5ea392270c9a90d56596b32369e84c7b764956e30",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence4ab2451aacca32756f1dcbda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26a9deec-fee3-7f1f-beeb-4c3b8f555777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_potential_bound (A : ReserveFunctional) (C q η T : ℝ)
    (hAS : ASObligation A C q η) (hT : 0 ≤ T) (P : Finset ℕ)
    (hP : P ⊆ primeInventory T)
    (hsmall : ∀ p ∈ P, (p : ℝ)⁻¹ ≤ η) :
    potential A P T ≤ Real.exp (C*harmonicMass P)*
      (potential A ∅ T+C*harmonicMass P*(1+T)^q) := by
  classical
  have hrec : ∀ P : Finset ℕ, P ⊆ primeInventory T →
      (∀ p ∈ P, (p : ℝ)⁻¹ ≤ η) →
      potential A P T ≤ Real.exp (C*harmonicMass P)*
        (potential A ∅ T+C*harmonicMass P*(1+T)^q) := by
    intro P
    induction P using Finset.induction_on with
    | empty =>
      intro _ _
      simp [harmonicMass, PPNC.harmonicMass]
    | @insert p P hp ih =>
      intro hP hsmall
      have hsub : P ⊆ primeInventory T :=
        fun x hx => hP (Finset.mem_insert_of_mem hx)
      have hsm : ∀ x ∈ P, (x : ℝ)⁻¹ ≤ η :=
        fun x hx => hsmall x (Finset.mem_insert_of_mem hx)
      have hstep := hAS.2.2.2 T P {p} (show AdmissibleBlock P {p} T η from
        { scale_nonneg := hT
          previous_primes := hsub
          block_primes := by
            intro x hx
            have he : x = p := Finset.mem_singleton.mp hx
            subst x
            exact hP (Finset.mem_insert_self p P)
          disjoint := Finset.disjoint_singleton_right.mpr hp
          upper_mass := by
            simpa [harmonicMass, PPNC.harmonicMass] using
              hsmall p (Finset.mem_insert_self p P) })
      have hi := ih hsub hsm
      have hmass : harmonicMass (insert p P) = harmonicMass P+(p:ℝ)⁻¹ := by
        simp only [harmonicMass, PPNC.harmonicMass, Finset.sum_insert hp]
        ring
      have hinsert : P ∪ {p} = insert p P := by ext x; simp
      rw [hinsert] at hstep
      simp only [harmonicMass, PPNC.harmonicMass, Finset.sum_singleton] at hstep
      have htotal : 0 ≤ C*harmonicMass (insert p P) :=
        mul_nonneg hAS.1 (ASClosure.harmonicMass_nonnegative _)
      have hone : 1 ≤ Real.exp (C*harmonicMass (insert p P)) :=
        Real.one_le_exp_iff.mpr htotal
      have hdebit : 0 ≤ C*(p:ℝ)⁻¹*(1+T)^q := by
        have hC := hAS.1
        positivity
      have hpay : C*(p:ℝ)⁻¹*(1+T)^q ≤
          Real.exp (C*harmonicMass (insert p P))*(C*(p:ℝ)⁻¹*(1+T)^q) := by
        exact le_mul_of_one_le_left hdebit hone
      have hexp : Real.exp (C*(p:ℝ)⁻¹)*Real.exp (C*harmonicMass P) =
          Real.exp (C*harmonicMass (insert p P)) := by
        rw [← Real.exp_add, hmass]
        congr 1
        ring
      calc
        potential A (insert p P) T ≤ Real.exp (C*(p:ℝ)⁻¹)*potential A P T+
            C*(p:ℝ)⁻¹*(1+T)^q := hstep
        _ ≤ Real.exp (C*(p:ℝ)⁻¹)*(Real.exp (C*harmonicMass P)*
            (potential A ∅ T+C*harmonicMass P*(1+T)^q))+
            C*(p:ℝ)⁻¹*(1+T)^q :=
          add_le_add (mul_le_mul_of_nonneg_left hi (Real.exp_pos _).le) le_rfl
        _ = Real.exp (C*harmonicMass (insert p P))*
            (potential A ∅ T+C*harmonicMass P*(1+T)^q)+
            C*(p:ℝ)⁻¹*(1+T)^q := by rw [← mul_assoc, hexp]
        _ ≤ Real.exp (C*harmonicMass (insert p P))*
            (potential A ∅ T+C*harmonicMass P*(1+T)^q)+
            Real.exp (C*harmonicMass (insert p P))*(C*(p:ℝ)⁻¹*(1+T)^q) :=
          add_le_add le_rfl hpay
        _ = Real.exp (C*harmonicMass (insert p P))*
            (potential A ∅ T+C*harmonicMass (insert p P)*(1+T)^q) := by
          rw [hmass]
          ring
  exact hrec P hP hsmall

/-- Universal AS supplies one uniform polynomial budget for all eligible
prime subsets, even when a complete inventory controller cannot obey η. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence4ab2451aacca32756f1dcbda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/PrimeSubsetPotentialBounds.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a75c268fe2e095f5faa49f0dbfa6cc5212d4b623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
