# rational_uniform_bound_iff_constant_uniform_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33ad2894-0b68-d244-947d-c4cf3a44cce8",
  "kind": "theorem",
  "lexical_name": "rational_uniform_bound_iff_constant_uniform_bound",
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
  "slug": "rational-uniform-bound-iff-constant-uniform-bound--9620ab44264c45a94063677c",
  "source": {
    "blob": "ad0dfd101a55b6a9d5159231b20a137086efea03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalUniformEquivalence/Varianta8c7ee9dfa895444b9cc446fdd771983f6b18dfa6113b0786ab781050585c1be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9620ab44264c45a94063677ca6b9f0131633b13948097f5deb29f666f1ec6bf7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalUniformEquivalence/Varianta8c7ee9dfa895444b9cc446fdd771983f6b18dfa6113b0786ab781050585c1be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33ad2894-0b68-d244-947d-c4cf3a44cce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rational_uniform_bound_iff_constant_uniform_bound :
    RationalRemainderTailUpperBound ↔ CompensatedNativeTailUpperBound := by
  constructor
  · rintro ⟨K, R, hR, hrem⟩
    exact ⟨K - (1 + halfEnergyValue R) * dirichletMoment 1, R, hR,
      constant_remainder_upper_of_rational hR hrem⟩
  · rintro ⟨K, R, hR, hcomp⟩
    exact ⟨K + 3 * dirichletMoment 1, R, hR,
      rational_remainder_upper_of_constant hR hcomp⟩

end
end FormalResearch.RiemannHypothesis.SourceRationalUniformEquivalence
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalUniformEquivalence/Varianta8c7ee9dfa895444b9cc446fdd771983f6b18dfa6113b0786ab781050585c1be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalUniformEquivalence/Varianta8c7ee9dfa895444b9cc446fdd771983f6b18dfa6113b0786ab781050585c1be.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad0dfd101a55b6a9d5159231b20a137086efea03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
