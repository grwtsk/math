# forallTelescopeCompatibleAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd67599daefc04db34b8eebfeebd2d4966d8f5ed37ae2bcf9f0088250c8a8d42",
  "kind": "def",
  "lexical_name": "forallTelescopeCompatibleAux",
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
  "slug": "foralltelescopecompatibleaux--e873758c69d514b15e0d7e25",
  "source": {
    "blob": "f926778b1727ed403f4bdf919418a34fe6945ed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e873758c69d514b15e0d7e2572df618c1398f024a3af4ea053b5a235dfceb021",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd67599daefc04db34b8eebfeebd2d4966d8f5ed37ae2bcf9f0088250c8a8d42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forallTelescopeCompatibleAux (k : Array Expr → Expr → Expr → MetaM α) : Nat → Expr → Expr → Array Expr → MetaM α
  | 0, type₁, type₂, xs   => k xs type₁ type₂
  | i+1, type₁, type₂, xs => do
    let type₁ ← whnf type₁
    let type₂ ← whnf type₂
    match type₁, type₂ with
    | .forallE n₁ d₁ b₁ c₁, .forallE n₂ d₂ b₂ c₂ =>
      -- Remark: we use `mkIdent` to ensure macroscopes do not leak into error messages
      unless c₁ == c₂ do
        throwError "Binder annotations for parameter `{mkIdent n₁}` must match"
      /-
      Remark: recall that users may suppress parameter names for instance implicit arguments.
      A fresh name (with macro scopes) is generated in this case. Thus, we allow the names
      to be different in this case. See issue #4310.
      -/
      unless n₁ == n₂ || (c₁.isInstImplicit && n₁.hasMacroScopes && n₂.hasMacroScopes) do
        throwError "Parameter names `{mkIdent n₁}` and `{mkIdent n₂}` differ but were expected to match"
      unless (← isDefEq d₁ d₂) do
        throwError "Parameter `{mkIdent n₁}` {← mkHasTypeButIsExpectedMsg d₁ d₂}"
      withLocalDecl n₁ c₁ d₁ fun x =>
        let type₁ := b₁.instantiate1 x
        let type₂ := b₂.instantiate1 x
        forallTelescopeCompatibleAux k i type₁ type₂ (xs.push x)
    | _, _ => throwError "Internal error: Mismatched number of parameters when checking type compatibility"

/-- Given two forall-expressions `type₁` and `type₂`, ensure the first `numParams` parameters are compatible, and
    then execute `k` with the parameters and remaining types. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f926778b1727ed403f4bdf919418a34fe6945ed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
