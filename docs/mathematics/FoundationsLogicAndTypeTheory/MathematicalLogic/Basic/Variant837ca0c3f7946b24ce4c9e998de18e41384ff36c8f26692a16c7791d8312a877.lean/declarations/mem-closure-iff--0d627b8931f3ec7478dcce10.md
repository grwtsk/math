# mem_closure_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0117ed1c96374a40383c8d1c40ee90b11ef0fb20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 564,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce304522-a261-dbe0-3bea-67bb072c5838",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1503975-212a-d9f4-f291-1327dddb98f1",
  "kind": "theorem",
  "lexical_name": "mem_closure_iff",
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
  "slug": "mem-closure-iff--0d627b8931f3ec7478dcce10",
  "source": {
    "blob": "0117ed1c96374a40383c8d1c40ee90b11ef0fb20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 564,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d627b8931f3ec7478dcce104495f7cb593ff114b694dedc8619a607a16a23cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1503975-212a-d9f4-f291-1327dddb98f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_closure_iff {s : Set R} {x} :
    x ∈ closure s ↔ x ∈ AddSubgroup.closure (Submonoid.closure s : Set R) :=
  ⟨fun h => by
    induction h using closure_induction with
    | mem _ hx => exact AddSubgroup.subset_closure (Submonoid.subset_closure hx)
    | zero => exact zero_mem _
    | one => exact AddSubgroup.subset_closure (one_mem _)
    | add _ _ _ _ hx hy => exact add_mem hx hy
    | neg _ _ hx => exact neg_mem hx
    | mul _ _ _hx _hy hx hy =>
      clear _hx _hy
      induction hx, hy using AddSubgroup.closure_induction₂ with
      | mem _ _ hx hy => exact AddSubgroup.subset_closure (mul_mem hx hy)
      | zero_left => simp
      | zero_right => simp
      | add_left _ _ _ _ _ _ h₁ h₂ => simpa [add_mul] using add_mem h₁ h₂
      | add_right _ _ _ _ _ _ h₁ h₂ => simpa [mul_add] using add_mem h₁ h₂
      | neg_left _ _ _ _ h => simpa [neg_mul] using neg_mem h
      | neg_right _ _ _ _ h => simpa [mul_neg] using neg_mem h,
    fun h => by
      induction h using AddSubgroup.closure_induction with
      | mem x hx =>
        induction hx using Submonoid.closure_induction with
        | mem _ h => exact subset_closure h
        | one => exact one_mem _
        | mul _ _ _ _ h₁ h₂ => exact mul_mem h₁ h₂
      | zero => exact zero_mem _
      | add _ _ _ _ h₁ h₂ => exact add_mem h₁ h₂
      | neg _ _ h => exact neg_mem h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant837ca0c3f7946b24ce4c9e998de18e41384ff36c8f26692a16c7791d8312a877.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0117ed1c96374a40383c8d1c40ee90b11ef0fb20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
