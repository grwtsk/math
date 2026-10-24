# FiniteHorizonGramFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afba4c981d7630d825b7c18a059a39603a7ff38ca5fd5a9dc84bc5576d0569c5",
  "kind": "structure",
  "lexical_name": "FiniteHorizonGramFamily",
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
  "slug": "finitehorizongramfamily--0b2732ac010ba0c32f2742ac",
  "source": {
    "blob": "62f87a9f880eb48951cf6db84119f4fdd4ea4fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 14,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHorizonGram/Variant7ff80354e2ae104db137fea8d2d6c4da81b265839b653b5a5540d26e3011e41b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b2732ac010ba0c32f2742ac379a26a412abfd7cbe82d0d6412a5732a3633342",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteHorizonGram/Variant7ff80354e2ae104db137fea8d2d6c4da81b265839b653b5a5540d26e3011e41b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afba4c981d7630d825b7c18a059a39603a7ff38ca5fd5a9dc84bc5576d0569c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteHorizonGramFamily
    (model : OperatorModel)
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    (connectors : SoninConnectorSystem family)
    (range :
      FiniteHorizonRangeProjection
        model connectors) where
  connectorOperator :
    Finset Prime → Finset Prime → model.Operator
  gram :
    Finset Prime → Finset Prime → model.Operator
  gram_eq_pullback :
    ∀ source horizon,
      gram source horizon =
        range.operations.compose
          (range.operations.adjoint
            (connectorOperator source horizon))
          (connectorOperator source horizon)
  selfAdjoint :
    ∀ source horizon,
      model.SelfAdjoint (gram source horizon)
  nonnegative :
    ∀ source horizon,
      model.Nonnegative (gram source horizon)
  compatible :
    ∀ {source target horizon},
      source ⊆ target →
      target ⊆ horizon →
      gram source horizon =
        range.operations.compose
          (range.operations.adjoint
            (connectorOperator source target))
          (range.operations.compose
            (gram target horizon)
            (connectorOperator source target))
  lowerBound :
    Finset Prime → ℚ
  upperBound :
    Finset Prime → ℚ
  lowerBound_positive :
    ∀ source, 0 < lowerBound source
  bounded : Prop
  boundedProof : bounded

end Mathematics.SemiLocalDefect.Sonin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteHorizonGram/Variant7ff80354e2ae104db137fea8d2d6c4da81b265839b653b5a5540d26e3011e41b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHorizonGram/Variant7ff80354e2ae104db137fea8d2d6c4da81b265839b653b5a5540d26e3011e41b.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62f87a9f880eb48951cf6db84119f4fdd4ea4fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
