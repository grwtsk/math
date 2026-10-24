# eval_literal_of_containsLiteral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a5a98a8-8a87-ec41-51ab-3f92cf955f82",
  "kind": "theorem",
  "lexical_name": "eval_literal_of_containsLiteral",
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
  "slug": "eval-literal-of-containsliteral--6e04764e0f6ddc3b500fd6ed",
  "source": {
    "blob": "f85e9a2b369dcb117d0f38b4e1b58754c1e37666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant7cb6160e9e7a22be9d9ec501a9b28d74231466a5490d1454bda620ce9edc6a4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e04764e0f6ddc3b500fd6edcb4e4066856e2db6faf7b21d45fd5e91d1d2bd0a",
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

Occurrence: `result:0a5a98a8-8a87-ec41-51ab-3f92cf955f82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_literal_of_containsLiteral
    [DecidableEq α]
    (ν : Valuation α)
    (lit : Literal α) :
    ∀ term : ProductTerm α,
      containsLiteral lit term = true →
        ProductTerm.eval ν term = true →
          Literal.eval ν lit = true
  | [], hcontains, _hterm => by
      cases hcontains
  | head :: rest, hcontains, hterm => by
      by_cases hhead : head = lit
      · subst head
        change
          (Literal.eval ν lit && ProductTerm.eval ν rest) = true at hterm
        rw [Bool.and_eq_true] at hterm
        exact hterm.1
      · have hrestContains :
            containsLiteral lit rest = true := by
          simpa [containsLiteral, hhead] using hcontains
        have hrestEval :
            ProductTerm.eval ν rest = true := by
          change
            (Literal.eval ν head && ProductTerm.eval ν rest) = true at hterm
          rw [Bool.and_eq_true] at hterm
          exact hterm.2
        exact eval_literal_of_containsLiteral ν lit rest
          hrestContains hrestEval

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant7cb6160e9e7a22be9d9ec501a9b28d74231466a5490d1454bda620ce9edc6a4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Minimize/Variant7cb6160e9e7a22be9d9ec501a9b28d74231466a5490d1454bda620ce9edc6a4f.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f85e9a2b369dcb117d0f38b4e1b58754c1e37666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
