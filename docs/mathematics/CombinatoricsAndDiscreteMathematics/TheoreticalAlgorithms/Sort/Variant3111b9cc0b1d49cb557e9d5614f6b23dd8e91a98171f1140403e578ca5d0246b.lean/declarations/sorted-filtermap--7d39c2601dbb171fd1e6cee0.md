# Sorted.filterMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8dd0430-9579-8a20-723b-14601389bb01",
  "kind": "lemma",
  "lexical_name": "Sorted.filterMap",
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
  "slug": "sorted-filtermap--7d39c2601dbb171fd1e6cee0",
  "source": {
    "blob": "a2849801dfccaa8fd66fa2985fee5e2cbc3d53ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 241,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d39c2601dbb171fd1e6cee093aa97d8e7371730a4dc584753356cc429d85f83",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8dd0430-9579-8a20-723b-14601389bb01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Sorted.filterMap {α β : Type*} {p : α → Option β} {l : List α}
    {r : α → α → Prop} {r' : β → β → Prop} (hl : l.Sorted r)
    (hp : ∀ (a b : α) (c d : β), p a = some c → p b = some d → r a b → r' c d) :
    (l.filterMap p).Sorted r' := by
  induction l with
  | nil => simp
  | cons a l ih =>
    rw [List.filterMap_cons]
    cases ha : p a with
    | none =>
      exact ih (List.sorted_cons.mp hl).right
    | some b =>
      rw [List.sorted_cons]
      refine ⟨fun x hx ↦ ?_, ih (List.sorted_cons.mp hl).right⟩
      obtain ⟨u, hu, hu'⟩ := List.mem_filterMap.mp hx
      exact hp a u b x ha hu' <| (List.sorted_cons.mp hl).left u hu

end List

open List

namespace RelEmbedding

variable {α β : Type*} {ra : α → α → Prop} {rb : β → β → Prop}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant3111b9cc0b1d49cb557e9d5614f6b23dd8e91a98171f1140403e578ca5d0246b.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2849801dfccaa8fd66fa2985fee5e2cbc3d53ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
