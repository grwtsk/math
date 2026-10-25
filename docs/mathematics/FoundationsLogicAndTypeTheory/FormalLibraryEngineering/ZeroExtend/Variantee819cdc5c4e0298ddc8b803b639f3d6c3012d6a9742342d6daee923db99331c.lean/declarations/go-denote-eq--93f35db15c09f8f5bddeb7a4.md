# go_denote_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c85b4ba296b9c5492a07ff2a360c9d30d3c6c4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c585c3c-5ad3-dc29-8b88-db4b7e38620a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a19ea9e-f4f0-f58c-e3c3-a438c9f21457",
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
  "slug": "go-denote-eq--93f35db15c09f8f5bddeb7a4",
  "source": {
    "blob": "4c85b4ba296b9c5492a07ff2a360c9d30d3c6c4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variantee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93f35db15c09f8f5bddeb7a429d378f397435dfcc164251e718880b0b7742b9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variantee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a19ea9e-f4f0-f58c-e3c3-a438c9f21457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_denote_eq (aig : AIG α) (w : Nat) (input : AIG.RefVec aig w) (newWidth curr : Nat)
    (hcurr : curr ≤ newWidth) (s : AIG.RefVec aig curr) (assign : α → Bool) :
    ∀ (idx : Nat) (hidx1 : idx < newWidth),
        curr ≤ idx
          →
        ⟦
          (go aig w input newWidth curr hcurr s).aig,
          (go aig w input newWidth curr hcurr s).vec.get idx hidx1,
          assign
        ⟧
          =
        if hidx : idx < w then
           ⟦aig, input.get idx hidx, assign⟧
        else
           false
    := by
  intro idx hidx1 hidx2
  generalize hgo : go aig w input newWidth curr hcurr s = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    cases Nat.eq_or_lt_of_le hidx2 with
    | inl heq =>
      split at hgo
      next hsplit =>
        rw [heq] at hsplit
        simp only [hsplit, ↓reduceDIte]
        rw [← hgo]
        rw [go_get]; case hidx => omega
        rw [AIG.RefVec.get_push_ref_eq']
        · rw [go_denote_mem_prefix]
          · simp [heq]
          · simp [Ref.hgate]
        · omega
      next hsplit =>
        rw [heq] at hsplit
        simp only [hsplit, ↓reduceDIte]
        rw [← hgo]
        rw [go_get]; case hidx => omega
        rw [AIG.RefVec.get_push_ref_eq']
        · rw [go_denote_mem_prefix]
          · simp only [Ref.cast_eq]
            rw [denote_mkConstCached]
          · simp [Ref.hgate]
        · omega
    | inr =>
      split at hgo
      · rw [← hgo]
        rw [go_denote_eq]
        omega
      · rw [← hgo]
        rw [go_denote_eq]
        omega
  · omega
termination_by newWidth - curr

end blastZeroExtend

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variantee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variantee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c85b4ba296b9c5492a07ff2a360c9d30d3c6c4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
