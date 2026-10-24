# CochainCurvatureBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5431b6a76ed0d904c1f8cdbd282f29457f8017f3001476e73f929b7a88be19d2",
  "kind": "structure",
  "lexical_name": "CochainCurvatureBudget",
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
  "slug": "cochaincurvaturebudget--39ace6fef4ffed1e23ee7e50",
  "source": {
    "blob": "af2605177cc4542caf09718b463b04cae2b46bfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CochainCurvature/Variantd5827278e59ed6ba31daa97fbae44ec7539524314465abb9a861aae803774fe7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39ace6fef4ffed1e23ee7e5088b587eec8c7b623ef8b1ab26f75694d889b1685",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CochainCurvature/Variantd5827278e59ed6ba31daa97fbae44ec7539524314465abb9a861aae803774fe7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5431b6a76ed0d904c1f8cdbd282f29457f8017f3001476e73f929b7a88be19d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CochainCurvatureBudget
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (cochain :
      MeasuredDefectCochain model Prime) where
  size : model.Operator → ℝ
  size_nonnegative :
    ∀ operator : model.Operator,
      0 ≤ size operator
  bound :
    Finset Prime → Prime → Prime → ℝ
  bound_nonnegative :
    ∀ (cut : Finset Prime)
      (left right : Prime),
      0 ≤ bound cut left right
  curvature_bounded :
    ∀ (cut : Finset Prime)
      (left right : Prime),
      size
          (MeasuredDefectCochain.curvature
            (model := model)
            (Prime := Prime)
            cochain cut left right) ≤
        (bound cut left right : ℝ)

end Mathematics.SemiLocalDefect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CochainCurvature/Variantd5827278e59ed6ba31daa97fbae44ec7539524314465abb9a861aae803774fe7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CochainCurvature/Variantd5827278e59ed6ba31daa97fbae44ec7539524314465abb9a861aae803774fe7.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af2605177cc4542caf09718b463b04cae2b46bfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
