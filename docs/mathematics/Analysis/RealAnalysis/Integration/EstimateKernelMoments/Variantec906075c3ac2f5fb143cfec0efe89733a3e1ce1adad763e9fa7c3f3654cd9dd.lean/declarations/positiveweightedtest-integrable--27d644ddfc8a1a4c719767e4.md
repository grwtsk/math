# positiveWeightedTest_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ad4610a-413f-5d9b-9c68-611d8ee02dc3",
  "kind": "theorem",
  "lexical_name": "positiveWeightedTest_integrable",
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
  "slug": "positiveweightedtest-integrable--27d644ddfc8a1a4c719767e4",
  "source": {
    "blob": "1d128e14ef5f0066e7ba5687f40b0215c225a292",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variantec906075c3ac2f5fb143cfec0efe89733a3e1ce1adad763e9fa7c3f3654cd9dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27d644ddfc8a1a4c719767e47a1697b951e23836d4bc7941d533e1d7799e4fe7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variantec906075c3ac2f5fb143cfec0efe89733a3e1ce1adad763e9fa7c3f3654cd9dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ad4610a-413f-5d9b-9c68-611d8ee02dc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveWeightedTest_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (positiveWeightedTest A) := by
  simpa [positiveWeightedTest] using
    CorrelationMoment.positive_pole_integrable A hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variantec906075c3ac2f5fb143cfec0efe89733a3e1ce1adad763e9fa7c3f3654cd9dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variantec906075c3ac2f5fb143cfec0efe89733a3e1ce1adad763e9fa7c3f3654cd9dd.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d128e14ef5f0066e7ba5687f40b0215c225a292` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
