# imo2011_q3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a35f38d789211fc056717334f020dbb845f964e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f92b59cad14e41381abf6b863db3d18ce1afd97702d0a782d6801c5e774446f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bd6cadc-e3ae-5381-1669-81bd0a8cd114",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10110072-ac59-7e46-7d4b-20703c161eea",
  "kind": "theorem",
  "lexical_name": "imo2011_q3",
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
  "slug": "imo2011-q3--78220c8cedbf3c94bdaba99b",
  "source": {
    "blob": "7a35f38d789211fc056717334f020dbb845f964e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2011Q3/Variant7f92b59cad14e41381abf6b863db3d18ce1afd97702d0a782d6801c5e774446f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78220c8cedbf3c94bdaba99b9aa0eda2b527a3ce79bedcd496b60ce6e8b26de7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2011Q3/Variant7f92b59cad14e41381abf6b863db3d18ce1afd97702d0a782d6801c5e774446f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10110072-ac59-7e46-7d4b-20703c161eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imo2011_q3 (f : ℝ → ℝ) (hf : ∀ x y, f (x + y) ≤ y * f x + f (f x)) : ∀ x ≤ 0, f x = 0 := by
  -- reparameterize
  have hxt : ∀ x t, f t ≤ t * f x - x * f x + f (f x) := fun x t =>
    calc
      f t = f (x + (t - x)) := by rw [add_eq_of_eq_sub' rfl]
      _ ≤ (t - x) * f x + f (f x) := hf x (t - x)
      _ = t * f x - x * f x + f (f x) := by rw [sub_mul]
  have h_ab_combined : ∀ a b, a * f a + b * f b ≤ 2 * f a * f b := fun a b => by
    linarith [hxt b (f a), hxt a (f b)]
  have h_f_nonneg_of_pos : ∀ a < 0, 0 ≤ f a := fun a han =>
    suffices a * f a ≤ 0 from nonneg_of_mul_nonpos_right this han
    add_le_iff_nonpos_left.mp (h_ab_combined a (2 * f a))
  have h_f_nonpos : ∀ x, f x ≤ 0 := fun x => by
    by_contra h_suppose_not
    -- If we choose a small enough argument for f, then we get a contradiction.
    let s := (x * f x - f (f x)) / f x
    have hm : min 0 s - 1 < s := (sub_one_lt _).trans_le (min_le_right 0 s)
    have hml : min 0 s - 1 < 0 := (sub_one_lt _).trans_le (min_le_left 0 s)
    suffices f (min 0 s - 1) < 0 from not_le.mpr this (h_f_nonneg_of_pos (min 0 s - 1) hml)
    have hp : 0 < f x := not_le.mp h_suppose_not
    calc
      f (min 0 s - 1) ≤ (min 0 s - 1) * f x - x * f x + f (f x) := hxt x (min 0 s - 1)
      _ < s * f x - x * f x + f (f x) := by linarith [(mul_lt_mul_right hp).mpr hm]
      _ = 0 := by rw [(eq_div_iff hp.ne.symm).mp rfl]; linarith
  have h_fx_zero_of_neg : ∀ x < 0, f x = 0 := fun x hxz =>
    (h_f_nonpos x).antisymm (h_f_nonneg_of_pos x hxz)
  intro x hx
  obtain (h_x_neg : x < 0) | (rfl : x = 0) := hx.lt_or_eq
  · exact h_fx_zero_of_neg _ h_x_neg
  · suffices 0 ≤ f 0 from le_antisymm (h_f_nonpos 0) this
    have hno : f (-1) = 0 := h_fx_zero_of_neg (-1) neg_one_lt_zero
    have hp := hxt (-1) (-1)
    rw [hno] at hp
    linarith
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2011Q3/Variant7f92b59cad14e41381abf6b863db3d18ce1afd97702d0a782d6801c5e774446f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo2011Q3/Variant7f92b59cad14e41381abf6b863db3d18ce1afd97702d0a782d6801c5e774446f.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a35f38d789211fc056717334f020dbb845f964e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
