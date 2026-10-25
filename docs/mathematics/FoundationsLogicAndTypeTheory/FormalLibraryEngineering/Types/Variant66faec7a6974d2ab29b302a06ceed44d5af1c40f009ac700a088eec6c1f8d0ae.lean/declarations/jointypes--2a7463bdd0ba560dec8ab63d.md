# joinTypes?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77f8c52e13ef7a1a8b9523cde4558f7bea52b81b02a5caef236cde09d44f0ae7",
  "kind": "def",
  "lexical_name": "joinTypes?",
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
  "slug": "jointypes--2a7463bdd0ba560dec8ab63d",
  "source": {
    "blob": "50f0880b90c1ff68cda4e891e1a6e1f1490170db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 243,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant66faec7a6974d2ab29b302a06ceed44d5af1c40f009ac700a088eec6c1f8d0ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a7463bdd0ba560dec8ab63dc723f964cbf8a0e2b8669a3015167e5c724ca8d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant66faec7a6974d2ab29b302a06ceed44d5af1c40f009ac700a088eec6c1f8d0ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77f8c52e13ef7a1a8b9523cde4558f7bea52b81b02a5caef236cde09d44f0ae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def joinTypes? (a b : Expr) : Option Expr := do
  if a.isErased || b.isErased then
    return erasedExpr -- See comment at `compatibleTypes`.
  else if a == b then
    return a
  else
    let a' := a.headBeta
    let b' := b.headBeta
    if a != a' || b != b' then
      joinTypes? a' b'
    else
      match a, b with
      | .mdata _ a, b => joinTypes? a b
      | a, .mdata _ b => joinTypes? a b
      | .app f a, .app g b =>
        (do return .app (← joinTypes? f g) (← joinTypes? a b))
         <|>
        return (mkConst ``lcAny)
      | .forallE n d₁ b₁ _, .forallE _ d₂ b₂ _ =>
        (do return .forallE n (← joinTypes? d₁ d₂) (joinTypes b₁ b₂) .default)
        <|>
        return (mkConst ``lcAny)
      | .lam n d₁ b₁ _, .lam _ d₂ b₂ _ =>
        (do return .lam n (← joinTypes? d₁ d₂) (joinTypes b₁ b₂) .default)
        <|>
        return (mkConst ``lcAny)
      | _, _ => return (mkConst ``lcAny)

end

/--
Return `true` if `type` is a LCNF type former type.

Remark: This is faster than `Lean.Meta.isTypeFormer`, as this
        assumes that the input `type` is an LCNF type.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant66faec7a6974d2ab29b302a06ceed44d5af1c40f009ac700a088eec6c1f8d0ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant66faec7a6974d2ab29b302a06ceed44d5af1c40f009ac700a088eec6c1f8d0ae.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f0880b90c1ff68cda4e891e1a6e1f1490170db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
