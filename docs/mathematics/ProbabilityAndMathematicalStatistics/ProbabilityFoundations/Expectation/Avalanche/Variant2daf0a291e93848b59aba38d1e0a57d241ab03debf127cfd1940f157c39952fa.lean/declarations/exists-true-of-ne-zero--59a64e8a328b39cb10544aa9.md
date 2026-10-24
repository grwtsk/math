# exists_true_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ed9d182-1beb-5d66-9726-bf55944fb7c4",
  "kind": "theorem",
  "lexical_name": "exists_true_of_ne_zero",
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
  "slug": "exists-true-of-ne-zero--59a64e8a328b39cb10544aa9",
  "source": {
    "blob": "2d00ee9c03cd9f493f70e5c4d08c5ded99110181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 271,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59a64e8a328b39cb10544aa9e1f72064771c6ffefc9ea5b3cfe31f138439541e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ed9d182-1beb-5d66-9726-bf55944fb7c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exists_true_of_ne_zero {n : Nat} {δ : Bits n}
    (hδ : δ ≠ zeroBits n) : ∃ i, δ i = true := by
  classical
  by_contra h
  apply hδ
  funext i
  cases hi : δ i
  · rfl
  · exact (h ⟨i, hi⟩).elim

/--
An invariant subset of bit vectors has even cardinality when a nonzero XOR
translation pairs its elements.  The proof splits at a coordinate where the
translation is `true` and exhibits a bijection between its two halves.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d00ee9c03cd9f493f70e5c4d08c5ded99110181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
