# fixed_point_of_gt_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:599a262b-4997-3223-726e-8352c6da514d",
  "kind": "theorem",
  "lexical_name": "fixed_point_of_gt_1",
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
  "slug": "fixed-point-of-gt-1--f7892bac1f0337d9c0811194",
  "source": {
    "blob": "5c037a8ec632658f7774ed5cec595710d00994db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 165,
    "path": "GRWTSK/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7892bac1f0337d9c0811194e3ad9acd3ff08e3c2b6b19aeaa74a76c3851be59",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:599a262b-4997-3223-726e-8352c6da514d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_point_of_gt_1 {f : ℚ → ℝ} {x : ℚ} (hx : 1 < x)
    (H1 : ∀ x y, 0 < x → 0 < y → f (x * y) ≤ f x * f y)
    (H2 : ∀ x y, 0 < x → 0 < y → f x + f y ≤ f (x + y)) (H4 : ∀ n : ℕ, 0 < n → (n : ℝ) ≤ f n)
    (H5 : ∀ x : ℚ, 1 < x → (x : ℝ) ≤ f x) {a : ℚ} (ha1 : 1 < a) (hae : f a = a) : f x = x := by
  -- Choose n such that 1 + x < a^n.
  obtain ⟨N, hN⟩ := pow_unbounded_of_one_lt (1 + x) ha1
  have h_big_enough : (1 : ℚ) < a ^ N - x := lt_sub_iff_add_lt.mpr hN
  have h1 :=
    calc
      (x : ℝ) + (a ^ N - x : ℚ) ≤ f x + (a ^ N - x : ℚ) := by gcongr; exact H5 x hx
      _ ≤ f x + f (a ^ N - x) := by gcongr; exact H5 _ h_big_enough
  have hxp : 0 < x := by positivity
  have hNp : 0 < N := by by_contra' H; rw [le_zero_iff.mp H] at hN; linarith
  have h2 :=
    calc
      f x + f (a ^ N - x) ≤ f (x + (a ^ N - x)) := H2 x (a ^ N - x) hxp (by positivity)
      _ = f (a ^ N) := by ring_nf
      _ = a ^ N := (fixed_point_of_pos_nat_pow hNp H1 H4 H5 ha1 hae)
      _ = x + (a ^ N - x) := by ring
  have heq := h1.antisymm (by exact_mod_cast h2)
  linarith [H5 x hx, H5 _ h_big_enough]
#align imo2013_q5.fixed_point_of_gt_1 Imo2013Q5.fixed_point_of_gt_1

end Imo2013Q5

open Imo2013Q5

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c037a8ec632658f7774ed5cec595710d00994db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
