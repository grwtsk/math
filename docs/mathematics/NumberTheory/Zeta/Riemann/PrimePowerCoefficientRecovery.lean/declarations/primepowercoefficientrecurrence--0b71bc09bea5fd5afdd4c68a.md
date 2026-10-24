# PrimePowerCoefficientRecurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:959bf83aa4782a5243c200c064f8ec4d3dae39df6b594780717babbfa97f5502",
  "kind": "structure",
  "lexical_name": "PrimePowerCoefficientRecurrence",
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
  "slug": "primepowercoefficientrecurrence--0b71bc09bea5fd5afdd4c68a",
  "source": {
    "blob": "3dcc98cb1fe6c122c58e4ff2efa5b1743a77549d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b71bc09bea5fd5afdd4c68ad084be72bdcaac17c4975c2024a3b97dae4d81c7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:959bf83aa4782a5243c200c064f8ec4d3dae39df6b594780717babbfa97f5502`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimePowerCoefficientRecurrence
    (Source Local : Type*)
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local] where
  accepted : SourceBoundMechanismBridgeAccepted Source Local
  coefficientSource : ExplicitFormulaPrimePowerCoefficient
  initialEvent : Fin 3 → PrimePowerEvent
  initial_order01 :
    (initialEvent 0).natValue < (initialEvent 1).natValue
  initial_order12 :
    (initialEvent 1).natValue < (initialEvent 2).natValue
  nextEvent :
    Local → ℕ → ThreePointPackingState IsPrimePowerEventValue →
      PrimePowerEvent
  next_order :
    ∀ localData n state,
      state.thirdSource < (nextEvent localData n state).natValue

namespace PrimePowerCoefficientRecurrence

/-- Canonical specialization to the previous coordinate recurrence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PrimePowerCoefficientRecovery.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dcc98cb1fe6c122c58e4ff2efa5b1743a77549d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
