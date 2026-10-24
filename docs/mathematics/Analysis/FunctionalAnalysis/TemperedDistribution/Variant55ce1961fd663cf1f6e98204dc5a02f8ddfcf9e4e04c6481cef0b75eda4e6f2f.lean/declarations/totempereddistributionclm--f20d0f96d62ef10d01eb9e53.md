# toTemperedDistributionCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1b90849b54692e42cf893dc021829f31b4ccd776d3481cfcddea1bd1fc25893",
  "kind": "def",
  "lexical_name": "toTemperedDistributionCLM",
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
  "slug": "totempereddistributionclm--f20d0f96d62ef10d01eb9e53",
  "source": {
    "blob": "445d670615988e2472ab667e50f4dc3bbc1dc51f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 125,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TemperedDistribution/Variant55ce1961fd663cf1f6e98204dc5a02f8ddfcf9e4e04c6481cef0b75eda4e6f2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f20d0f96d62ef10d01eb9e5382f81edeb9f924025690c4c5924197ea609e0b4c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TemperedDistribution/Variant55ce1961fd663cf1f6e98204dc5a02f8ddfcf9e4e04c6481cef0b75eda4e6f2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1b90849b54692e42cf893dc021829f31b4ccd776d3481cfcddea1bd1fc25893`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toTemperedDistributionCLM (μ : Measure E := by volume_tac) [hμ : μ.HasTemperateGrowth] :
    𝓢(E, F) →L[ℂ] 𝓢'(E, F) where
  toFun f := toPointwiseConvergenceCLM _ _ _ _ <| integralCLM ℂ μ ∘L pairing (lsmul ℂ ℂ).flip f
  map_add' _ _ := by simp
  map_smul' _ _ := by simp
  cont := PointwiseConvergenceCLM.continuous_of_continuous_eval
    fun g ↦ (integralCLM ℂ μ).cont.comp <| pairing_continuous_left (lsmul ℂ ℂ).flip g

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TemperedDistribution/Variant55ce1961fd663cf1f6e98204dc5a02f8ddfcf9e4e04c6481cef0b75eda4e6f2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TemperedDistribution/Variant55ce1961fd663cf1f6e98204dc5a02f8ddfcf9e4e04c6481cef0b75eda4e6f2f.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `445d670615988e2472ab667e50f4dc3bbc1dc51f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
