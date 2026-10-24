# ContinuousSemilinearEquivClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edc7535db652b85bcfe62f997f486e57190a39e65f404e4823fbe29336cd3a6e",
  "kind": "class",
  "lexical_name": "ContinuousSemilinearEquivClass",
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
  "slug": "continuoussemilinearequivclass--c40161c5abf7c195f379a9f4",
  "source": {
    "blob": "150a7877b2778ed601932e4dbb3294380b7e2b20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 69,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Equiv/Variant40b6ade3ba464dba29a90039fd227bb3d0396de89a27d004dc1b6af55cf57da8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c40161c5abf7c195f379a9f4c39b0554dceb3859c6043393264f0f770a0b6524",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Equiv/Variant40b6ade3ba464dba29a90039fd227bb3d0396de89a27d004dc1b6af55cf57da8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edc7535db652b85bcfe62f997f486e57190a39e65f404e4823fbe29336cd3a6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousSemilinearEquivClass (F : Type*) {R : outParam Type*} {S : outParam Type*}
    [Semiring R] [Semiring S] (σ : outParam <| R →+* S) {σ' : outParam <| S →+* R}
    [RingHomInvPair σ σ'] [RingHomInvPair σ' σ] (M : outParam Type*) [TopologicalSpace M]
    [AddCommMonoid M] (M₂ : outParam Type*) [TopologicalSpace M₂] [AddCommMonoid M₂] [Module R M]
    [Module S M₂] [EquivLike F M M₂] : Prop extends SemilinearEquivClass F σ M M₂ where
  map_continuous : ∀ f : F, Continuous f := by first | fun_prop | dsimp; fun_prop
  inv_continuous : ∀ f : F, Continuous (EquivLike.inv f) := by first | fun_prop | dsimp; fun_prop

attribute [inherit_doc ContinuousSemilinearEquivClass]
ContinuousSemilinearEquivClass.map_continuous
ContinuousSemilinearEquivClass.inv_continuous

/-- `ContinuousLinearEquivClass F σ M M₂` asserts `F` is a type of bundled continuous
`R`-linear equivs `M → M₂`. This is an abbreviation for
`ContinuousSemilinearEquivClass F (RingHom.id R) M M₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Equiv/Variant40b6ade3ba464dba29a90039fd227bb3d0396de89a27d004dc1b6af55cf57da8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Equiv/Variant40b6ade3ba464dba29a90039fd227bb3d0396de89a27d004dc1b6af55cf57da8.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150a7877b2778ed601932e4dbb3294380b7e2b20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
