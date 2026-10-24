# thetaPhiInfiniteSourceJet_signedRegular_of_modeChoice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db02093f-b191-4857-5846-6bfd719b536a",
  "kind": "theorem",
  "lexical_name": "thetaPhiInfiniteSourceJet_signedRegular_of_modeChoice",
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
  "slug": "thetaphiinfinitesourcejet-signedregular-of-modechoice--06939690c4417fe3cd885689",
  "source": {
    "blob": "a4c772affe713513a5bd8e67e361a9c7a8da00d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 338,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06939690c4417fe3cd88568982b4a61c374e1404ab14f4a2fa8372557e016913",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db02093f-b191-4857-5846-6bfd719b536a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiInfiniteSourceJet_signedRegular_of_modeChoice
    (hmode : ThetaPhiModeChoiceSignedNonnegative)
    {t : ℝ} (ht : 0 ≤ t) :
    SignedJetRegular
      (fun n => thetaPhiInfiniteSourceJet.value n t) := by
  intro k
  change 0 ≤ signedJetDet k
    (fun n => thetaPhiDerivativeTapeValue n t)
  apply ge_of_tendsto
    (signedJetDet_truncation_tendsto k t)
  exact Filter.Eventually.of_forall
    (fun N => signedJetDet_truncation_nonnegative hmode ht)

/-- The remaining mode-polynomial sign criterion would close the all-rank
source signed-jet proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4c772affe713513a5bd8e67e361a9c7a8da00d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
