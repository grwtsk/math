# isBoundedUnder_le_mul_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15eeccb6a74d070379100da1c1e6a6495daac900",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7612a3743f96379ab16577c154486e9ea0e7ad1efbd81e1c2e65f95aa7665646.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6dbec167-e13c-5dd1-4de9-003bb7a4df4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c57a3b72-3db7-8940-28db-54ec71aa0154",
  "kind": "lemma",
  "lexical_name": "isBoundedUnder_le_mul_of_nonneg",
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
  "slug": "isboundedunder-le-mul-of-nonneg--fa767d5e5aa1cf51e3fed350",
  "source": {
    "blob": "15eeccb6a74d070379100da1c1e6a6495daac900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 399,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7612a3743f96379ab16577c154486e9ea0e7ad1efbd81e1c2e65f95aa7665646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa767d5e5aa1cf51e3fed350cecb471861d888a3eae5dd92e322f6644055f961",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7612a3743f96379ab16577c154486e9ea0e7ad1efbd81e1c2e65f95aa7665646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c57a3b72-3db7-8940-28db-54ec71aa0154`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBoundedUnder_le_mul_of_nonneg [Preorder α] [Mul α] [Zero α] [PosMulMono α]
    [MulPosMono α] {f : Filter ι} {u v : ι → α} (h₁ : ∃ᶠ x in f, 0 ≤ u x)
    (h₂ : IsBoundedUnder (fun x1 x2 ↦ x1 ≤ x2) f u) (h₃ : 0 ≤ᶠ[f] v)
    (h₄ : IsBoundedUnder (fun x1 x2 ↦ x1 ≤ x2) f v) :
    IsBoundedUnder (fun x1 x2 ↦ x1 ≤ x2) f (u * v) := by
  obtain ⟨U, hU⟩ := h₂.eventually_le
  obtain ⟨V, hV⟩ := h₄.eventually_le
  refine isBoundedUnder_of_eventually_le (a := U * V) ?_
  filter_upwards [hU, hV, h₃] with x x_U x_V v_0
  have U_0 : 0 ≤ U := by
    obtain ⟨y, y_0, y_U⟩ := (h₁.and_eventually hU).exists
    exact y_0.trans y_U
  exact (mul_le_mul_of_nonneg_right x_U v_0).trans (mul_le_mul_of_nonneg_left x_V U_0)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7612a3743f96379ab16577c154486e9ea0e7ad1efbd81e1c2e65f95aa7665646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7612a3743f96379ab16577c154486e9ea0e7ad1efbd81e1c2e65f95aa7665646.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15eeccb6a74d070379100da1c1e6a6495daac900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
