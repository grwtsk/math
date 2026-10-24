# isSuccLimitRecOn_of_isMin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b7880702370b918231a2ea0bda048017e1df197",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 695,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11617b0a2d99c104fb4312d686714f7fb01836402fe9c519b8fd1bc9bafa3135.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f270e05c-91e8-c4a3-039a-951307c3dc9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:604005ff-9377-5f21-5f80-102b1b82e90e",
  "kind": "theorem",
  "lexical_name": "isSuccLimitRecOn_of_isMin",
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
  "slug": "issucclimitrecon-of-ismin--90493f164487f3310cb3aeb7",
  "source": {
    "blob": "0b7880702370b918231a2ea0bda048017e1df197",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 722,
    "line": 695,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant11617b0a2d99c104fb4312d686714f7fb01836402fe9c519b8fd1bc9bafa3135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90493f164487f3310cb3aeb7ef6973ee379c93d33666999b8f3af9dd7c308e6c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant11617b0a2d99c104fb4312d686714f7fb01836402fe9c519b8fd1bc9bafa3135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:604005ff-9377-5f21-5f80-102b1b82e90e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 695–722.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSuccLimitRecOn_of_isMin (hb : IsMin b) :
    isSuccLimitRecOn b isMin succ isSuccLimit = isMin b hb := by
  rw [isSuccLimitRecOn, isSuccPrelimitRecOn_of_isSuccPrelimit _ _ hb.isSuccPrelimit,
    dite_eq_left hb]

end LinearOrder

end isSuccLimitRecOn

end Order

open Order

namespace SuccOrder

section prelimitRecOn

section PartialOrder

variable [PartialOrder α] [SuccOrder α] [WellFoundedLT α]
  (succ : ∀ a, ¬IsMax a → motive a → motive (Order.succ a))
  (isSuccPrelimit : ∀ a, IsSuccPrelimit a → (∀ b < a, motive b) → motive a)

variable (b) in
open scoped Classical in
/-- Recursion principle on a well-founded partial `SuccOrder`. -/
@[to_dual (attr := elab_as_elim)
/-- Recursion principle on a well-founded partial `PredOrder`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant11617b0a2d99c104fb4312d686714f7fb01836402fe9c519b8fd1bc9bafa3135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant11617b0a2d99c104fb4312d686714f7fb01836402fe9c519b8fd1bc9bafa3135.lean#L695).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b7880702370b918231a2ea0bda048017e1df197` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
