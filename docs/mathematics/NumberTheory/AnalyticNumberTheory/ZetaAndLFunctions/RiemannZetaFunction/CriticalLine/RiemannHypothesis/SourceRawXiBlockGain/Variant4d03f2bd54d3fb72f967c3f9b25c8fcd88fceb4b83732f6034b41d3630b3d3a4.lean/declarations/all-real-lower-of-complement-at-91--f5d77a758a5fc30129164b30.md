# all_real_lower_of_complement_at_91

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f591d95-b83f-441f-9a65-e12e537748af",
  "kind": "theorem",
  "lexical_name": "all_real_lower_of_complement_at_91",
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
  "slug": "all-real-lower-of-complement-at-91--f5d77a758a5fc30129164b30",
  "source": {
    "blob": "2048952f058708bd487862faa485845cc66d18c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRawXiBlockGain/Variant4d03f2bd54d3fb72f967c3f9b25c8fcd88fceb4b83732f6034b41d3630b3d3a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5d77a758a5fc30129164b3030bb1caac2eaf939804254f1b8b169baa8dde7ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRawXiBlockGain/Variant4d03f2bd54d3fb72f967c3f9b25c8fcd88fceb4b83732f6034b41d3630b3d3a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f591d95-b83f-441f-9a65-e12e537748af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_lower_of_complement_at_91 (K : ℝ)
    (hcomp : ∀ A : ℝ, 91 ≤ A → -K ≤ completeXiComplement A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower 91)
        (archimedeanMultiplier 0 - 2 * (K - blockMargin - 3 / 8 +
          criticalBaselineCorrection 91)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_lower_of_contracted_Xi (K - blockMargin)
  intro A hA
  exact contracted_pairing_lower_of_complement_raw K A (by linarith) (hcomp A hA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRawXiBlockGain/Variant4d03f2bd54d3fb72f967c3f9b25c8fcd88fceb4b83732f6034b41d3630b3d3a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRawXiBlockGain/Variant4d03f2bd54d3fb72f967c3f9b25c8fcd88fceb4b83732f6034b41d3630b3d3a4.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2048952f058708bd487862faa485845cc66d18c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
