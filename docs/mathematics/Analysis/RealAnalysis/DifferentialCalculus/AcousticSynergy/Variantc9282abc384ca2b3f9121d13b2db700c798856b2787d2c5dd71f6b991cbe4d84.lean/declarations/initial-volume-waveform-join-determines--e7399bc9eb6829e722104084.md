# initial_volume_waveform_join_determines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85ee18e7-185c-50da-edbb-273e05ea46c0",
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
  "slug": "initial-volume-waveform-join-determines--e7399bc9eb6829e722104084",
  "source": {
    "blob": "4a1b3dc46dc9997bbc78692437c3dbc74f1c70dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 280,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AcousticSynergy/Variantc9282abc384ca2b3f9121d13b2db700c798856b2787d2c5dd71f6b991cbe4d84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7399bc9eb6829e722104084b48417d86f1b5fa04a0bb42753d36d7bc282ad49",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AcousticSynergy/Variantc9282abc384ca2b3f9121d13b2db700c798856b2787d2c5dd71f6b991cbe4d84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85ee18e7-185c-50da-edbb-273e05ea46c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–298.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AcousticSynergy/Variantc9282abc384ca2b3f9121d13b2db700c798856b2787d2c5dd71f6b991cbe4d84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AcousticSynergy/Variantc9282abc384ca2b3f9121d13b2db700c798856b2787d2c5dd71f6b991cbe4d84.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1b3dc46dc9997bbc78692437c3dbc74f1c70dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
