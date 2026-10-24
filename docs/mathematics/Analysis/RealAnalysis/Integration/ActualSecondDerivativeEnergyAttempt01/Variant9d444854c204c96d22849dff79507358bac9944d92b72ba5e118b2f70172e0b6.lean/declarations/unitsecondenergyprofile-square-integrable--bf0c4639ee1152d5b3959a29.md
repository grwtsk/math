# unitSecondEnergyProfile_square_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69d605e9-96c6-2603-a697-d13ff8aab34c",
  "kind": "theorem",
  "lexical_name": "unitSecondEnergyProfile_square_integrable",
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
  "slug": "unitsecondenergyprofile-square-integrable--bf0c4639ee1152d5b3959a29",
  "source": {
    "blob": "446207f80bb0ddfae5e7b64e95ba79729cfd2cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant9d444854c204c96d22849dff79507358bac9944d92b72ba5e118b2f70172e0b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf0c4639ee1152d5b3959a299604a26439f2b8d03242d553f552f7abd4e842ee",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant9d444854c204c96d22849dff79507358bac9944d92b72ba5e118b2f70172e0b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69d605e9-96c6-2603-a697-d13ff8aab34c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitSecondEnergyProfile_square_integrable (theta : ℝ) :
    Integrable (fun x => unitSecondEnergyProfile theta x ^ 2) := by
  have hc : Continuous (fun x : ℝ => (theta * unitFourth x - unitSecond x / 4) ^ 2) := by
    unfold unitFourth unitSecond
    fun_prop
  have hi := hc.continuousOn.integrableOn_Icc (a := (-1 : ℝ)) (b := 1)
  have hh := (integrable_indicator_iff measurableSet_Icc).mpr hi
  convert hh using 1
  funext x
  simp only [unitSecondEnergyProfile, indicator_apply]
  split_ifs <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant9d444854c204c96d22849dff79507358bac9944d92b72ba5e118b2f70172e0b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant9d444854c204c96d22849dff79507358bac9944d92b72ba5e118b2f70172e0b6.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `446207f80bb0ddfae5e7b64e95ba79729cfd2cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
