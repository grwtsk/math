# visitLambda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bf222f293d6a59b6a1d72e7892cb412b92d81a22bd0a0f20e5cd6f4e901c78d",
  "kind": "def",
  "lexical_name": "visitLambda",
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
  "slug": "visitlambda--91f409c2b3fe63f9825e1b7a",
  "source": {
    "blob": "855a348185006c9b3aaf13af2db2ac63ba492853",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 391,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91f409c2b3fe63f9825e1b7ae109535c2e47d4e13455dda6b3e73feb361f3ae8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bf222f293d6a59b6a1d72e7892cb412b92d81a22bd0a0f20e5cd6f4e901c78d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def visitLambda (e : Expr) : M (Array (Param .pure) × Expr × Option Expr) := do
  go e #[] #[] (← read).expectedType
where
  go (e : Expr) (xs : Array Expr) (ps : Array (Param .pure)) (eType? : Option Expr) := do
    if let .lam binderName type body _ := e then
      let type := type.instantiateRev xs
      if let some (.forallE _ type' eType _) := eType? then
        let borrow := isMarkedBorrowed type || isMarkedBorrowed type'
        let p ← mkParam binderName type borrow
        -- no need to instantiate eType, we only ever check it for `isMarkedBorrowed`
        go body (xs.push p.toExpr) (ps.push p) (some eType)
      else
        let p ← mkParam binderName type
        go body (xs.push p.toExpr) (ps.push p) none
    else
      return (ps, e.instantiateRev xs, eType?.map (·.instantiateRev xs))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `855a348185006c9b3aaf13af2db2ac63ba492853` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
