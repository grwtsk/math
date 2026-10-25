# atMostOneFixedPointEquivSum_derangements

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9de59d34577ff94349700e4d08685f5ea73dcd8d83247982a39e2ca440e87ec3",
  "kind": "def",
  "lexical_name": "atMostOneFixedPointEquivSum_derangements",
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
  "slug": "atmostonefixedpointequivsum-derangements--6ffe7316817cffa4c6e4257a",
  "source": {
    "blob": "dd7abea1754c4e6ea469c0e7832e7b9092459e27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ffe7316817cffa4c6e4257ad08436f0f1b3fda4b28b876417776dd33693f56c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9de59d34577ff94349700e4d08685f5ea73dcd8d83247982a39e2ca440e87ec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def atMostOneFixedPointEquivSum_derangements [DecidableEq α] (a : α) :
    { f : Perm α // fixedPoints f ⊆ {a} } ≃ (derangements ({a}ᶜ : Set α)) ⊕ (derangements α) :=
  calc
    { f : Perm α // fixedPoints f ⊆ {a} } ≃
        { f : { f : Perm α // fixedPoints f ⊆ {a} } // a ∈ fixedPoints f } ⊕
          { f : { f : Perm α // fixedPoints f ⊆ {a} } // a ∉ fixedPoints f } :=
      (Equiv.sumCompl _).symm
    _ ≃ { f : Perm α // fixedPoints f ⊆ {a} ∧ a ∈ fixedPoints f } ⊕
          { f : Perm α // fixedPoints f ⊆ {a} ∧ a ∉ fixedPoints f } := by
      refine Equiv.sumCongr ?_ ?_
      · exact subtypeSubtypeEquivSubtypeInter
          (fun x : Perm α => fixedPoints x ⊆ {a})
          (a ∈ fixedPoints ·)
      · exact subtypeSubtypeEquivSubtypeInter
          (fun x : Perm α => fixedPoints x ⊆ {a})
          (a ∉ fixedPoints ·)
    _ ≃ { f : Perm α // fixedPoints f = {a} } ⊕ { f : Perm α // fixedPoints f = ∅ } := by
      refine Equiv.sumCongr (subtypeEquivRight fun f => ?_) (subtypeEquivRight fun f => ?_)
      · rw [Set.eq_singleton_iff_unique_mem, and_comm]
        rfl
      · rw [Set.eq_empty_iff_forall_notMem]
        exact ⟨fun h x hx => h.2 (h.1 hx ▸ hx), fun h => ⟨fun x hx => (h _ hx).elim, h _⟩⟩
    _ ≃ derangements ({a}ᶜ : Set α) ⊕ derangements α := by
      refine
        Equiv.sumCongr ((derangements.subtypeEquiv _).trans <|
            subtypeEquivRight fun x => ?_).symm
          (subtypeEquivRight fun f => mem_derangements_iff_fixedPoints_eq_empty.symm)
      rw [eq_comm, Set.ext_iff]
      simp_rw [Set.mem_compl_iff, Classical.not_not]

namespace Equiv

variable [DecidableEq α]

/-- The set of permutations `f` such that the preimage of `(a, f)` under
`Equiv.Perm.decomposeOption` is a derangement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1c19e7e1d79425625eebcf73a801a635074c355c363312b8dd07b8b78f1d25b1.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd7abea1754c4e6ea469c0e7832e7b9092459e27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
