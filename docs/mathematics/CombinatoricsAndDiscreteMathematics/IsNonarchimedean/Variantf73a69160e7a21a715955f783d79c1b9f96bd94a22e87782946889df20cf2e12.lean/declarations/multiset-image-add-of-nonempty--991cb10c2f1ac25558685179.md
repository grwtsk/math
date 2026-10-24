# multiset_image_add_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92ded273-c68b-4916-85ca-8c454a64b7ba",
  "kind": "theorem",
  "lexical_name": "multiset_image_add_of_nonempty",
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
  "slug": "multiset-image-add-of-nonempty--991cb10c2f1ac25558685179",
  "source": {
    "blob": "a38423bf88cc0458caa1481d13303194fd70c77c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variantf73a69160e7a21a715955f783d79c1b9f96bd94a22e87782946889df20cf2e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:991cb10c2f1ac25558685179eb81f2835a297ff77f19fb7674d757b68d33571d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variantf73a69160e7a21a715955f783d79c1b9f96bd94a22e87782946889df20cf2e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92ded273-c68b-4916-85ca-8c454a64b7ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiset_image_add_of_nonempty (hs : s ≠ 0) : ∃ b ∈ s, f (s.map g).sum ≤ f (g b) := by
  induction s using Multiset.induction_on with
  | empty => contradiction
  | cons a s h =>
    simp only [mem_cons, map_cons, sum_cons, exists_eq_or_imp]
    by_cases h1 : s = 0
    · simp [h1]
    · obtain ⟨w, h2, h3⟩ := h h1
      rcases le_max_iff.mp <| hna (g a) (s.map g).sum with h4 | h4
      · exact .inl h4
      · exact .inr ⟨w, h2, le_trans h4 h3⟩

/-- Given a nonarchimedean function `f : α → R` such that `f 0` is a minimum of `f`, a
  function `g : β → α`, and a multiset `s : Multiset β`, we can always find `b : β`, belonging
  to `s` if `s` is nonempty, such that `f (s.map g).sum ≤ f (g b)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variantf73a69160e7a21a715955f783d79c1b9f96bd94a22e87782946889df20cf2e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variantf73a69160e7a21a715955f783d79c1b9f96bd94a22e87782946889df20cf2e12.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a38423bf88cc0458caa1481d13303194fd70c77c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
