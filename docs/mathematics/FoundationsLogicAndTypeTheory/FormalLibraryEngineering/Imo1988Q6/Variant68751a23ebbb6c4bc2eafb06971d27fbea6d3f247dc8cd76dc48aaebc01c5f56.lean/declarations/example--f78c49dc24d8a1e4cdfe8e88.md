# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d1711545125134a1d41ac2139011bf9544ec8f472c6b5cf624e5620ac5516c1",
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
  "slug": "example--f78c49dc24d8a1e4cdfe8e88",
  "source": {
    "blob": "1fa8138faca5d6a59b5eff85ec78bdf8fb3eac21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 253,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1988Q6/Variant68751a23ebbb6c4bc2eafb06971d27fbea6d3f247dc8cd76dc48aaebc01c5f56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f78c49dc24d8a1e4cdfe8e88717792c5d15e6818cc3b214535b28e5abf9064cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1988Q6/Variant68751a23ebbb6c4bc2eafb06971d27fbea6d3f247dc8cd76dc48aaebc01c5f56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d1711545125134a1d41ac2139011bf9544ec8f472c6b5cf624e5620ac5516c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–299.

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
    rw [← Int.natCast_inj, ← sub_eq_zero]
    apply eq_iff_eq_cancel_right.2
    simp; ring
  · -- Show that the solution set is symmetric in a and b.
    intro x y; ring_nf
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
    · have zy_pos : z * y ≥ 0 := by rw [hV₀]; exact mod_cast Nat.zero_le _
      apply nonneg_of_mul_nonneg_left zy_pos
      lia
    · contrapose! hV₀ with x_lt_z
      apply ne_of_gt
      push Not at h_base
      calc
        z * y > x * y := by gcongr; lia
        _ ≥ x * (x + 1) := by apply mul_le_mul <;> lia
        _ > x * x + 1 := by
          rw [mul_add]
          lia
  · -- Show the base case.
    intro x y h h_base
    obtain rfl | rfl : x = 0 ∨ x = 1 := by rwa [Nat.le_add_one_iff, Nat.le_zero] at h_base
    · simp at h
    · rw [mul_one, one_mul, add_right_comm] at h
      have y_dvd : y ∣ y * k := dvd_mul_right y k
      rw [← h, Nat.dvd_add_left (dvd_mul_left y y)] at y_dvd
      obtain rfl | rfl := (Nat.dvd_prime Nat.prime_two).mp y_dvd <;> apply mul_left_cancel₀
      exacts [one_ne_zero, h.symm, two_ne_zero, h.symm]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1988Q6/Variant68751a23ebbb6c4bc2eafb06971d27fbea6d3f247dc8cd76dc48aaebc01c5f56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1988Q6/Variant68751a23ebbb6c4bc2eafb06971d27fbea6d3f247dc8cd76dc48aaebc01c5f56.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fa8138faca5d6a59b5eff85ec78bdf8fb3eac21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
