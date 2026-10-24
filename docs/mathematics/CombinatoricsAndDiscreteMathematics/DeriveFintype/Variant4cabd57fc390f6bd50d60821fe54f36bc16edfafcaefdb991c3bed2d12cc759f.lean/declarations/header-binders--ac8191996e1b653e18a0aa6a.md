# $header.binders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e480fe907e4baf4da9d1ede67b382a1054c2f69c24edcd7b907e0aacc96cfcc",
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
  "slug": "header-binders--ac8191996e1b653e18a0aa6a",
  "source": {
    "blob": "23411c79b1d7581adb0bf11672155f065a0ab69a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac8191996e1b653e18a0aa6a7c7f1084b6652c0f4bf8a2aba859b43fcf0bd04f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e480fe907e4baf4da9d1ede67b382a1054c2f69c24edcd7b907e0aacc96cfcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–112.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23411c79b1d7581adb0bf11672155f065a0ab69a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
