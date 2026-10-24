# thetaPhi_jet_det_nonpos_of_wronskian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5807869a-6be6-2e52-045c-c94f4e4174d1",
  "kind": "theorem",
  "lexical_name": "thetaPhi_jet_det_nonpos_of_wronskian",
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
  "slug": "thetaphi-jet-det-nonpos-of-wronskian--e1c8404fd5261816ce873a3c",
  "source": {
    "blob": "de6f846da682600aefc5b1f98d99912a8a5f5a4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 150,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1c8404fd5261816ce873a3ca9d3aa2338d4ebf1755b45391caba588ded65342",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5807869a-6be6-2e52-045c-c94f4e4174d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_jet_det_nonpos_of_wronskian
    (hw : ∀ t : ℝ, 0 ≤ t → Matrix.det
      !![thetaPhi t, deriv thetaPhi t, deriv (deriv thetaPhi) t;
        deriv thetaPhi t, deriv (deriv thetaPhi) t, thetaPhiRawD3 t;
        deriv (deriv thetaPhi) t, thetaPhiRawD3 t, thetaPhiRawD4 t] ≤ 0)
    {x y z : ℝ} (hx : 0 ≤ x) (hxy : x < y) (hyz : y < z) :
    Matrix.det !![thetaPhi x, thetaPhi y, thetaPhi z;
      deriv thetaPhi x, deriv thetaPhi y, deriv thetaPhi z;
      deriv (deriv thetaPhi) x, deriv (deriv thetaPhi) y, deriv (deriv thetaPhi) z] ≤ 0 := by
  exact source_jet_det_nonpos_of_wronskian thetaPhi (deriv thetaPhi)
    (deriv (deriv thetaPhi)) thetaPhiRawD3 thetaPhiRawD4
    (fun t _ => (hasDerivAt_thetaPhi_raw t).differentiableAt.hasDerivAt)
    (fun _ ht => (hasDerivAt_deriv_thetaPhi ht).differentiableAt.hasDerivAt)
    (fun t _ => hasDerivAt_deriv_deriv_thetaPhi t)
    (fun t _ => hasDerivAt_thetaPhiRawD3 t)
    thetaPhi_positive (fun _ ht => thetaPhi_strict_logConcavity_curvature ht) hw hx hxy hyz

/-- The Wronskian source inequality propagates through the two exact residual moments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/226d6200dbf227eae44c112d1aad229bc03ff5b652ff75bded6ff99e972beb0eRankThree01203Pa/Variant53e9129122935e7cb37b98fcedc6ee859ed354c8cf6924881302856401a5ee74.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6f846da682600aefc5b1f98d99912a8a5f5a4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
