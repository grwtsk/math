# discrim_le_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8fe7c43-a8b0-4897-9d57-65f851dde712",
  "kind": "theorem",
  "lexical_name": "discrim_le_zero",
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
  "slug": "discrim-le-zero--4a9038c47e710c0c60a302ee",
  "source": {
    "blob": "68e9c94b5f1dabb8d55e20bc9c075213debe675c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a9038c47e710c0c60a302ee3afb510d597241e5e61379f4328d2cc120e1b4a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8fe7c43-a8b0-4897-9d57-65f851dde712`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrim_le_zero (h : ∀ x : K, 0 ≤ a * x * x + b * x + c) : discrim a b c ≤ 0 := by
  rw [discrim, sq]
  obtain ha | rfl | ha : a < 0 ∨ a = 0 ∨ 0 < a := lt_trichotomy a 0
  -- if a < 0
  · have : Tendsto (fun x => (a * x + b) * x + c) atTop atBot :=
      tendsto_atBot_add_const_right _ c
        ((tendsto_atBot_add_const_right _ b (tendsto_id.neg_const_mul_atTop ha)).atBot_mul_atTop
          tendsto_id)
    rcases(this.eventually (eventually_lt_atBot 0)).exists with ⟨x, hx⟩
    exact False.elim ((h x).not_lt <| by rwa [← add_mul])
  -- if a = 0
  · rcases eq_or_ne b 0 with (rfl | hb)
    · simp
    · have := h ((-c - 1) / b)
      rw [mul_div_cancel' _ hb] at this
      linarith
  -- if a > 0
  · have ha' : 0 ≤ 4 * a := mul_nonneg zero_le_four ha.le
    convert neg_nonpos.2 (mul_nonneg ha' (h (-b / (2 * a)))) using 1
    field_simp
    ring
#align discrim_le_zero discrim_le_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68e9c94b5f1dabb8d55e20bc9c075213debe675c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
