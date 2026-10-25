# denote_blastZeroExtend

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
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b3bcfa1-0431-13e3-f9ab-b6f2e2743f6e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:404bed0a-e606-4946-16de-8be5770a7bf8",
  "kind": "theorem",
  "lexical_name": "denote_blastZeroExtend",
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
  "slug": "denote-blastzeroextend--0549c3828c334b2627f3ff0f",
  "source": {
    "blob": "4c85b4ba296b9c5492a07ff2a360c9d30d3c6c4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 143,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variantee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0549c3828c334b2627f3ff0fed5f22df92e3d73f0126f28f7c7571672a34a081",
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

Occurrence: `result:404bed0a-e606-4946-16de-8be5770a7bf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastZeroExtend (aig : AIG α) (target : ExtendTarget aig newWidth)
    (assign : α → Bool) :
    ∀ (idx : Nat) (hidx : idx < newWidth),
        ⟦(blastZeroExtend aig target).aig, (blastZeroExtend aig target).vec.get idx hidx, assign⟧
          =
        if hidx : idx < target.w then
           ⟦aig, target.vec.get idx hidx, assign⟧
        else
           false
    := by
  intro idx hidx
  unfold blastZeroExtend
  apply blastZeroExtend.go_denote_eq
  omega

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variantee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variantee819cdc5c4e0298ddc8b803b639f3d6c3012d6a9742342d6daee923db99331c.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c85b4ba296b9c5492a07ff2a360c9d30d3c6c4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
