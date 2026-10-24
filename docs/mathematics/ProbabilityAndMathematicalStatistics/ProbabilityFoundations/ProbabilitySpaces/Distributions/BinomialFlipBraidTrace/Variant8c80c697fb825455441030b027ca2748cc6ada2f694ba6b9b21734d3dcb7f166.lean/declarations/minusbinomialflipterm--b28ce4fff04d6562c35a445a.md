# minusBinomialFlipTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a7edb5ae8c548535297fd21d67c1f57fea3e2cf569c41561b2206643fe47b8a",
  "kind": "def",
  "lexical_name": "minusBinomialFlipTerm",
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
  "slug": "minusbinomialflipterm--b28ce4fff04d6562c35a445a",
  "source": {
    "blob": "ebe8f66fede5a169592982d5d42c0a95c19ee22b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 79,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b28ce4fff04d6562c35a445ac917d145f73d07e6795f3037d9209745003b43e5",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a7edb5ae8c548535297fd21d67c1f57fea3e2cf569c41561b2206643fe47b8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def minusBinomialFlipTerm
    (termId : String) (orderIndex : Nat) (sourceSpin : Bool) :
    BinomialFlipTerm :=
  { termId := termId
    orderIndex := orderIndex
    flip := SpinSign.minus
    sourceSpin := sourceSpin
    targetSpin := !sourceSpin
    flipLaw := by
      cases sourceSpin <;> rfl
    coefficient := -1
    binomialCoefficientDeclared := true }

/-- A positive binomial flip term preserves spin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebe8f66fede5a169592982d5d42c0a95c19ee22b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
