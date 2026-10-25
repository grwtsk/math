# mkProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23fa158f4b73cfa29e42db867f16de09e0ae0a501975091ca96d50dd359f4ded",
  "kind": "def",
  "lexical_name": "mkProof",
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
  "slug": "mkproof--1473c207cbd4c9d3b3f5d3da",
  "source": {
    "blob": "27ead5f5dd7cce93d27c33816eff02f07b936f31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 394,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1473c207cbd4c9d3b3f5d3da8d56f839954092e380e8794d241e5532a5325254",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23fa158f4b73cfa29e42db867f16de09e0ae0a501975091ca96d50dd359f4ded`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkProof (lhs rhs : Expr) (H : EntryExpr) (heqProofs : Bool) : CCM Expr := do
  match H with
  | .congr => mkCongrProof lhs rhs heqProofs
  | .eqTrue =>
    let (flip, some (R, a, b)) ←
      if lhs == .const ``True [] then
        ((true, ·)) <$> rhs.relSidesIfRefl?
      else
        ((false, ·)) <$> lhs.relSidesIfRefl?
      | failure
    let aRb ←
      if R == ``Eq then
        getEqProof a b >>= liftOption
      else if R == ``HEq then
        getHEqProof a b >>= liftOption
      else
        -- TODO(Leo): the following code assumes R is homogeneous.
        -- We should add support arbitrary heterogeneous reflexive relations.
        getEqProof a b >>= liftOption >>= fun aEqb => liftM (liftFromEq R aEqb)
    let aRbEqTrue ← mkEqTrue aRb
    if flip then
      mkEqSymm aRbEqTrue
    else
      return aRbEqTrue
  | .refl =>
    let type ← if heqProofs then mkHEq lhs rhs else mkEq lhs rhs
    let proof ← if heqProofs then mkHEqRefl lhs else mkEqRefl lhs
    mkExpectedTypeHint proof type
  | .ofExpr H => return H
  | .ofDExpr H => mkDelayedProof H

/--
If `asHEq` is `true`, then build a proof for `HEq e₁ e₂`.
Otherwise, build a proof for `e₁ = e₂`.
The result is `none` if `e₁` and `e₂` are not in the same equivalence class. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27ead5f5dd7cce93d27c33816eff02f07b936f31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
