# ExactTowerGradePolicy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac9f032d56edceed4140844a83991179be59e5857136d9e12ad8b525299357ed",
  "kind": "structure",
  "lexical_name": "ExactTowerGradePolicy",
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
  "slug": "exacttowergradepolicy--e52837bc50d08a3aa6c3215e",
  "source": {
    "blob": "82c24bad53437ed655de332d7db334fbb07c25a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variantef8ffd27e2c2852383a2f87ec4f55be17089962e56e2837d170cb8430bfbbe80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e52837bc50d08a3aa6c3215e9e71c5aa054d38b410a788c1d65aec28aaf63e4e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variantef8ffd27e2c2852383a2f87ec4f55be17089962e56e2837d170cb8430bfbbe80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac9f032d56edceed4140844a83991179be59e5857136d9e12ad8b525299357ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactTowerGradePolicy where
  interpreterInputGrade : Nat → Nat
  interpreterOutputGrade : Nat → Nat
  quotationOutputGrade : Nat → Nat
  interpreterInputGradeExact : ∀ level,
    interpreterInputGrade level = level + 1
  interpreterOutputGradeExact : ∀ level,
    interpreterOutputGrade level = level
  quotationOutputGradeExact : ∀ level,
    quotationOutputGrade level = level + 1

/--
The exact tower is a separate strengthening of the structural tower.  It names
the identity policy at every level, the designated total interpreter, its
quotient behavior, quotation laws, semantic lift, naturality square, and an
interpreter code object whose evaluated representation has a separately typed
denotation.  Possessing only `ReflectiveEvaluatorTower` never supplies these
fields.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variantef8ffd27e2c2852383a2f87ec4f55be17089962e56e2837d170cb8430bfbbe80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variantef8ffd27e2c2852383a2f87ec4f55be17089962e56e2837d170cb8430bfbbe80.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c24bad53437ed655de332d7db334fbb07c25a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
