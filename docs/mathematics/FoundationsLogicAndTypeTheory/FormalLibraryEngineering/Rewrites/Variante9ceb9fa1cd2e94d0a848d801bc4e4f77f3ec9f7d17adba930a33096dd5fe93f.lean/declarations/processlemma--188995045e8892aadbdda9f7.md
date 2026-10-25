# processLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4d76912fcc234ce33a2b29c56243888244c61ffda3a7b8d152e7dd19409044b",
  "kind": "def",
  "lexical_name": "processLemma",
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
  "slug": "processlemma--188995045e8892aadbdda9f7",
  "source": {
    "blob": "2d01121663a15d934f63549b635443d801ac1d13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variante9ceb9fa1cd2e94d0a848d801bc4e4f77f3ec9f7d17adba930a33096dd5fe93f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:188995045e8892aadbdda9f7704b33fe5305acd9c045b9d4d1b93c47d129c8c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variante9ceb9fa1cd2e94d0a848d801bc4e4f77f3ec9f7d17adba930a33096dd5fe93f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4d76912fcc234ce33a2b29c56243888244c61ffda3a7b8d152e7dd19409044b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def processLemma (name : Name) (constInfo : ConstantInfo) :
    MetaM (Array (Array (DiscrTree.Key true) × (Name × Bool × Nat))) := do
  if constInfo.isUnsafe then return #[]
  if ← name.isBlackListed then return #[]
  -- We now remove some injectivity lemmas which are not useful to rewrite by.
  if name matches .str _ "injEq" then return #[]
  if name matches .str _ "sizeOf_spec" then return #[]
  match name with
  | .str _ n => if n.endsWith "_inj" ∨ n.endsWith "_inj'" then return #[]
  | _ => pure ()
  withNewMCtxDepth do withReducible do
    let (_, _, type) ← forallMetaTelescopeReducing constInfo.type
    match type.getAppFnArgs with
    | (``Eq, #[_, lhs, rhs])
    | (``Iff, #[lhs, rhs]) => do
      let lhsKey ← DiscrTree.mkPath lhs
      let rhsKey ← DiscrTree.mkPath rhs
      return #[(lhsKey, (name, false, forwardWeight * lhsKey.size)),
        (rhsKey, (name, true, backwardWeight * rhsKey.size))]
    | _ => return #[]

/-- Select `=` and `↔` local hypotheses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variante9ceb9fa1cd2e94d0a848d801bc4e4f77f3ec9f7d17adba930a33096dd5fe93f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variante9ceb9fa1cd2e94d0a848d801bc4e4f77f3ec9f7d17adba930a33096dd5fe93f.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d01121663a15d934f63549b635443d801ac1d13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
