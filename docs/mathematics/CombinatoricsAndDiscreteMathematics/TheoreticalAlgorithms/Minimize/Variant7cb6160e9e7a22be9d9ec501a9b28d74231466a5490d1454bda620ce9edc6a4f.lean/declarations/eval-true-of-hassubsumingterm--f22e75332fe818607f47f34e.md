# eval_true_of_hasSubsumingTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e1327ad-f4e7-2506-ff82-4753b144f5b4",
  "kind": "theorem",
  "lexical_name": "eval_true_of_hasSubsumingTerm",
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
  "slug": "eval-true-of-hassubsumingterm--f22e75332fe818607f47f34e",
  "source": {
    "blob": "f85e9a2b369dcb117d0f38b4e1b58754c1e37666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant7cb6160e9e7a22be9d9ec501a9b28d74231466a5490d1454bda620ce9edc6a4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f22e75332fe818607f47f34ef6dbf25baaafd514cf0fef41d678a3f8a9fae2b0",
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

Occurrence: `result:1e1327ad-f4e7-2506-ff82-4753b144f5b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_true_of_hasSubsumingTerm
    [DecidableEq α]
    (ν : Valuation α)
    (term : ProductTerm α) :
    ∀ terms : SumOfProducts α,
      hasSubsumingTerm term terms = true →
        ProductTerm.eval ν term = true →
          SumOfProducts.eval ν terms = true
  | [], hhas, _hterm => by
      cases hhas
  | candidate :: rest, hhas, hterm => by
      cases hsub : ProductTerm.subsumes candidate term
      · have hrestHas :
            hasSubsumingTerm term rest = true := by
          simpa [hasSubsumingTerm, hsub] using hhas
        have hrestEval :
            SumOfProducts.eval ν rest = true :=
          eval_true_of_hasSubsumingTerm ν term rest hrestHas hterm
        simp [SumOfProducts.eval, hrestEval]
      · have hcandidate :
            ProductTerm.eval ν candidate = true :=
          ProductTerm.eval_true_of_subsumes ν candidate term hsub hterm
        simp [SumOfProducts.eval, hcandidate]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant7cb6160e9e7a22be9d9ec501a9b28d74231466a5490d1454bda620ce9edc6a4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant7cb6160e9e7a22be9d9ec501a9b28d74231466a5490d1454bda620ce9edc6a4f.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f85e9a2b369dcb117d0f38b4e1b58754c1e37666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
