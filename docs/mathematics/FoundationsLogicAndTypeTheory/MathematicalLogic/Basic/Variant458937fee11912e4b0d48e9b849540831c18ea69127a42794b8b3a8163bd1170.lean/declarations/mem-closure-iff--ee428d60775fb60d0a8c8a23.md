# mem_closure_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51f43b7ee3ee4812328721cab6dbe0d7bb3b43d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 528,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/458937fee11912e4b0d48e9b849540831c18ea69127a42794b8b3a8163bd1170.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c57e29ec-073e-12a8-aa89-f7eda754b857",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c30725b-3afc-a561-e623-599b36a558c5",
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
  "slug": "mem-closure-iff--ee428d60775fb60d0a8c8a23",
  "source": {
    "blob": "51f43b7ee3ee4812328721cab6dbe0d7bb3b43d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 528,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant458937fee11912e4b0d48e9b849540831c18ea69127a42794b8b3a8163bd1170.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee428d60775fb60d0a8c8a23875c3070fc501daaa745642e20f1dd41bd4f419d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant458937fee11912e4b0d48e9b849540831c18ea69127a42794b8b3a8163bd1170.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c30725b-3afc-a561-e623-599b36a558c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_closure_iff {s : Set R} {x} :
    x ∈ closure s ↔ x ∈ AddSubgroup.closure (Subsemigroup.closure s : Set R) :=
  ⟨fun h => by
    induction h using closure_induction with
    | mem _ hx => exact AddSubgroup.subset_closure (Subsemigroup.subset_closure hx)
    | zero => exact zero_mem _
    | add _ _ _ _ hx hy => exact add_mem hx hy
    | neg x _ hx => exact neg_mem hx
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
    | mem _ hx => induction hx using Subsemigroup.closure_induction with
      | mem _ h => exact subset_closure h
      | mul _ _ _ _ h₁ h₂ => exact mul_mem h₁ h₂
    | zero => exact zero_mem _
    | add _ _ _ _ h₁ h₂ => exact add_mem h₁ h₂
    | neg _ _ h => exact neg_mem h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant458937fee11912e4b0d48e9b849540831c18ea69127a42794b8b3a8163bd1170.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant458937fee11912e4b0d48e9b849540831c18ea69127a42794b8b3a8163bd1170.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51f43b7ee3ee4812328721cab6dbe0d7bb3b43d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
