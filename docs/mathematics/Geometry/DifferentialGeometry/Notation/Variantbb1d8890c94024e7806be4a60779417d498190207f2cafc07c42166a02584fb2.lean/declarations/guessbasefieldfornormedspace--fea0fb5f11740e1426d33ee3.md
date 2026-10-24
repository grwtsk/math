# guessBaseFieldForNormedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35d243ce8a203e586cb773781a573bfbec79400b7a90f0fe3ede53f0a55c1802",
  "kind": "def",
  "lexical_name": "guessBaseFieldForNormedSpace",
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
  "slug": "guessbasefieldfornormedspace--fea0fb5f11740e1426d33ee3",
  "source": {
    "blob": "4c9ee8f837e8d1dd5b5df5fb821e953a42dcf6ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 345,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fea0fb5f11740e1426d33ee37e16c40ed25e1348cd2d65ae04c2216f54493d57",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35d243ce8a203e586cb773781a573bfbec79400b7a90f0fe3ede53f0a55c1802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def guessBaseFieldForNormedSpace (e : Expr) : TermElabM <| Option Expr := do
  if let some k ← findFromLocalInstance e then return k
  match_expr e with
  | Prod E _F =>
    guessBaseFieldForNormedSpace E
  | _ =>
    try
      let (_k, E, _F) ← isCLMReduciblyDefeqCoefficients e
      guessBaseFieldForNormedSpace E
    catch _e =>
      findFromLocalInstance e
where findFromLocalInstance (e : Expr) : TermElabM <| Option Expr := do
  findSomeLocalInstanceOf? ``NormedSpace fun _ type ↦ do
    match_expr type with
    | NormedSpace K E _ _ =>
      if ← withReducible (pureIsDefEq E e) then
        trace[Elab.DiffGeo.MDiff] "`{e}` is a normed field over `{K}`"; return some K
      else return none
    | _ => pure none

/-- Try to find a `ModelWithCorners` instance on a type (represented by an expression `e`),
using the local context to infer the appropriate instance. This supports the following cases:
- the model with corners on the total space of a vector bundle
- the model with corners on the tangent space of a manifold
- a model with corners on a manifold, or on its underlying model space
- a closed interval of real numbers (including the unit interval)
- Euclidean space, Euclidean half-space and Euclidean quadrants
- a metric sphere in a real or complex inner product space
- the units of a normed algebra
- the complex upper half plane
- a space of continuous k-linear maps
- the trivial model `𝓘(𝕜, E)` on a normed space
- if the above are not found, try to find a `NontriviallyNormedField` instance on the type of `e`,
  and if successful, return `𝓘(𝕜)`.

Further cases can be added as necessary.
This method intentionally handles **neither** sums (disjoint unions) nor products of spaces,
nor an open subset of an existing manifold. These are handled in `findModel`.

Return an expression describing the found model with corners, together with information about
whether the model is the trivial model with corners on a normed space. (This is important for
forming products of models.)

Note that the matching on `e` does not see through reducibility (e.g. we distinguish the `abbrev`
`TangentBundle` from its definition), so `whnfR` should not be run on `e` prior to calling
`findModel` on it.

This implementation is not maximally robust yet.
-/
-- TODO: better error messages when all strategies fail
-- TODO: consider lowering monad to `MetaM`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c9ee8f837e8d1dd5b5df5fb821e953a42dcf6ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
