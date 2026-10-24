# thetaPhi_wronskian_three_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea2fe360-e960-7ae9-58ee-7fa162119f45",
  "kind": "theorem",
  "lexical_name": "thetaPhi_wronskian_three_neg",
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
  "slug": "thetaphi-wronskian-three-neg--9ed986835677c2c0f98141a1",
  "source": {
    "blob": "916ebe168ab987a16f33b03e10a84433fa306985",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1WronskianThree/Variant214f349aec64b1fdbc4eaf7a24d325f4ab0872febcda71d76731e35c97a846d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ed986835677c2c0f98141a13abea67238729557ccf8a46249a59c693c2fae6b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1WronskianThree/Variant214f349aec64b1fdbc4eaf7a24d325f4ab0872febcda71d76731e35c97a846d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea2fe360-e960-7ae9-58ee-7fa162119f45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_wronskian_three_neg {t : ℝ} (ht : 0 ≤ t) :
    Matrix.det !![
      thetaPhi t, deriv thetaPhi t, deriv (deriv thetaPhi) t;
      deriv thetaPhi t, deriv (deriv thetaPhi) t, thetaPhiRawD3 t;
      deriv (deriv thetaPhi) t, thetaPhiRawD3 t, thetaPhiRawD4 t] < 0 := by
  have h := thetaPhiJetDet_negative ht
  rw [thetaPhiJetDet_eq_matrix] at h
  simpa [thetaPhiJet] using h

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1WronskianThree/Variant214f349aec64b1fdbc4eaf7a24d325f4ab0872febcda71d76731e35c97a846d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1WronskianThree/Variant214f349aec64b1fdbc4eaf7a24d325f4ab0872febcda71d76731e35c97a846d8.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `916ebe168ab987a16f33b03e10a84433fa306985` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
