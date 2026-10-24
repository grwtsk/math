# isBigOWith_mul_iff_isBigOWith_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e19025e2919c8cc17a7b6dfca656e4bf7a015b1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 718,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f0ef9a4-ce2a-39c6-ea0c-5c7805c283ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0489050-0dfd-3982-2fb7-acf79139833e",
  "kind": "lemma",
  "lexical_name": "isBigOWith_mul_iff_isBigOWith_div",
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
  "slug": "isbigowith-mul-iff-isbigowith-div--8e6e5051a0b2b219a367af86",
  "source": {
    "blob": "e19025e2919c8cc17a7b6dfca656e4bf7a015b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 718,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variant4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e6e5051a0b2b219a367af866e4ca93627b0850cbb290417a148b0d92782f321",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Lemmas/Variant4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0489050-0dfd-3982-2fb7-acf79139833e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBigOWith_mul_iff_isBigOWith_div {f g h : α → 𝕜} {c : ℝ} (hf : ∀ᶠ x in l, f x ≠ 0) :
    IsBigOWith c l (fun x ↦ f x * g x) h ↔ IsBigOWith c l g (fun x ↦ h x / f x) := by
  rw [isBigOWith_iff, isBigOWith_iff]
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩ <;>
  · refine h.congr <| Eventually.mp hf <| Eventually.of_forall fun x hx ↦ ?_
    rw [norm_mul, norm_div, ← mul_div_assoc, le_div_iff₀' (norm_pos_iff.mpr hx)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Lemmas/Variant4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Lemmas/Variant4c3a384229557b00e5ccb25ca62faf12ee80b1900699383f7c70cc398b04ea4d.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e19025e2919c8cc17a7b6dfca656e4bf7a015b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
