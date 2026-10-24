# unfoldCases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1967f63398b6bc7128a0ddd586a1d579af5251acdaaf4119976ddbf0ac8ad90c",
  "kind": "def",
  "lexical_name": "unfoldCases",
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
  "slug": "unfoldcases--3d46ad73d0f15217fe987815",
  "source": {
    "blob": "0fb313ef81e297f57d79e978b499a9f3a7b66706",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d46ad73d0f15217fe9878159d519d871155ade0e546c2e71144589c514c8111",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1967f63398b6bc7128a0ddd586a1d579af5251acdaaf4119976ddbf0ac8ad90c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def unfoldCases (g : MVarId) (h : FVarId)
    (userNamePre : Name := .anonymous) (counter := 0) : MetaM (List MVarId) := do
  let gs ← g.cases h
  try
    let #[g₁, g₂] := gs | throwError "unexpected number of cases"
    g₁.mvarId.setUserName (.str userNamePre s!"{counter}")
    let gs ← unfoldCases g₂.mvarId g₂.fields[2]!.fvarId! userNamePre (counter+1)
    return g₁.mvarId :: gs
  catch _ => return []

/-- Implementation of the `fin_cases` tactic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FinCases/Variantb0c1d456a20b86862b5ece70d24c65ccbe650adaf077c131da15f0a4b7da6f56.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fb313ef81e297f57d79e978b499a9f3a7b66706` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
