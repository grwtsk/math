# isConstantApplication

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bc247dc1e846d448a3d455d3be90a83709ea42b238e026ed9c393c61c9084fa",
  "kind": "def",
  "lexical_name": "isConstantApplication",
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
  "slug": "isconstantapplication--b0e8fd8dc5cdf7cd6034c53d",
  "source": {
    "blob": "a2d08652fd2284ba2892f4bc755b8dfe5a9f0a02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 232,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd535ac895e99661cad20bab8a471a0f641e0af7b3a69ea35493c73173f276193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0e8fd8dc5cdf7cd6034c53d3c02085bee2f86e7430fe36dd1b57b83feec3794",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd535ac895e99661cad20bab8a471a0f641e0af7b3a69ea35493c73173f276193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bc247dc1e846d448a3d455d3be90a83709ea42b238e026ed9c393c61c9084fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isConstantApplication (e : Expr) :=
  e.isApp && aux e.getAppNumArgs'.pred e.getAppFn' e.getAppNumArgs'
where
  /-- `aux depth e n` checks whether the body of the `n`-th lambda of `e` has loose bvar
    `depth - 1`. -/
  aux (depth : Nat) : Expr → Nat → Bool
    | .lam _ _ b _, n + 1  => aux depth b n
    | e, 0  => !e.hasLooseBVar (depth - 1)
    | _, _ => false

/--
Returns `true` if `type` is an application of a constant `decl` for which `p decl` is true, or a
forall with return type of the same form (i.e. of the form `∀ (x₀ : X₀) (x₁ : X₁) ⋯, decl ..` where
`p decl`).

Runs `cleanupAnnotations` on `type` and `forallE` bodies, and ignores metadata in applications.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd535ac895e99661cad20bab8a471a0f641e0af7b3a69ea35493c73173f276193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd535ac895e99661cad20bab8a471a0f641e0af7b3a69ea35493c73173f276193.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2d08652fd2284ba2892f4bc755b8dfe5a9f0a02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
