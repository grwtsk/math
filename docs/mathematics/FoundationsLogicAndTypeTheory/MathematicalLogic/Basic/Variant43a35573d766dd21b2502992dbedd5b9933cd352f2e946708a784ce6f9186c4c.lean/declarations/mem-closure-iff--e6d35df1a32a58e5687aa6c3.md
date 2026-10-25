# mem_closure_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb0a9f89-99a3-a10f-2b98-d168ace698a8",
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
  "slug": "mem-closure-iff--e6d35df1a32a58e5687aa6c3",
  "source": {
    "blob": "5f10509ed42af562e683c452046cfd6fe74f0f0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 572,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43a35573d766dd21b2502992dbedd5b9933cd352f2e946708a784ce6f9186c4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6d35df1a32a58e5687aa6c370312e44aaae203b9be55843050f6f11945c2d01",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43a35573d766dd21b2502992dbedd5b9933cd352f2e946708a784ce6f9186c4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb0a9f89-99a3-a10f-2b98-d168ace698a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–601.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43a35573d766dd21b2502992dbedd5b9933cd352f2e946708a784ce6f9186c4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43a35573d766dd21b2502992dbedd5b9933cd352f2e946708a784ce6f9186c4c.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f10509ed42af562e683c452046cfd6fe74f0f0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
