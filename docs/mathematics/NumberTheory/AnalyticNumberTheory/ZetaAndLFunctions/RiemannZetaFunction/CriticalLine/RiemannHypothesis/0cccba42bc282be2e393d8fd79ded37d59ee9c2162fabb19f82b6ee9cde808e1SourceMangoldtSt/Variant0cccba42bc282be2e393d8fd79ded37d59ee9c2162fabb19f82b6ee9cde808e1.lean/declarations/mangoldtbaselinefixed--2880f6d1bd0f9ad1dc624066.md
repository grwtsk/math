# mangoldtBaselineFixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c22fe33f16afce3ccdfb27990345723a433202cf2e3724ea8cd580f929fafce8",
  "kind": "def",
  "lexical_name": "mangoldtBaselineFixed",
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
  "slug": "mangoldtbaselinefixed--2880f6d1bd0f9ad1dc624066",
  "source": {
    "blob": "9dd5b886bdbfc49bca67f67d9c0a546eb93aaa52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 196,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1SourceMangoldtSt/Variant0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2880f6d1bd0f9ad1dc62406673519ba87319471c752ef2e4dd3766c38fa1a985",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1SourceMangoldtSt/Variant0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c22fe33f16afce3ccdfb27990345723a433202cf2e3724ea8cd580f929fafce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mangoldtBaselineFixed (N : ℕ) : ℝ := finiteMangoldtBaseline (Finset.Icc 2 N)

/-- Actual source square sum for that same independently fixed cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1SourceMangoldtSt/Variant0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1SourceMangoldtSt/Variant0cccba42bc282be2e393d8fd79ded37d59ee9c2162fabb19f82b6ee9cde808e1.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dd5b886bdbfc49bca67f67d9c0a546eb93aaa52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
