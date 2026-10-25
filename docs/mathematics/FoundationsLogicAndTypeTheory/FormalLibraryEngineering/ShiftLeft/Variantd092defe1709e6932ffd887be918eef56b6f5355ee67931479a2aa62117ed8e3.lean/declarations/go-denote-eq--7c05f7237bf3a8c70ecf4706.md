# go_denote_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ced59a84dff910f40954ae7f0ec5599296530cfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce9764cf-b32c-12bc-6c39-46330f812a4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a9f8677-9a04-9718-b0b0-a9bf2ef69b9b",
  "kind": "theorem",
  "lexical_name": "go_denote_eq",
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
  "slug": "go-denote-eq--7c05f7237bf3a8c70ecf4706",
  "source": {
    "blob": "ced59a84dff910f40954ae7f0ec5599296530cfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c05f7237bf3a8c70ecf4706573491132a169b0b86fbc359fd592d0ce3ce0437",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a9f8677-9a04-9718-b0b0-a9bf2ef69b9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_denote_eq (aig : AIG α) (distance : Nat) (input : AIG.RefVec aig w)
    (assign : α → Bool) (curr : Nat) (hcurr : curr ≤ w) (s : AIG.RefVec aig curr) :
    ∀ (idx : Nat) (hidx1 : idx < w),
        curr ≤ idx
          →
        ⟦
          (go aig input distance curr hcurr s).aig,
          (go aig input distance curr hcurr s).vec.get idx hidx1,
          assign
        ⟧
          =
        if hidx : idx < distance then
          false
        else
          ⟦aig, input.get (idx - distance) (by omega), assign⟧
        := by
  intro idx hidx1 hidx2
  generalize hgo : go aig input distance curr hcurr s = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    cases Nat.eq_or_lt_of_le hidx2 with
    | inl heq =>
      split at hgo
      · split
        · rw [← hgo]
          rw [go_get]; case hidx => omega
          rw [AIG.RefVec.get_push_ref_eq']
          · rw [go_denote_mem_prefix]
            · simp only [Ref.cast_eq]
              rw [denote_mkConstCached]
            · simp [Ref.hgate]
          · rw [heq]
        · omega
      · split
        · omega
        · rw [← hgo]
          rw [go_get]; case hidx => omega
          rw [AIG.RefVec.get_push_ref_eq']
          · rw [go_denote_mem_prefix]
            · simp [heq]
            · simp [Ref.hgate]
          · rw [heq]
    | inr =>
      split at hgo
      · split
        next hidx =>
          rw [← hgo]
          rw [go_denote_eq]
          · simp [hidx]
          · omega
        next hidx =>
          rw [← hgo]
          rw [go_denote_eq]
          · simp [hidx]
          · omega
      · split
        · omega
        next hidx =>
          rw [← hgo]
          rw [go_denote_eq]
          · simp [hidx]
          · omega
  · omega
termination_by w - curr

end blastShiftLeftConst

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShiftLeft/Variantd092defe1709e6932ffd887be918eef56b6f5355ee67931479a2aa62117ed8e3.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced59a84dff910f40954ae7f0ec5599296530cfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
