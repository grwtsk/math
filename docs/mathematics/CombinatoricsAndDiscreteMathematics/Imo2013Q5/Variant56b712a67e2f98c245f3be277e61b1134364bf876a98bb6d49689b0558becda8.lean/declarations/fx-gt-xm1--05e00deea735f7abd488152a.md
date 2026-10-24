# fx_gt_xm1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5351785-0aca-1ffd-5bbe-1e430040362d",
  "kind": "theorem",
  "lexical_name": "fx_gt_xm1",
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
  "slug": "fx-gt-xm1--05e00deea735f7abd488152a",
  "source": {
    "blob": "2b889bda1cf5235223400629f6fcc6f5646c0a51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant56b712a67e2f98c245f3be277e61b1134364bf876a98bb6d49689b0558becda8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05e00deea735f7abd488152a5c697c0dd4ec7f7347bc99ebcbc143537efdeb15",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant56b712a67e2f98c245f3be277e61b1134364bf876a98bb6d49689b0558becda8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5351785-0aca-1ffd-5bbe-1e430040362d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fx_gt_xm1 {f : ℚ → ℝ} {x : ℚ} (hx : 1 ≤ x)
    (H1 : ∀ x y, 0 < x → 0 < y → f (x * y) ≤ f x * f y)
    (H2 : ∀ x y, 0 < x → 0 < y → f x + f y ≤ f (x + y)) (H4 : ∀ n : ℕ, 0 < n → (n : ℝ) ≤ f n) :
    (x - 1 : ℝ) < f x := by
  have hx0 :=
    calc
      (x - 1 : ℝ) < ⌊x⌋₊ := mod_cast Nat.sub_one_lt_floor x
      _ ≤ f ⌊x⌋₊ := H4 _ (Nat.floor_pos.2 hx)
  obtain h_eq | h_lt := (Nat.floor_le <| zero_le_one.trans hx).eq_or_lt
  · rwa [h_eq] at hx0
  calc
    (x - 1 : ℝ) < f ⌊x⌋₊ := hx0
    _ < f (x - ⌊x⌋₊) + f ⌊x⌋₊ := (lt_add_of_pos_left _ (f_pos_of_pos (sub_pos.mpr h_lt) H1 H4))
    _ ≤ f (x - ⌊x⌋₊ + ⌊x⌋₊) := (H2 _ _ (sub_pos.mpr h_lt) (Nat.cast_pos.2 (Nat.floor_pos.2 hx)))
    _ = f x := by ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant56b712a67e2f98c245f3be277e61b1134364bf876a98bb6d49689b0558becda8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant56b712a67e2f98c245f3be277e61b1134364bf876a98bb6d49689b0558becda8.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b889bda1cf5235223400629f6fcc6f5646c0a51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
