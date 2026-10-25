# eq_empty_or_encard_eq_top_or_encard_sdiff_singleton_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2028a5bbeb5ef5b207a08ccc2c5c375fa215d515",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 367,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42198509-c49c-a676-2df0-8b617cef6e9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71064ee6-84da-fd0a-3ab2-6039f6063d1c",
  "kind": "theorem",
  "lexical_name": "eq_empty_or_encard_eq_top_or_encard_sdiff_singleton_lt",
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
  "slug": "eq-empty-or-encard-eq-top-or-encard-sdiff-singleton-lt--57e574072d21d2ca794111c6",
  "source": {
    "blob": "2028a5bbeb5ef5b207a08ccc2c5c375fa215d515",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 367,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57e574072d21d2ca794111c63332c95620ff241d6167fb60f97d272268380f9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71064ee6-84da-fd0a-3ab2-6039f6063d1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_empty_or_encard_eq_top_or_encard_sdiff_singleton_lt (s : Set α) :
    s = ∅ ∨ s.encard = ⊤ ∨ ∃ a ∈ s, (s \ {a}).encard < s.encard := by
  refine s.eq_empty_or_nonempty.elim Or.inl (Or.inr ∘ fun ⟨a,ha⟩ ↦
    (s.finite_or_infinite.elim (fun hfin ↦ Or.inr ⟨a, ha, ?_⟩) (Or.inl ∘ Infinite.encard_eq)))
  rw [← encard_sdiff_singleton_add_one ha]; nth_rw 1 [← add_zero (encard _)]
  exact ENat.add_lt_add_of_le_of_lt hfin.sdiff.encard_lt_top.ne le_rfl zero_lt_one

@[deprecated (since := "2026-06-03")]
alias eq_empty_or_encard_eq_top_or_encard_diff_singleton_lt :=
  eq_empty_or_encard_eq_top_or_encard_sdiff_singleton_lt

end InsertErase

section SmallSets

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2028a5bbeb5ef5b207a08ccc2c5c375fa215d515` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
