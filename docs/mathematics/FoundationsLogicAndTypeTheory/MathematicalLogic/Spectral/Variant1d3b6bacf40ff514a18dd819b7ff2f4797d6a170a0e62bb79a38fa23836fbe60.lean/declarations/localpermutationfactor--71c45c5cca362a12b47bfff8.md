# LocalPermutationFactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5861746036721a3934b5533fd174ec0e2ccc5f95943df75bf7b91e1259a8b235",
  "kind": "structure",
  "lexical_name": "LocalPermutationFactor",
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
  "slug": "localpermutationfactor--71c45c5cca362a12b47bfff8",
  "source": {
    "blob": "5767952083c65b33269795936fe4e6f629f12c4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant1d3b6bacf40ff514a18dd819b7ff2f4797d6a170a0e62bb79a38fa23836fbe60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71c45c5cca362a12b47bfff84682fc4797cdb9dda119d250764b2942a63b028e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant1d3b6bacf40ff514a18dd819b7ff2f4797d6a170a0e62bb79a38fa23836fbe60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5861746036721a3934b5533fd174ec0e2ccc5f95943df75bf7b91e1259a8b235`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocalPermutationFactor
    (Fine : PermutationObserverReducer Global ρ)
    {coarseResolution : Resolution}
    (Coarse : PermutationObserverReducer Global coarseResolution) where
  project : Fine.Local → Coarse.Local
  project_surjective : Function.Surjective project
  step_commute : ∀ x,
    project (Fine.localStep x) = Coarse.localStep (project x)

namespace LocalPermutationFactor

variable
    (Fine : PermutationObserverReducer Global ρ)
    {coarseResolution : Resolution}
    (Coarse : PermutationObserverReducer Global coarseResolution)
    (F : LocalPermutationFactor Fine Coarse)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant1d3b6bacf40ff514a18dd819b7ff2f4797d6a170a0e62bb79a38fa23836fbe60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant1d3b6bacf40ff514a18dd819b7ff2f4797d6a170a0e62bb79a38fa23836fbe60.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5767952083c65b33269795936fe4e6f629f12c4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
