# actualContinuousSevenPoleRegularization_analyticAt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47286d8a-bd50-d78c-84b3-54ffb0f32e54",
  "kind": "theorem",
  "lexical_name": "actualContinuousSevenPoleRegularization_analyticAt_one",
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
  "slug": "actualcontinuoussevenpoleregularization-analyticat-one--601dd0b40bf23d5ba605be97",
  "source": {
    "blob": "4c87fa27419f3168402ef5fd90f37a616c1cd2b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 87,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt01/Variant2d889d8c5cdc7cbe8200cec676d3dac934ed79797ae03f56e82b979b753b3a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:601dd0b40bf23d5ba605be97fe085b4364cb4e9be487c0554c24a4e914a31745",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt01/Variant2d889d8c5cdc7cbe8200cec676d3dac934ed79797ae03f56e82b979b753b3a22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47286d8a-bd50-d78c-84b3-54ffb0f32e54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualContinuousSevenPoleRegularization_analyticAt_one :
    AnalyticAt ℂ actualContinuousSevenPoleRegularization 1 := by
  have hd := (Complex.differentiableOn_dslope (mem_univ _ : (Set.univ : Set ℂ) ∈ 𝓝 1)).mpr
    numerator_differentiable.differentiableOn
  exact (hd.analyticOnNhd isOpen_univ) 1 (mem_univ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt01/Variant2d889d8c5cdc7cbe8200cec676d3dac934ed79797ae03f56e82b979b753b3a22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt01/Variant2d889d8c5cdc7cbe8200cec676d3dac934ed79797ae03f56e82b979b753b3a22.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c87fa27419f3168402ef5fd90f37a616c1cd2b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
