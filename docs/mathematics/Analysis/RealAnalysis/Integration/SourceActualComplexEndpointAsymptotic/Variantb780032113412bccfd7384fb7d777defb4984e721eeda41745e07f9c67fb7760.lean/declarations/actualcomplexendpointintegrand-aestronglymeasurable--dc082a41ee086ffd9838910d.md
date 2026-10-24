# actualComplexEndpointIntegrand_aestronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:921ca3e2-b4d3-6873-18ff-34a4f44f6d1e",
  "kind": "theorem",
  "lexical_name": "actualComplexEndpointIntegrand_aestronglyMeasurable",
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
  "slug": "actualcomplexendpointintegrand-aestronglymeasurable--dc082a41ee086ffd9838910d",
  "source": {
    "blob": "288c655170afa005f52e1448e04a990cd6543310",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb780032113412bccfd7384fb7d777defb4984e721eeda41745e07f9c67fb7760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc082a41ee086ffd9838910dda31ff550705b5b4cb0ca9f50c73f02dc8650b2e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb780032113412bccfd7384fb7d777defb4984e721eeda41745e07f9c67fb7760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:921ca3e2-b4d3-6873-18ff-34a4f44f6d1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplexEndpointIntegrand_aestronglyMeasurable (A : ℝ) (z : ℂ) :
    AEStronglyMeasurable (actualComplexEndpointIntegrand A z)
      (volume.restrict (Ioi 0)) := by
  have hp := (endpointPolynomial_continuous A).aestronglyMeasurable
  have hi := hp.indicator measurableSet_Icc
  exact (Complex.continuous_ofReal.comp_aestronglyMeasurable hi).mul
    (by fun_prop : Continuous (fun u : ℝ => Complex.exp (-z * (u : ℂ)))).aestronglyMeasurable

/-- Every actual moving-support integrand is genuinely integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb780032113412bccfd7384fb7d777defb4984e721eeda41745e07f9c67fb7760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb780032113412bccfd7384fb7d777defb4984e721eeda41745e07f9c67fb7760.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `288c655170afa005f52e1448e04a990cd6543310` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
