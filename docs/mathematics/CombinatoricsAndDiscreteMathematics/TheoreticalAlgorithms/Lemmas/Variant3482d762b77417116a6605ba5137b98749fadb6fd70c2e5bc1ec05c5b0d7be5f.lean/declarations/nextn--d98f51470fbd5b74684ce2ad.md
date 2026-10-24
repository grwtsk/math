# nextn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71f3d5f8c7e7076e8fd91eafc6d18096fd71780e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 925,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/3482d762b77417116a6605ba5137b98749fadb6fd70c2e5bc1ec05c5b0d7be5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d21efbf-612b-e614-02df-273592e47192",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f926d5a7-7405-8cc9-f711-fce74773b3f5",
  "kind": "theorem",
  "lexical_name": "nextn",
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
  "slug": "nextn--d98f51470fbd5b74684ce2ad",
  "source": {
    "blob": "71f3d5f8c7e7076e8fd91eafc6d18096fd71780e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 936,
    "line": 925,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant3482d762b77417116a6605ba5137b98749fadb6fd70c2e5bc1ec05c5b0d7be5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d98f51470fbd5b74684ce2ade279febc7dd8879332eb7b326b39185a1ba18654",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant3482d762b77417116a6605ba5137b98749fadb6fd70c2e5bc1ec05c5b0d7be5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f926d5a7-7405-8cc9-f711-fce74773b3f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 925–936.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nextn : ∀ {s}, ValidFor l (m₁ ++ m₂) r s →
    ∀ n, s.nextn n ⟨utf8Len m₁⟩ = ⟨utf8Len m₁ + utf8Len (m₂.take n)⟩
  | _, _, 0 => by simp [Substring.Raw.nextn]
  | s, h, n+1 => by
    simp only [Substring.Raw.nextn]
    match m₂ with
    | [] => simp at h; simp [h.next_stop, h.nextn_stop]
    | c::m₂ =>
      rw [h.next]
      have := @nextn l (m₁ ++ [c]) m₂ r s (by simp [h]) n
      simp at this; rw [this]; simp [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant3482d762b77417116a6605ba5137b98749fadb6fd70c2e5bc1ec05c5b0d7be5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant3482d762b77417116a6605ba5137b98749fadb6fd70c2e5bc1ec05c5b0d7be5f.lean#L925).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71f3d5f8c7e7076e8fd91eafc6d18096fd71780e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
