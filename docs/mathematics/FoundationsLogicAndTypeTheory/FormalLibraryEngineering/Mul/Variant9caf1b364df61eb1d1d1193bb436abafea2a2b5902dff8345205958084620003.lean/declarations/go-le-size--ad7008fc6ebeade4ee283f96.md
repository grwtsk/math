# go_le_size

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3a19bca7d06a0e796e66510fd8be2b84c884f3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e63c7f88-0b44-447b-a5b5-32596cee4347",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:333bba78-bdb6-c51e-7081-86201aefc97f",
  "kind": "theorem",
  "lexical_name": "go_le_size",
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
  "slug": "go-le-size--ad7008fc6ebeade4ee283f96",
  "source": {
    "blob": "b3a19bca7d06a0e796e66510fd8be2b84c884f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mul/Variant9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad7008fc6ebeade4ee283f966871aa92b2dc0c19ca7e9aa86db2486133802a68",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mul/Variant9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:333bba78-bdb6-c51e-7081-86201aefc97f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_le_size {w : Nat} (aig : AIG α) (curr : Nat) (acc : AIG.RefVec aig w)
    (lhs rhs : AIG.RefVec aig w) :
    aig.decls.size ≤ (go aig lhs rhs curr acc).aig.decls.size := by
  unfold go
  split
  · split
    · apply go_le_size
    · dsimp only
      refine Nat.le_trans ?_ (by apply go_le_size)
      apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := AIG.RefVec.ite)
      apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := blastAdd)
      apply AIG.LawfulVecOperator.le_size (f := blastShiftLeftConst)
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mul/Variant9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mul/Variant9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3a19bca7d06a0e796e66510fd8be2b84c884f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
