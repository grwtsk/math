# isCoboundedUnder_ge_mul_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d654d77f-26a0-4350-36b7-f4fe3b3c8306",
  "kind": "lemma",
  "lexical_name": "isCoboundedUnder_ge_mul_of_nonneg",
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
  "slug": "iscoboundedunder-ge-mul-of-nonneg--96e857d1b4073749cd823bac",
  "source": {
    "blob": "8035e7527d4598572e2c50940cc0b700f58f8da3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 421,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7b82b73521f9e39fbde3a3d89eeec9a6ce8a4d31a455005074008d5ab38555d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96e857d1b4073749cd823bac5da18fa77581d0f6c42d5f887b2fdede661e731b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7b82b73521f9e39fbde3a3d89eeec9a6ce8a4d31a455005074008d5ab38555d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d654d77f-26a0-4350-36b7-f4fe3b3c8306`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCoboundedUnder_ge_mul_of_nonneg [LinearOrder α] [Mul α] [Zero α] [PosMulMono α]
    [MulPosMono α] {f : Filter ι} [f.NeBot] {u v : ι → α} (h₁ : 0 ≤ᶠ[f] u)
    (h₂ : IsBoundedUnder (fun x1 x2 ↦ x1 ≤ x2) f u)
    (h₃ : 0 ≤ᶠ[f] v)
    (h₄ : IsCoboundedUnder (fun x1 x2 ↦ x1 ≥ x2) f v) :
    IsCoboundedUnder (fun x1 x2 ↦ x1 ≥ x2) f (u * v) := by
  obtain ⟨U, hU⟩ := h₂.eventually_le
  obtain ⟨V, hV⟩ := h₄.frequently_le
  refine IsCoboundedUnder.of_frequently_le (a := U * V) ?_
  apply (hV.and_eventually (hU.and (h₁.and h₃))).mono
  intro x ⟨x_V, x_U, u_0, v_0⟩
  exact (mul_le_mul_of_nonneg_right x_U v_0).trans (mul_le_mul_of_nonneg_left x_V (u_0.trans x_U))

end mul

section Nonempty
variable [Preorder α] [Nonempty α] {f : Filter β} {u : β → α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7b82b73521f9e39fbde3a3d89eeec9a6ce8a4d31a455005074008d5ab38555d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7b82b73521f9e39fbde3a3d89eeec9a6ce8a4d31a455005074008d5ab38555d6.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8035e7527d4598572e2c50940cc0b700f58f8da3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
