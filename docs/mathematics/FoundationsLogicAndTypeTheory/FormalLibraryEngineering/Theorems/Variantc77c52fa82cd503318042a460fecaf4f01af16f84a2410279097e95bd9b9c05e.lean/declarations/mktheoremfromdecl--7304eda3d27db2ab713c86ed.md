# mkTheoremFromDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e35ac5d6d31dfdb752cb6ccbb119306561de2053182b8c78995bbfbc6f5566f0",
  "kind": "def",
  "lexical_name": "mkTheoremFromDecl",
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
  "slug": "mktheoremfromdecl--7304eda3d27db2ab713c86ed",
  "source": {
    "blob": "4c6dd42379a724d24e85f90ddb9bb7fc233de3e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantc77c52fa82cd503318042a460fecaf4f01af16f84a2410279097e95bd9b9c05e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7304eda3d27db2ab713c86edba45db8821ca274f433b50f07b946833e1bf1ca6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantc77c52fa82cd503318042a460fecaf4f01af16f84a2410279097e95bd9b9c05e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e35ac5d6d31dfdb752cb6ccbb119306561de2053182b8c78995bbfbc6f5566f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkTheoremFromDecl (declName : Name) : MetaM Theorem := do
  let (pattern, (rhs, adaptation)) ← mkPatternFromDeclWithKey declName selectEqKey (zetaReduceLHSOnly := true)
  let expr ← wrapProof pattern.varTypes.size (mkConst declName) adaptation
  let perm := isPerm pattern.varTypes.size pattern.pattern rhs
  return { expr, pattern, rhs, perm }

/-- Create a `Theorem` from a proof expression. Handles equalities, `¬`, `↔`, and propositions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantc77c52fa82cd503318042a460fecaf4f01af16f84a2410279097e95bd9b9c05e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantc77c52fa82cd503318042a460fecaf4f01af16f84a2410279097e95bd9b9c05e.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c6dd42379a724d24e85f90ddb9bb7fc233de3e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
