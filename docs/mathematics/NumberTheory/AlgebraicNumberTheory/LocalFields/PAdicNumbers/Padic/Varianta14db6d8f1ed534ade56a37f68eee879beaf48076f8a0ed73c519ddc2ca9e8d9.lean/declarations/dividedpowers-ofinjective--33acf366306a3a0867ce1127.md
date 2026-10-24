# DividedPowers.ofInjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04dbf18a91d3b48f8dd5689037d44c605c5be2909f31bbcc44fba73f32ec69b5",
  "kind": "def",
  "lexical_name": "DividedPowers.ofInjective",
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
  "slug": "dividedpowers-ofinjective--33acf366306a3a0867ce1127",
  "source": {
    "blob": "cc50ed4e259707b881d6274e158ea756dffe484b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33acf366306a3a0867ce1127284fa151d6ae3a91bc3cad544d51c7f9ec4a1320",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04dbf18a91d3b48f8dd5689037d44c605c5be2909f31bbcc44fba73f32ec69b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def DividedPowers.ofInjective (f : A →+* B) (hf : Injective f)
    (hJ : DividedPowers J) (hIJ : I.map f = J)
    (hmem : ∀ (n : ℕ) {x : A} (_ : x ∈ I), ∃ (y : A) (_ : n ≠ 0 → y ∈ I), f y = hJ.dpow n (f x)) :
    DividedPowers I where
  dpow n x := open scoped Classical in if hx : x ∈ I then Exists.choose (hmem n hx) else 0
  dpow_null hx := by simp [dite_eq_right hx]
  dpow_zero {x} hx := by
    simp only [dite_eq_left hx, ← hf.eq_iff, (Exists.choose_spec (hmem 0 hx)).2, map_one]
    rw [hJ.dpow_zero (hIJ ▸ Ideal.mem_map_of_mem f hx)]
  dpow_one hx := by
    simpa only [dite_eq_left hx, ← hf.eq_iff, (Exists.choose_spec (_ : ∃ a, ∃ _, f a = _)).2]
      using hJ.dpow_one (hIJ ▸ Ideal.mem_map_of_mem f hx)
  dpow_mem {n x} hn hx := by
    simpa only [dite_eq_left hx] using (Exists.choose_spec (hmem n hx)).1 hn
  dpow_add {n x y} hx hy := by
    have hxy : x + y ∈ I := Ideal.add_mem _ hx hy
    simpa only [dite_eq_left hxy, dite_eq_left hx, dite_eq_left hy, ← hf.eq_iff, map_sum, map_mul,
      (Exists.choose_spec (_ : ∃ a, ∃ _, f a = _)).2, map_add]
      using hJ.dpow_add (hIJ ▸ I.mem_map_of_mem f hx) (hIJ ▸ I.mem_map_of_mem f hy)
  dpow_mul {n a x} hx := by
    have hax : a * x ∈ I := Ideal.mul_mem_left _ _ hx
    simpa only [(Exists.choose_spec (_ : ∃ a, ∃ _, f a = _)).2, dite_eq_left hax, dite_eq_left hx,
    ← hf.eq_iff, map_mul, map_pow] using hJ.dpow_mul (hIJ ▸ I.mem_map_of_mem f hx)
  mul_dpow hx := by simpa only [dite_eq_left hx, ← hf.eq_iff, (Exists.choose_spec (hmem _ hx)).2,
    map_mul, map_natCast] using hJ.mul_dpow (hIJ ▸ I.mem_map_of_mem f hx)
  dpow_comp {n m x} hm hx := by
    simp only [dite_eq_left hx, ← hf.eq_iff, map_mul, map_natCast]
    -- the condition for the other `dite_eq_left` is a bit messy so we use `rw` to
    -- spin it off into a separate branch
    rw [dite_eq_left]
    · simp only [(Exists.choose_spec (_ : ∃ a, ∃ _, f a = _)).2]
      exact hJ.dpow_comp hm (hIJ ▸ I.mem_map_of_mem f hx)
    · rw [dite_eq_left hx]
      exact (Exists.choose_spec (hmem m hx)).1 hm

end Injective

namespace PadicInt

section Padic

variable (p : ℕ) [hp : Fact p.Prime]

set_option backward.privateInPublic true in
/-- The family `ℕ → ℚ_[p] → ℚ_[p]` given by `dpow n x = x ^ n / n!`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc50ed4e259707b881d6274e158ea756dffe484b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
