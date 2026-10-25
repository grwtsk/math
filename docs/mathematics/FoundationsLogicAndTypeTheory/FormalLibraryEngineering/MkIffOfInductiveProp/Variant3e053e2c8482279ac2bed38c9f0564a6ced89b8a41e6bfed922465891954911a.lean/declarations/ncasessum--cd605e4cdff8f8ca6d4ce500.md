# nCasesSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e52fa45e1bc299b2d15aba9688b30002a6abf0f49b5847ba8ff2b16ef01f2d6",
  "kind": "def",
  "lexical_name": "nCasesSum",
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
  "slug": "ncasessum--cd605e4cdff8f8ca6d4ce500",
  "source": {
    "blob": "29d6a8a6ab72285803b21b0ae32a857ccee460fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3e053e2c8482279ac2bed38c9f0564a6ced89b8a41e6bfed922465891954911a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd605e4cdff8f8ca6d4ce5008c26c3a4661d352b5e454ce6a86a1dbe73ed2179",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3e053e2c8482279ac2bed38c9f0564a6ced89b8a41e6bfed922465891954911a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e52fa45e1bc299b2d15aba9688b30002a6abf0f49b5847ba8ff2b16ef01f2d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nCasesSum (n : Nat) (mvar : MVarId) (h : FVarId) : MetaM (List (FVarId × MVarId)) :=
match n with
| 0 => pure [(h, mvar)]
| n' + 1 => do
  let #[sg1, sg2] ← mvar.cases h | throwError "expected two case subgoals"
  let #[Expr.fvar fvar1] ← pure sg1.fields | throwError "expected fvar"
  let #[Expr.fvar fvar2] ← pure sg2.fields | throwError "expected fvar"
  let rest ← nCasesSum n' sg2.mvarId fvar2
  pure ((fvar1, sg1.mvarId)::rest)

/-- Calls `cases` on `h` (assumed to be a binary product) `n` times, and returns
the resulting subgoal and the new hypotheses.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3e053e2c8482279ac2bed38c9f0564a6ced89b8a41e6bfed922465891954911a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3e053e2c8482279ac2bed38c9f0564a6ced89b8a41e6bfed922465891954911a.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d6a8a6ab72285803b21b0ae32a857ccee460fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
