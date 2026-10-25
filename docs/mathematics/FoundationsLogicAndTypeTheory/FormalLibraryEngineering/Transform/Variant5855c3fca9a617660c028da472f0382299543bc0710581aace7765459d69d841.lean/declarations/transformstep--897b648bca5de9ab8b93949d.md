# TransformStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cbd4fcb2f17193fa034976865b54149ac6013befdc2915e9bac36e9662abf6e",
  "kind": "inductive",
  "lexical_name": "TransformStep",
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
  "slug": "transformstep--897b648bca5de9ab8b93949d",
  "source": {
    "blob": "e50c746d3704023bfbd43a7a027eb238c7fa5446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:897b648bca5de9ab8b93949d77c933ab24af34a70489c3fcc8bba14cf9fa5e83",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6cbd4fcb2f17193fa034976865b54149ac6013befdc2915e9bac36e9662abf6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive TransformStep where
  /-- Return expression without visiting any subexpressions. -/
  | done (e : Expr)
  /--
  Visit expression (which should be different from current expression) instead.
  The new expression `e` is passed to `pre` again.
  -/
  | visit (e : Expr)
  /--
  Continue transformation with the given expression (defaults to current expression).
  For `pre`, this means visiting the children of the expression.
  For `post`, this is equivalent to returning `done`. -/
  | continue (e? : Option Expr := none)
  deriving Inhabited, Repr

namespace Core

/--
Recursively transforms `input` using `pre` and `post` callbacks.

For each subexpression:
1. `pre` is invoked first; recursion continues according to the `TransformStep` result.
2. After recursion (if any), `post` is invoked on the resulting expression.

The expressions passed to `pre` and `post` may contain loose bound variables.
Use `Meta.transform` instead if you need operations like `whnf` or `inferType`
that require expressions without loose bound variables.

Results are cached using pointer equality (`ExprStructEq`), so structurally
identical subexpressions are transformed only once.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant5855c3fca9a617660c028da472f0382299543bc0710581aace7765459d69d841.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e50c746d3704023bfbd43a7a027eb238c7fa5446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
