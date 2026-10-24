# iUnion_negAt_plusPart_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f9f0541131a9c5fdd24e452b713156eeb5398a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1064,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44cec7b2-c42c-aa1d-a74d-be51a88dffae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:593b65c8-f5c4-5647-05f0-77ea0b474b45",
  "kind": "theorem",
  "lexical_name": "iUnion_negAt_plusPart_union",
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
  "slug": "iunion-negat-pluspart-union--28367ed897d4a9a9cc96dab3",
  "source": {
    "blob": "9f9f0541131a9c5fdd24e452b713156eeb5398a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1085,
    "line": 1064,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28367ed897d4a9a9cc96dab3dca9d520afdb2a8249bbcd3dc931cd3a4132c909",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:593b65c8-f5c4-5647-05f0-77ea0b474b45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1064–1085.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iUnion_negAt_plusPart_union :
    (⋃ s, negAt s '' (plusPart A)) ∪ (A ∩ (⋃ w, {x | x.1 w = 0})) = A := by
  ext x
  rw [Set.mem_union, Set.mem_inter_iff, Set.mem_iUnion, Set.mem_iUnion]
  refine ⟨?_, fun h ↦ ?_⟩
  · rintro (⟨s, ⟨x, ⟨hx, _⟩, rfl⟩⟩ | h)
    · simp_rw +singlePass [hA, negAt_apply_norm_isReal, negAt_apply_snd]
      rwa [← hA]
    · exact h.left
  · obtain hx | hx := exists_or_forall_not (fun w ↦ x.1 w = 0)
    · exact Or.inr ⟨h, hx⟩
    · refine Or.inl ⟨signSet x,
        (mem_negAt_plusPart_of_mem A hA h hx).mpr ⟨fun w hw ↦ ?_, fun w hw ↦ ?_⟩⟩
      · exact lt_of_le_of_ne hw (hx w)
      · exact lt_of_le_of_ne (lt_of_not_ge hw).le (Ne.symm (hx w))

open MeasureTheory

variable [NumberField K]

include hA in
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant130553534a1d1fe09735cb14dd71a69e27e671552b499238b7d686ec878bc266.lean#L1064).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f9f0541131a9c5fdd24e452b713156eeb5398a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
