# fixed_point_of_gt_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f55c4decc67bc79af6e5732c83fad0752627a7f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db485d3d-f6df-0aee-c0f2-d63b746b0dd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a67a57f-9779-3d90-5715-4f5f0f013417",
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
  "slug": "fixed-point-of-gt-1--eb8b160131ca1d6aacc68b1f",
  "source": {
    "blob": "f55c4decc67bc79af6e5732c83fad0752627a7f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb8b160131ca1d6aacc68b1f108954888ec6dbb36b7380ed7985c83d4fa6a8f9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a67a57f-9779-3d90-5715-4f5f0f013417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–163.

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
  have hNp : 0 < N := by by_contra! H; rw [Nat.le_zero.mp H] at hN; linarith
  have h2 :=
    calc
      f x + f (a ^ N - x) ≤ f (x + (a ^ N - x)) := H2 x (a ^ N - x) hxp (by positivity)
      _ = f (a ^ N) := by ring_nf
      _ = a ^ N := fixed_point_of_pos_nat_pow hNp H1 H4 H5 ha1 hae
      _ = x + (a ^ N - x) := by ring
  have heq := h1.antisymm (mod_cast h2)
  linarith [H5 x hx, H5 _ h_big_enough]

end Imo2013Q5

open Imo2013Q5

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2013Q5/Variant7a3f124ab151ba7b72a234636a013efbac67d39e5137c76879e1a77f40f34801.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f55c4decc67bc79af6e5732c83fad0752627a7f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
