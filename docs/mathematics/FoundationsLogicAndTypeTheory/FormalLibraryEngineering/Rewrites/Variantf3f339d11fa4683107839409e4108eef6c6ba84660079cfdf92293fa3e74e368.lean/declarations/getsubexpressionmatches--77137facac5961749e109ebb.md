# getSubexpressionMatches

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:451dfaf03c38db4eb7869028d81ebc1201b68806dd8988337140ebd4862f2546",
  "kind": "def",
  "lexical_name": "getSubexpressionMatches",
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
  "slug": "getsubexpressionmatches--77137facac5961749e109ebb",
  "source": {
    "blob": "334ea0e5df7b1ae48597b1fff1fa79ae55a3b575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 228,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variantf3f339d11fa4683107839409e4108eef6c6ba84660079cfdf92293fa3e74e368.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77137facac5961749e109ebb8a314bf2560ad019d712e0df889e10d2d62ad3df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variantf3f339d11fa4683107839409e4108eef6c6ba84660079cfdf92293fa3e74e368.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:451dfaf03c38db4eb7869028d81ebc1201b68806dd8988337140ebd4862f2546`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getSubexpressionMatches (op : Expr → MetaM (Array α)) (e : Expr) : MetaM (Array α) := do
  match e with
  | .bvar _ => return #[]
  | .forallE _ _ _ _ =>
    forallTelescope e fun args body => do
      args.foldlM (fun acc arg => return acc ++ (← getSubexpressionMatches op (← inferType arg)))
        (← getSubexpressionMatches op body).reverse
  | .lam _ _ _ _
  | .letE _ _ _ _ _ =>
    lambdaLetTelescope e (fun args body => do
      args.foldlM (fun acc arg => return acc ++ (← getSubexpressionMatches op (← inferType arg)))
        (← getSubexpressionMatches op body).reverse)
  | _ =>
    let init := ((← op e).reverse)
    e.foldlM (init := init) (fun a f => return a ++ (← getSubexpressionMatches op f))

/--
Find lemmas which can rewrite the goal.

See also `rewrites` for a more convenient interface.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variantf3f339d11fa4683107839409e4108eef6c6ba84660079cfdf92293fa3e74e368.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variantf3f339d11fa4683107839409e4108eef6c6ba84660079cfdf92293fa3e74e368.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `334ea0e5df7b1ae48597b1fff1fa79ae55a3b575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
