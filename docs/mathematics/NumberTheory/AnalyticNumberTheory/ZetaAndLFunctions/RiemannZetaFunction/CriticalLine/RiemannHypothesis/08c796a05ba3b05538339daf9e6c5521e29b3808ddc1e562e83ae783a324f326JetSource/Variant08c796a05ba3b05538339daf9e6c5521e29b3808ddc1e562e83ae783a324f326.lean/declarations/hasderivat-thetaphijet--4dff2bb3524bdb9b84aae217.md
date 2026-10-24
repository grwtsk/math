# hasDerivAt_thetaPhiJet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96b6b0543d0236bec9d4224f7552cc822868210b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fefc6860-9419-1556-855b-5c2c3221b282",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08a53196-4aca-a64c-6e8c-2ee0b9a6a6fc",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_thetaPhiJet",
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
  "slug": "hasderivat-thetaphijet--4dff2bb3524bdb9b84aae217",
  "source": {
    "blob": "96b6b0543d0236bec9d4224f7552cc822868210b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 126,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dff2bb3524bdb9b84aae2176d5d366e15d06959952175e2c1b5773cc01d8e1a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08a53196-4aca-a64c-6e8c-2ee0b9a6a6fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_thetaPhiJet (k : Fin 4) (t : ℝ) :
    HasDerivAt (fun u => thetaPhiJet u k.castSucc) (thetaPhiJet t k.succ) t := by
  fin_cases k
  · change HasDerivAt thetaPhi (deriv thetaPhi t) t
    exact (hasDerivAt_thetaPhi_raw t).differentiableAt.hasDerivAt
  · change HasDerivAt (deriv thetaPhi) (deriv (deriv thetaPhi) t) t
    rw [show deriv thetaPhi = thetaPhiRawD1 from funext deriv_thetaPhi_eq_raw]
    exact (hasDerivAt_thetaPhiRawD1 t).differentiableAt.hasDerivAt
  · change HasDerivAt (deriv (deriv thetaPhi)) (thetaPhiRawD3 t) t
    exact hasDerivAt_deriv_deriv_thetaPhi t
  · change HasDerivAt thetaPhiRawD3 (thetaPhiRawD4 t) t
    exact hasDerivAt_thetaPhiRawD3 t

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96b6b0543d0236bec9d4224f7552cc822868210b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
