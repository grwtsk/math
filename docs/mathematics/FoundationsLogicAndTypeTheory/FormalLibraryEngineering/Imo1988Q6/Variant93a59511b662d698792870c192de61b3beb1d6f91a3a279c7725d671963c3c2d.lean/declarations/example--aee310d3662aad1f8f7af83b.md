# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e9b4174f51b43710967664088e50e0b254e6b188ab8f3ac91c5a1f398298933",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--aee310d3662aad1f8f7af83b",
  "source": {
    "blob": "07b5b8eea519d9ba2648014b36b76a3bcdf6e9ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1988Q6/Variant93a59511b662d698792870c192de61b3beb1d6f91a3a279c7725d671963c3c2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aee310d3662aad1f8f7af83bbf1ee0eb9948d56576ee4bd826c8fb8339f83e4d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1988Q6/Variant93a59511b662d698792870c192de61b3beb1d6f91a3a279c7725d671963c3c2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e9b4174f51b43710967664088e50e0b254e6b188ab8f3ac91c5a1f398298933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {a b : ℕ} (h : a * b ∣ a ^ 2 + b ^ 2 + 1) : 3 * a * b = a ^ 2 + b ^ 2 + 1 := by
  rcases h with ⟨k, hk⟩
  suffices k = 3 by simp_all; ring
  simp only [sq] at hk
  apply constant_descent_vieta_jumping a b (H := fun a b => a * a + b * b + 1 = a * b * k)
      hk (fun x => k * x) (fun x => x * x + 1) fun x _ => x ≤ 1 <;>
    clear hk a b
  · -- We will now show that the fibers of the solution set are described by a quadratic equation.
    intro x y
    rw [← Int.coe_nat_inj', ← sub_eq_zero]
    apply eq_iff_eq_cancel_right.2
    simp; ring
  · -- Show that the solution set is symmetric in a and b.
    intro x y; ring_nf -- Porting note: Originally, `cc` solved the entire goal
  · -- Show that the claim is true if b = 0.
    simp
  · -- Show that the claim is true if a = b.
    intro x hx
    have x_sq_dvd : x * x ∣ x * x * k := dvd_mul_right (x * x) k
    rw [← hx] at x_sq_dvd
    obtain ⟨y, hy⟩ : x * x ∣ 1 := by simpa only [Nat.dvd_add_self_left, add_assoc] using x_sq_dvd
    obtain ⟨rfl, rfl⟩ : x = 1 ∧ y = 1 := by simpa [mul_eq_one] using hy.symm
    simpa using hx.symm
  · -- Show the descent step.
    intro x y _ hx h_base _ z _ _ hV₀
    constructor
    · have zy_pos : z * y ≥ 0 := by rw [hV₀]; exact_mod_cast Nat.zero_le _
      apply nonneg_of_mul_nonneg_left zy_pos
      linarith
    · contrapose! hV₀ with x_lt_z
      apply ne_of_gt
      push_neg at h_base
      calc
        z * y > x * y := by apply mul_lt_mul_of_pos_right <;> linarith
        _ ≥ x * (x + 1) := by apply mul_le_mul <;> linarith
        _ > x * x + 1 := by
          rw [mul_add, mul_one]
          apply add_lt_add_left
          assumption_mod_cast
  · -- Show the base case.
    intro x y h h_base
    obtain rfl | rfl : x = 0 ∨ x = 1 := by rwa [Nat.le_add_one_iff, le_zero_iff] at h_base
    · simp at h
    · rw [mul_one, one_mul, add_right_comm] at h
      have y_dvd : y ∣ y * k := dvd_mul_right y k
      rw [← h, Nat.dvd_add_left (dvd_mul_left y y)] at y_dvd
      obtain rfl | rfl := (Nat.dvd_prime Nat.prime_two).mp y_dvd <;> apply mul_left_cancel₀
      exacts [one_ne_zero, h.symm, two_ne_zero, h.symm]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1988Q6/Variant93a59511b662d698792870c192de61b3beb1d6f91a3a279c7725d671963c3c2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1988Q6/Variant93a59511b662d698792870c192de61b3beb1d6f91a3a279c7725d671963c3c2d.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07b5b8eea519d9ba2648014b36b76a3bcdf6e9ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
