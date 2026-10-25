# getFnType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e87a2eac9c84634d90845ec9b29504a38e5de77dc72df264169bc88d0c65a94",
  "kind": "def",
  "lexical_name": "getFnType",
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
  "slug": "getfntype--2de345976cd90c8553c7f2df",
  "source": {
    "blob": "e4171b932c4fa956f4f6011ce069f73d9bee1cda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 206,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2de345976cd90c8553c7f2df6284d84722aeefd4ccbd653cd93e74f997d3a457",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e87a2eac9c84634d90845ec9b29504a38e5de77dc72df264169bc88d0c65a94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def getFnType (e : Expr) (n : Nat) : SymM Expr := do
  match n with
  | 0 => inferType e
  | n+1 =>
    let type ← getFnType e.appFn! n
    let .forallE _ _ β _ ← whnfToForall type | unreachable!
    return β

/--
Simplifies arguments of a function application with a fixed prefix structure.
Recursively simplifies the trailing `suffixSize` arguments, leaving the first
`prefixSize` arguments unchanged.

For a function with `CongrInfo.fixedPrefix prefixSize suffixSize`, the arguments
are structured as:
```
f a₁ ... aₚ b₁ ... bₛ
  └───────┘ └───────┘
   prefix    suffix (rewritable)
```

The prefix arguments (types, instances) should
not be rewritten directly. Only the suffix arguments are recursively simplified.

**Performance optimization**: We avoid calling `inferType` on applied expressions
like `f a₁ ... aₚ b₁` or `f a₁ ... aₚ b₁ ... bₛ`, which would have poor cache hit rates.
Instead, we infer the type of the function prefix `f a₁ ... aₚ`
(e.g., `@HAdd.hAdd Nat Nat Nat instAdd`) which is probably shared across many applications,
then traverse the forall telescope to extract argument and result types as needed.

The helper `go` returns `Result × Expr` where the `Expr` is the function type at that
position. However, the type is only meaningful (non-`default`) when `Result` is
`.step`, since we only need types for constructing congruence proofs. This avoids
unnecessary type inference when no rewriting occurs.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4171b932c4fa956f4f6011ce069f73d9bee1cda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
