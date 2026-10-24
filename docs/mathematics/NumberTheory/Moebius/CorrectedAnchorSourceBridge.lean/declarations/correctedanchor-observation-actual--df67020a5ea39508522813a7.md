# correctedAnchor_observation_actual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a350a0c3-d861-1e39-1a74-69b046a30f85",
  "kind": "theorem",
  "lexical_name": "correctedAnchor_observation_actual",
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
  "slug": "correctedanchor-observation-actual--df67020a5ea39508522813a7",
  "source": {
    "blob": "33a8506cd5071c138f64306149aa0bc28606e122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 104,
    "path": "GRWTSK/NumberTheory/Moebius/CorrectedAnchorSourceBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df67020a5ea39508522813a70daa3a2aea92cccc7e4a561a077b81ac0263414f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CorrectedAnchorSourceBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a350a0c3-d861-1e39-1a74-69b046a30f85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedAnchor_observation_actual {X n : ℕ} (hn : n ≤ 4*X) :
    finiteAnchorLogObservation (2*X) (correctedAnchorSource X) n = ArithmeticFunction.vonMangoldt n := by
  have he : finiteAnchorLogObservation (2*X) (correctedAnchorSource X) n =
      finiteAnchorLogObservation (2*X) moebiusReal n := by
    unfold finiteAnchorLogObservation
    apply Finset.sum_congr rfl
    intro p _
    split_ifs with hp
    · rw [correctedAnchorSource_eq_moebius hp]
    · rfl
  rw [he]
  exact finiteAnchorLogObservation_moebius (by omega)
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CorrectedAnchorSourceBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CorrectedAnchorSourceBridge.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a8506cd5071c138f64306149aa0bc28606e122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
