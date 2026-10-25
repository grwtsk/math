# isCongrDefaultProofTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:526e33e7987601b9b0bc4b7c80ef12faed70760c3d5d5f5dcbd0994680a5ed24",
  "kind": "def",
  "lexical_name": "isCongrDefaultProofTarget",
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
  "slug": "iscongrdefaultprooftarget--3ad8ffab9e498b9a98d79c01",
  "source": {
    "blob": "4a17193eb3517bce6e0b8e464a0b81098e6a11b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant5d5d431505d4f1bc5e19695aa6b7a2b381562ac50fdd285708ea9c37d650dd9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ad8ffab9e498b9a98d79c01f40199f5fab97e64823f888bdb323d94cb3872e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant5d5d431505d4f1bc5e19695aa6b7a2b381562ac50fdd285708ea9c37d650dd9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:526e33e7987601b9b0bc4b7c80ef12faed70760c3d5d5f5dcbd0994680a5ed24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def isCongrDefaultProofTarget (lhs rhs : Expr) (f g : Expr) (numArgs : Nat) : GoalM Bool := do
  unless isSameExpr f g do return false
  let info := (← getFunInfo f).paramInfo
  let rec loop (lhs rhs : Expr) (i : Nat) : GoalM Bool := do
    if lhs.isApp then
      let a₁ := lhs.appArg!
      let a₂ := rhs.appArg!
      let i  := i - 1
      unless isSameExpr a₁ a₂ do
        if h : i < info.size then
          if info[i].hasFwdDeps then
            -- Cannot use `congrArg` because there are forward dependencies
            return false
        else
          return false -- Don't have information about argument
      loop lhs.appFn! rhs.appFn! i
    else
      return true
  loop lhs rhs numArgs

mutual
  /--
  Given `lhs` and `rhs` proof terms of the form `nestedProof p hp` and `nestedProof q hq`,
  constructs a congruence proof for `nestedProof p hp ≍ nestedProof q hq`.
  `p` and `q` are in the same equivalence class.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant5d5d431505d4f1bc5e19695aa6b7a2b381562ac50fdd285708ea9c37d650dd9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant5d5d431505d4f1bc5e19695aa6b7a2b381562ac50fdd285708ea9c37d650dd9f.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a17193eb3517bce6e0b8e464a0b81098e6a11b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
