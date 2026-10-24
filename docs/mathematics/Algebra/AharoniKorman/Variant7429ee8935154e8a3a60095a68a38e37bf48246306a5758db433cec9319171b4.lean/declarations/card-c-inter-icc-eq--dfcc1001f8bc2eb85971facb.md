# card_C_inter_Icc_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7bb1a65-0b8e-0e97-495c-d23316084d38",
  "kind": "theorem",
  "lexical_name": "card_C_inter_Icc_eq",
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
  "slug": "card-c-inter-icc-eq--dfcc1001f8bc2eb85971facb",
  "source": {
    "blob": "ede695c4c5c2bb0254a5568e0a360f44a0358566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 683,
    "line": 657,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfcc1001f8bc2eb85971facb9a280e248561d6a7a28e19fc6d8b72672776c767",
  "verification": {
    "reference": "docs/verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7bb1a65-0b8e-0e97-495c-d23316084d38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–683.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_C_inter_Icc_eq (f : SpinalMap C) {n : ℕ} {xl yl xh yh : ℕ}
    (hC : IsChain (· ≤ ·) C)
    (hx : xl ≤ xh) (hy : yl ≤ yh)
    (hlo : h(xl, yl, n) ∈ C) (hhi : h(xh, yh, n) ∈ C) :
    #{x ∈ (Icc (xl, yl) (xh, yh)).image (embed n) | x ∈ C} = xh + yh + 1 - (xl + yl) := by
  set int : Finset Hollom := (Icc (xl, yl) (xh, yh)).image (embed n)
  set I : Finset Hollom := {x ∈ int | x ∈ C}
  have int_eq : int = Set.Icc h(xl, yl, n) h(xh, yh, n) := by
    simp only [coe_image, coe_Icc, int, embed_image_Icc]
  have hI : IsChain (· ≤ ·) I := hC.mono (by simp [Set.subset_def, I])
  have hIn : ↑I ⊆ level n := by simp +contextual [Set.subset_def, I, int, embed_apply]
  have : Set.MapsTo line int (Icc (xl + yl) (xh + yh)) := by
    rw [int_eq, coe_Icc]
    exact line_mapsTo rfl
  replace this : Set.MapsTo line I (Icc (xl + yl) (xh + yh)) := this.mono_left (filter_subset _ _)
  refine le_antisymm ?_ (C_inter_Icc_large f hC hx hy hlo hhi)
  rw [← Nat.card_Icc]
  exact card_le_card_of_injOn _ this (line_injOn _ hI hIn)

open Finset in
/--
The important helper lemma to prove `apply_eq_of_line_eq`. That lemma says that given `(xl, yl, n)`
and `(xh, yh, n)` in a chain `C`, and two points `(a, b, n)` and `(c, d, n)` between them, if
`a + b = c + d` then a spinal map `f : SpinalMap C` sends them to the same place.
Here we show the special case where the two points are `(x + 1, y, n)` and `(x, y + 1, n)`, i.e.
they are beside each other.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede695c4c5c2bb0254a5568e0a360f44a0358566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
