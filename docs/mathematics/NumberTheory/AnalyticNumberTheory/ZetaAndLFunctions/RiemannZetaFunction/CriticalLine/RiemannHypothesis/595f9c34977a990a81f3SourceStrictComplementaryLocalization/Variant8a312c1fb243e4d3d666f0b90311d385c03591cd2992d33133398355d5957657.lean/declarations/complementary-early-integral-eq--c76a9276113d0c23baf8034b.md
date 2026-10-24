# complementary_early_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9cc17fc-13f4-2d3d-bcca-b1717c55603a",
  "kind": "theorem",
  "lexical_name": "complementary_early_integral_eq",
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
  "slug": "complementary-early-integral-eq--c76a9276113d0c23baf8034b",
  "source": {
    "blob": "16c328249adf0e2ea54858a674f3efa7522d4fa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/595f9c34977a990a81f3SourceStrictComplementaryLocalization/Variant8a312c1fb243e4d3d666f0b90311d385c03591cd2992d33133398355d5957657.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c76a9276113d0c23baf8034bdd96d8baefbb1c826b62a5bfd12c65c6fbd6709a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/595f9c34977a990a81f3SourceStrictComplementaryLocalization/Variant8a312c1fb243e4d3d666f0b90311d385c03591cd2992d33133398355d5957657.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9cc17fc-13f4-2d3d-bcca-b1717c55603a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complementary_early_integral_eq (A : ℝ) :
    (∫ x in Ioc (1 : ℝ) (vaughanCutoff A : ℝ),
      complementaryCumulative (vaughanCutoff A) x * deriv (plainProfile A 1) x) =
      -complementaryEarlyBaseline A := by
  unfold complementaryEarlyBaseline
  rw [← integral_neg]
  apply setIntegral_congr_fun measurableSet_Ioc
  intro x hx
  dsimp only
  rw [complementaryCumulative_eq_neg_floor_of_le hx.2]
  ring

/-- Full L-B localizes into its exact early floor term and complete genuine signed tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/595f9c34977a990a81f3SourceStrictComplementaryLocalization/Variant8a312c1fb243e4d3d666f0b90311d385c03591cd2992d33133398355d5957657.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/595f9c34977a990a81f3SourceStrictComplementaryLocalization/Variant8a312c1fb243e4d3d666f0b90311d385c03591cd2992d33133398355d5957657.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c328249adf0e2ea54858a674f3efa7522d4fa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
