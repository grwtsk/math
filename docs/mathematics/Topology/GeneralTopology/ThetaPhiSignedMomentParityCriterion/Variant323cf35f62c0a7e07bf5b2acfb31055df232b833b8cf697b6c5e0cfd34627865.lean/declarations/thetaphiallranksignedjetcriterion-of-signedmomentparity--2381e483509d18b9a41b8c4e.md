# thetaPhiAllRankSignedJetCriterion_of_signedMomentParity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6ff88f2dcba32b1f40b30e40be61ff87e80f72e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 386,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/323cf35f62c0a7e07bf5b2acfb31055df232b833b8cf697b6c5e0cfd34627865.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a353cb93-ca02-144d-4b58-a957cca2d4e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60ff1cf3-f59f-f912-83b9-a058625c378b",
  "kind": "theorem",
  "lexical_name": "thetaPhiAllRankSignedJetCriterion_of_signedMomentParity",
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
  "slug": "thetaphiallranksignedjetcriterion-of-signedmomentparity--2381e483509d18b9a41b8c4e",
  "source": {
    "blob": "e6ff88f2dcba32b1f40b30e40be61ff87e80f72e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 386,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variant323cf35f62c0a7e07bf5b2acfb31055df232b833b8cf697b6c5e0cfd34627865.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2381e483509d18b9a41b8c4e48ff1e9eecd3987160ff1677a987650088e87020",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variant323cf35f62c0a7e07bf5b2acfb31055df232b833b8cf697b6c5e0cfd34627865.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60ff1cf3-f59f-f912-83b9-a058625c378b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiAllRankSignedJetCriterion_of_signedMomentParity
    (hparity : ThetaPhiSignedMomentParityCriterion) :
    ThetaPhiAllRankSignedJetCriterion := by
  refine ⟨thetaPhiInfiniteSourceJet, ?_⟩
  intro t ht k
  change 0 ≤
    signedJetDet k
      (fun n => thetaPhiDerivativeTapeValue n t)
  apply ge_of_tendsto
    (signedJetDet_truncation_tendsto k t)
  exact Filter.Eventually.of_forall
    (fun N =>
      signedJetDet_truncation_nonnegative_of_signedMomentParity
        hparity ht)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variant323cf35f62c0a7e07bf5b2acfb31055df232b833b8cf697b6c5e0cfd34627865.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variant323cf35f62c0a7e07bf5b2acfb31055df232b833b8cf697b6c5e0cfd34627865.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6ff88f2dcba32b1f40b30e40be61ff87e80f72e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
