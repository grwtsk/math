# $header.binders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4059f1c9c1b5dd8b21e628b35f9331994978b5c25245ab8ced1004abf168117b",
  "kind": "instance",
  "lexical_name": "$header.binders",
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
  "slug": "header-binders--6394b270b97dd2c6343483bb",
  "source": {
    "blob": "04b898df35fd7c26b197d611d2adc12123dcdd33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6394b270b97dd2c6343483bb3e7e9e42cd89ee58ac4bd8272eafa273213787c8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4059f1c9c1b5dd8b21e628b35f9331994978b5c25245ab8ced1004abf168117b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
      instance $header.binders:bracketedBinder* $(binders'.map TSyntax.mk):bracketedBinder* :
          Fintype $header.targetType := derive_fintype% _)
    return instCmd
  trace[Elab.Deriving.fintype] "instance command:\n{cmd}"
  elabCommand cmd
  return true

/-- Derive a `Fintype` instance for enum types. These come with a `toCtorIdx` function.

We generate a more optimized instance than the one produced by `mkFintype`.
The strategy is to (1) create a list `enumList` of all the constructors, (2) prove that this
is in `toCtorIdx` order, (3) show that `toCtorIdx` maps `enumList` to `List.range numCtors` to show
the list has no duplicates, and (4) give the `Fintype` instance, using 2 for completeness.

The proofs are all linear complexity, and the main computation is that
`enumList.map toCtorIdx = List.range numCtors`, which is true by `refl`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant2e4a6d081ea198ba1481b135e68bc30ec544b790a49258994c9c5908fc6eaf1e.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04b898df35fd7c26b197d611d2adc12123dcdd33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
