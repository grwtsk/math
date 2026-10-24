# eval_true_of_subsumes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e53acdd7-fc60-3935-dbb6-b2a9ad32883e",
  "kind": "theorem",
  "lexical_name": "eval_true_of_subsumes",
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
  "slug": "eval-true-of-subsumes--4d9d6b3f0675aff98d51b2dc",
  "source": {
    "blob": "f85e9a2b369dcb117d0f38b4e1b58754c1e37666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant7cb6160e9e7a22be9d9ec501a9b28d74231466a5490d1454bda620ce9edc6a4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d9d6b3f0675aff98d51b2dc4326e611206518d8471cf52e9b49e8e9f043bd90",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant7cb6160e9e7a22be9d9ec501a9b28d74231466a5490d1454bda620ce9edc6a4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e53acdd7-fc60-3935-dbb6-b2a9ad32883e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_true_of_subsumes
    [DecidableEq α]
    (ν : Valuation α) :
    ∀ left right : ProductTerm α,
      subsumes left right = true →
        ProductTerm.eval ν right = true →
          ProductTerm.eval ν left = true
  | [], _right, _hsub, _hright => rfl
  | lit :: rest, right, hsub, hright => by
      have hcontains :
          containsLiteral lit right = true := by
        change
          (containsLiteral lit right && subsumes rest right) = true at hsub
        rw [Bool.and_eq_true] at hsub
        exact hsub.1
      have hrestSub :
          subsumes rest right = true := by
        change
          (containsLiteral lit right && subsumes rest right) = true at hsub
        rw [Bool.and_eq_true] at hsub
        exact hsub.2
      have hlit :
          Literal.eval ν lit = true :=
        eval_literal_of_containsLiteral ν lit right hcontains hright
      have hrest :
          ProductTerm.eval ν rest = true :=
        eval_true_of_subsumes ν rest right hrestSub hright
      change
        (Literal.eval ν lit && ProductTerm.eval ν rest) = true
      rw [hlit, hrest]
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant7cb6160e9e7a22be9d9ec501a9b28d74231466a5490d1454bda620ce9edc6a4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant7cb6160e9e7a22be9d9ec501a9b28d74231466a5490d1454bda620ce9edc6a4f.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f85e9a2b369dcb117d0f38b4e1b58754c1e37666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
