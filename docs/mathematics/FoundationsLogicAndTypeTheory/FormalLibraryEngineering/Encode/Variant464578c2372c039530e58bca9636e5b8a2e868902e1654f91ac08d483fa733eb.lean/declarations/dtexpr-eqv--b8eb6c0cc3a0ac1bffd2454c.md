# DTExpr.eqv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f43acbb6cf24780d1c2ba5d74d0f236dea80f040317617006f268eb06ca6024",
  "kind": "def",
  "lexical_name": "DTExpr.eqv",
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
  "slug": "dtexpr-eqv--b8eb6c0cc3a0ac1bffd2454c",
  "source": {
    "blob": "a5c49e2a3d408534c220f491f4002a64ff903eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8eb6c0cc3a0ac1bffd2454c1f93bcf1a5e79d546788cea82d1ff330fbcc51aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f43acbb6cf24780d1c2ba5d74d0f236dea80f040317617006f268eb06ca6024`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DTExpr.eqv (a b : DTExpr) : Bool :=
  (go a b).run' {}
where
  @[nolint docBlame]
  go (a b : DTExpr) : StateM (Std.HashMap MVarId MVarId) Bool :=
    match a, b with
    | .opaque           , .opaque            => pure true
    | .const n₁ as₁     , .const n₂ as₂      => pure (n₁ == n₂) <&&> goArray as₁ as₂
    | .fvar n₁ as₁      , .fvar n₂ as₂       => pure (n₁ == n₂) <&&> goArray as₁ as₂
    | .bvar i₁ as₁      , .bvar i₂ as₂       => pure (i₁ == i₂) <&&> goArray as₁ as₂
    | .lit li₁          , .lit li₂           => pure (li₁ == li₂)
    | .sort             , .sort              => pure true
    | .lam b₁           , .lam b₂            => go b₁ b₂
    | .forall d₁ b₁     , .forall d₂ b₂      => go d₁ d₂ <&&> go b₁ b₂
    | .proj n₁ i₁ a₁ as₁, .proj n₂ i₂ a₂ as₂ => pure (n₁ == n₂ && i₁ == i₂)
                                            <&&> go a₁ a₂ <&&> goArray as₁ as₂
    | .star none        , .star none         => pure true
    | .star (some id₁)  , .star (some id₂)   => modifyGet fun map => match map[id₁]? with
      | some id => (id == id₂, map)
      | none => (true, map.insert id₁ id₂)
    | _ , _ => return false

  @[nolint docBlame]
  goArray (as bs : Array DTExpr) : StateM (Std.HashMap MVarId MVarId) Bool := do
    if h : as.size = bs.size then
      for g : i in [:as.size] do
        unless ← go as[i] (bs[i]'(h ▸ g.2.1)) do
          return false
      return true
    else
      return false

/-! ## Encoding an Expr -/

/-- This state is used to turn the indexing by `MVarId` and `FVarId` in `DTExpr` into
indexing by `Nat` in `Key`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5c49e2a3d408534c220f491f4002a64ff903eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
