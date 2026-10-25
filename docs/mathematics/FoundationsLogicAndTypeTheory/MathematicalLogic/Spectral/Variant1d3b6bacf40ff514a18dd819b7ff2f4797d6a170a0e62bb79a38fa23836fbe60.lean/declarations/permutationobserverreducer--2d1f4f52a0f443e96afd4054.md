# PermutationObserverReducer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bd2f7ed473118266869e9bbe1ad90ebe69bafb1ca9c0dbd41ad9c210eab6dca",
  "kind": "structure",
  "lexical_name": "PermutationObserverReducer",
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
  "slug": "permutationobserverreducer--2d1f4f52a0f443e96afd4054",
  "source": {
    "blob": "5767952083c65b33269795936fe4e6f629f12c4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant1d3b6bacf40ff514a18dd819b7ff2f4797d6a170a0e62bb79a38fa23836fbe60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d1f4f52a0f443e96afd405432401b6340c97ab618ed7a6a2e21a5957440e664",
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

Occurrence: `declaration:2bd2f7ed473118266869e9bbe1ad90ebe69bafb1ca9c0dbd41ad9c210eab6dca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PermutationObserverReducer
    {State : Type uS}
    {Resolution : Type uR}
    (Global : ReversibleSystem State Resolution)
    (ρ : Resolution) where
  Local : Type uL
  localFintype : Fintype Local
  localDecidableEq : DecidableEq Local
  reduce : State → Local
  reduce_surjective : Function.Surjective reduce
  localStep : Equiv.Perm Local
  localObserve : Local → Global.Observation ρ
  step_commute : ∀ x,
    reduce (Global.step x) = localStep (reduce x)
  observe_commute : ∀ x,
    localObserve (reduce x) = Global.observe ρ x

namespace PermutationObserverReducer

variable {State : Type uS} {Resolution : Type uR}
variable {Global : ReversibleSystem State Resolution}
variable {ρ : Resolution}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant1d3b6bacf40ff514a18dd819b7ff2f4797d6a170a0e62bb79a38fa23836fbe60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant1d3b6bacf40ff514a18dd819b7ff2f4797d6a170a0e62bb79a38fa23836fbe60.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5767952083c65b33269795936fe4e6f629f12c4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
