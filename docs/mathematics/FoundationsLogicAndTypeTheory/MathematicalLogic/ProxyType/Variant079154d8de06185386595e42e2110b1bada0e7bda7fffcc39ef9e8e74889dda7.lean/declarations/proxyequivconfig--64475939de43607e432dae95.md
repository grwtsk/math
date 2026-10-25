# ProxyEquivConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca710832d8215e53b0362c49eecef2d83eb0b9e98ba3ad5bc2ee0baff69bb1dd",
  "kind": "structure",
  "lexical_name": "ProxyEquivConfig",
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
  "slug": "proxyequivconfig--64475939de43607e432dae95",
  "source": {
    "blob": "6bbb7a3b051263b557f6449cd39b4d240a6fe74b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant079154d8de06185386595e42e2110b1bada0e7bda7fffcc39ef9e8e74889dda7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64475939de43607e432dae95c80c143eb4f409640f0ef1a96e8500d7b8e62cc9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant079154d8de06185386595e42e2110b1bada0e7bda7fffcc39ef9e8e74889dda7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca710832d8215e53b0362c49eecef2d83eb0b9e98ba3ad5bc2ee0baff69bb1dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProxyEquivConfig where
  /-- Name to use for the declaration for a type that is `Equiv` to the given type. -/
  proxyName : Name
  /-- Name to use for the declaration for the equivalence `proxyType ≃ type`. -/
  proxyEquivName : Name
  /-- Returns a proxy type for a constructor and a pattern to use to match against it,
  given a list of fvars for the constructor arguments and pattern names to use for the arguments.
  The proxy type is expected to be a `Type*`. -/
  mkCtorProxyType : List (Expr × Name) → TermElabM (Expr × Term)
  /-- Given (constructor name, proxy constructor type, proxy constructor pattern) triples
  constructed using `mkCtorProxyType`, return (1) the total proxy type (a `Type*`),
  (2) patterns to use for each constructor, and (3) a proof to use to prove `left_inv` for
  `proxy_type ≃ type` (this proof starts with `intro x`). -/
  mkProxyType : Array (Name × Expr × Term) → TermElabM (Expr × Array Term × TSyntax `tactic)

/-- Returns a proxy type for a constructor and a pattern to use to match against it.

Input: a list of pairs associated to each argument of the constructor consisting
of (1) an fvar for this argument and (2) a name to use for this argument in patterns.

For example, given `#[(a, x), (b, y)]` with `x : Nat` and `y : Fin x`, then this function
returns `Sigma (fun x => Fin x)` and `⟨a, b⟩`.

Always returns a `Type*`. Uses `Unit`, `PLift`, and `Sigma`. Avoids using `PSigma` since
the `Fintype` instances for it go through `Sigma`s anyway.

The `decorateSigma` function is to wrap the `Sigma` a decorator such as `Lex`.
It should yield a definitionally equal type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant079154d8de06185386595e42e2110b1bada0e7bda7fffcc39ef9e8e74889dda7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variant079154d8de06185386595e42e2110b1bada0e7bda7fffcc39ef9e8e74889dda7.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bbb7a3b051263b557f6449cd39b4d240a6fe74b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
