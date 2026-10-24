# estimate_of_remainingAtomWork_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64a04ff1-b94f-1557-4c89-f6f60b3dc16c",
  "kind": "theorem",
  "lexical_name": "estimate_of_remainingAtomWork_tail",
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
  "slug": "estimate-of-remainingatomwork-tail--f36411fbbeee78faf667936e",
  "source": {
    "blob": "2db2950e3ccafc6aab84bf179cf4579d68d70021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 156,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9e4f64be5bc94a5592bbSourceFirstAtomSignedWork/Variant4be675e1b33e5baa44d39530fe369ae49caa9e700a4e5ee494345965597d46a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f36411fbbeee78faf667936edb24514781d35df9264a8f64c26ee27e658f56f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9e4f64be5bc94a5592bbSourceFirstAtomSignedWork/Variant4be675e1b33e5baa44d39530fe369ae49caa9e700a4e5ee494345965597d46a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64a04ff1-b94f-1557-4c89-f6f60b3dc16c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_remainingAtomWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 40 ≤ R)
    (htail : ∀ A : ℝ, R ≤ A → -D ≤ remainingAtomWork A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_mertens_residual_tail
  refine ⟨D + 5 / 8, by linarith, R, by linarith, ?_⟩
  intro A hRA
  exact residual_upper_of_remaining_lower A D (hR.trans hRA) (htail A hRA)

end
end FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9e4f64be5bc94a5592bbSourceFirstAtomSignedWork/Variant4be675e1b33e5baa44d39530fe369ae49caa9e700a4e5ee494345965597d46a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9e4f64be5bc94a5592bbSourceFirstAtomSignedWork/Variant4be675e1b33e5baa44d39530fe369ae49caa9e700a4e5ee494345965597d46a5.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2db2950e3ccafc6aab84bf179cf4579d68d70021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
