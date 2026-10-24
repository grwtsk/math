# initial_volume_waveform_join_determines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66518f2315a5a2fd21d4468c34852976513ad43b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 272,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce4ae173256ec9cf7091c46b924bb7d50ab8f0c3dcd0ef0c737d65c548297716.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b24371ed-fa27-f4dc-626a-6f0c0f9d34e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8895c564-c4d5-243a-eb16-b4c5217cb38f",
  "kind": "theorem",
  "lexical_name": "initial_volume_waveform_join_determines",
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
  "slug": "initial-volume-waveform-join-determines--29cd0b064200b7c39b71db86",
  "source": {
    "blob": "66518f2315a5a2fd21d4468c34852976513ad43b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 272,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AcousticSynergy/Variantce4ae173256ec9cf7091c46b924bb7d50ab8f0c3dcd0ef0c737d65c548297716.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29cd0b064200b7c39b71db86581d76e8b0c250828bda14378d756cc2aab74f47",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AcousticSynergy/Variantce4ae173256ec9cf7091c46b924bb7d50ab8f0c3dcd0ef0c737d65c548297716.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8895c564-c4d5-243a-eb16-b4c5217cb38f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem initial_volume_waveform_join_determines (density distance initialTime : ℝ)
    (densityPositive : 0 < density) (distancePositive : 0 < distance)
    (initialIdentity waveformIdentity jointIdentity : String) :
    ((historyNotion density distance initialTime {false} initialIdentity).join
      (historyNotion density distance initialTime {true} waveformIdentity) rfl
        jointIdentity).DeterminesAt 1 historyTarget := by
  intro x y equivalent
  obtain ⟨initial, waveform⟩ :=
    (FiniteNotion.equivalent_join_iff
      (historyNotion density distance initialTime {false} initialIdentity)
      (historyNotion density distance initialTime {true} waveformIdentity)
        rfl jointIdentity 1 x y).mp equivalent
  have hi := (history_singleton_equivalent_iff _ _ _ _ _ _ _).mp initial
  have hw := (history_singleton_equivalent_iff _ _ _ _ _ _ _).mp waveform
  exact history_eq_of_waveform_initial_data density distance densityPositive distancePositive
    (historyTarget x) (historyTarget y) x.val.property.1 y.val.property.1 initialTime hw
    (congrFun hi initialTime) (x.property.trans y.property.symm)

/-- Distinct history collisions and proved joint recovery give target-relative synergy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AcousticSynergy/Variantce4ae173256ec9cf7091c46b924bb7d50ab8f0c3dcd0ef0c737d65c548297716.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AcousticSynergy/Variantce4ae173256ec9cf7091c46b924bb7d50ab8f0c3dcd0ef0c737d65c548297716.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66518f2315a5a2fd21d4468c34852976513ad43b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
