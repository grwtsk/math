# pullback_cardinals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56e75ec9-c9d6-cbd2-9aa6-4418a10c20d5",
  "kind": "theorem",
  "lexical_name": "pullback_cardinals",
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
  "slug": "pullback-cardinals--3c421dc4df89af4bc2a33511",
  "source": {
    "blob": "d6a16f619a67860add493e3972a2787efdc837e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReconstructionControls/Variantfea88adc2f0cf664c7c3f3e92b75ff432e4def51f8c67e82edf2ed9917a2aa76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c421dc4df89af4bc2a33511ae7f7a1dfce96e6c57183ee71052e465d1b99a93",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/ReconstructionControls/Variantfea88adc2f0cf664c7c3f3e92b75ff432e4def51f8c67e82edf2ed9917a2aa76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56e75ec9-c9d6-cbd2-9aa6-4418a10c20d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_cardinals : #(collapse ⁻¹' singletonTarget) = 2 ∧ #singletonTarget = 1 := by
  constructor
  · rw [pullback_set_univ, Cardinal.mk_univ, Cardinal.mk_bool]
  · exact Cardinal.mk_singleton ()

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/ReconstructionControls/Variantfea88adc2f0cf664c7c3f3e92b75ff432e4def51f8c67e82edf2ed9917a2aa76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/ReconstructionControls/Variantfea88adc2f0cf664c7c3f3e92b75ff432e4def51f8c67e82edf2ed9917a2aa76.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6a16f619a67860add493e3972a2787efdc837e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
