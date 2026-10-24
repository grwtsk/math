# RegisteredPositiveInvolutiveRelaxationTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21b079655acfbf5e0d7420e883d660b50bf7b5896e4193a83d483d20773254e2",
  "kind": "structure",
  "lexical_name": "RegisteredPositiveInvolutiveRelaxationTheorem",
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
  "slug": "registeredpositiveinvolutiverelaxationtheorem--0d633177aecd9211769e6007",
  "source": {
    "blob": "8772c3795cd13a64c83fb7995505274bea53c6b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticTheoremRegistry/Variantb1e690c99f5016d7058c9bf944b95dc3379c163af78e7184e32db347dcc3dd45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d633177aecd9211769e60070afa74b3dc8bfc17ae80bb30d25a96e0b4125bf3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticTheoremRegistry/Variantb1e690c99f5016d7058c9bf944b95dc3379c163af78e7184e32db347dcc3dd45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21b079655acfbf5e0d7420e883d660b50bf7b5896e4193a83d483d20773254e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RegisteredPositiveInvolutiveRelaxationTheorem
    (State : Type u)
    [AddCommMonoid State]
    [Module ℝ State]
    (cone : PositiveCone State) where
  registered : RegisteredAnalyticDiffusionTheorem State cone
  involution : PositiveLinearInvolution State cone
  weight : RelaxationWeight
  operator_is_relaxation :
    registered.operator = involution.relax weight

/-- The objective fixes the precise meaning of safe exclusion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticTheoremRegistry/Variantb1e690c99f5016d7058c9bf944b95dc3379c163af78e7184e32db347dcc3dd45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticTheoremRegistry/Variantb1e690c99f5016d7058c9bf944b95dc3379c163af78e7184e32db347dcc3dd45.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8772c3795cd13a64c83fb7995505274bea53c6b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
