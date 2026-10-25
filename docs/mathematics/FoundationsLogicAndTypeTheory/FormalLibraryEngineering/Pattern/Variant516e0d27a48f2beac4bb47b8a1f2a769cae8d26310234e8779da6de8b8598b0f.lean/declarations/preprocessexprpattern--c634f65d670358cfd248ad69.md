# preprocessExprPattern

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb12297214e89851d5c48888f191439a077486e764501af65b78461b61ca616a",
  "kind": "def",
  "lexical_name": "preprocessExprPattern",
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
  "slug": "preprocessexprpattern--c634f65d670358cfd248ad69",
  "source": {
    "blob": "84d34aaf97dbd8a615cd6aa69750319ace350e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c634f65d670358cfd248ad69e447c325b85c73366167abc761f3f2e753f36f88",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb12297214e89851d5c48888f191439a077486e764501af65b78461b61ca616a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preprocessExprPattern (e : Expr) (levelParams₀ : List Name) (zetaReduceLHSOnly := false) : MetaM (List Name × Expr) := do
  let type ← inferType e
  let levelParams := levelParams₀.mapIdx fun i _ => Name.num uvarPrefix i
  let us := levelParams.map mkLevelParam
  let type := type.instantiateLevelParams levelParams₀ us
  let type ← preprocessType type (zetaReduceLHSOnly := zetaReduceLHSOnly)
  let type ← normalizeLevels type
  return (levelParams, type)

/--
Creates a mask indicating which pattern variables require type checking during matching.

When matching a pattern against a target expression, we must ensure that pattern variable
assignments are type-correct. However, checking types for every variable is expensive.
This function identifies which variables actually need type checking.

**Key insight**: A pattern variable appearing as an argument to a function application
does not need its type checked separately, because the type information is already
encoded in the application structure, and we assume the input is type correct.

**Variables that need type checking**:
- Variables in function position: `f x` where `f` is a pattern variable
- Variables in binder domains or bodies: `∀ x : α, β` or `fun x : α => b`
- Variables appearing alone (not as part of any application)

**Variables that skip type checking**:
- Variables appearing only as arguments to applications: in `f x`, the variable `x`
  does not need checking because the type of `f` constrains the type of `x`

**Examples**:
- `bv0_eq (x : BitVec 0) : x = 0`: pattern is just `x`, must check type to ensure `BitVec 0`
- `forall_true : (∀ _ : α, True) = True`: `α` appears in binder domain, must check
- `Nat.add_zero (x : Nat) : x + 0 = x`: `x` is argument to `HAdd.hAdd`, no check needed

**Note**: This analysis is conservative. It may mark some variables for checking even when
the type information is redundant (already determined by other constraints). This is
harmless—just extra work, not incorrect behavior.

Returns an array of booleans parallel to the pattern's `varTypes`, where `true` indicates
the variable's type must be checked against the matched subterm's type.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d34aaf97dbd8a615cd6aa69750319ace350e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
