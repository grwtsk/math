# HaveInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1062081e345ecc1ff271dc0b4a212cc5a5aba885b61c40fd7301d6badea467ae",
  "kind": "structure",
  "lexical_name": "HaveInfo",
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
  "slug": "haveinfo--406e67bebc3dd2da3de4f33d",
  "source": {
    "blob": "4e020348ec2f18dbc5fa70001e85ec4b22868421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:406e67bebc3dd2da3de4f33d84a789143c5cf36ee016abf0a86aeba8110ef15e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1062081e345ecc1ff271dc0b4a212cc5a5aba885b61c40fd7301d6badea467ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure HaveInfo where
  /-- Previous `have`s that the type of this `have` depends on, as indices into `HaveTelescopeInfo.haveInfo`.
  Used in `computeFixedUsed` to compute used `have`s. -/
  typeBackDeps : Std.HashSet Nat
  /-- Previous `have`s that the value of this `have` depends on, as indices into `HaveTelescopeInfo.haveInfo`.
  Used in `computeFixedUsed` to compute used `have`s. -/
  valueBackDeps : Std.HashSet Nat
  /-- The local decl for the `have`, so that the local context can be re-entered `have`-by-`have`.
  N.B. This stores the fvarid for the `have` as well as cached versions of the value and type
  instantiated with the fvars from the telescope. -/
  decl : LocalDecl
  /-- The level of the type for this `have`, cached. -/
  level : Level
  deriving Inhabited

/--
Information about a `have` telescope.
Created by `getHaveTelescopeInfo` and used in `simpHaveTelescope`.

The data is used to avoid applying `Expr.abstract` more than once on any given subexpression
when constructing terms and proofs during simplification. Abstraction is linear in the size `t` of a term,
and so in a depth-`n` telescope it is `O(nt)`, quadratic in `n`, since `n ≤ t`.
For example, given `have x₁ := v₁; ...; have xₙ := vₙ; b` and `h : b = b'`, we need to construct
```lean
have_body_congr (fun x₁ => ... have_body_congr (fun xₙ => h)))
```
We apply `Expr.abstract` to `h` *once* and then build the term, rather than
using `mkLambdaFVars #[fvarᵢ] pfᵢ` at each step.

As an additional optimization, we save the fvar-instantiated terms calculated by `getHaveTelescopeInfo`
so that we don't have to compute them again. This is only saving a constant factor.

It is also used for computing used `have`s in `computeFixedUsed`.
In `have x₁ := v; have x₂ := x₁; ⋯; have xₙ := xₙ₋₁; b`, if `xₙ` is unused in `b`, then all the
`have`s are unused. Without a global computation of used `have`s, the proof term would be quadratic
in the number of `have`s (with `n` iterations of `simp`). Knowing which `have`s are transitively
unused lets the proof term be linear in size.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e020348ec2f18dbc5fa70001e85ec4b22868421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
