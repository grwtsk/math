# ContinuousSemilinearMapClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6932c10a1bacb9eca67c74c7c73efa782af62615900701237d09439d9dba0d1",
  "kind": "class",
  "lexical_name": "ContinuousSemilinearMapClass",
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
  "slug": "continuoussemilinearmapclass--b221e46787014aabc9e2842e",
  "source": {
    "blob": "a64586d26f393ee65cf18c45564243fc6d91e454",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/LinearMap/Variantc168d635c296d1f44259f95f6d40f148d0f0fa7095ee6a3e776314c89c196add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b221e46787014aabc9e2842e47eb53288093ca163e417337ea69f8018c96cf6d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearMap/Variantc168d635c296d1f44259f95f6d40f148d0f0fa7095ee6a3e776314c89c196add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6932c10a1bacb9eca67c74c7c73efa782af62615900701237d09439d9dba0d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousSemilinearMapClass (F : Type*) {R S : outParam Type*} [Semiring R] [Semiring S]
    (σ : outParam <| R →+* S) (M : outParam Type*) [TopologicalSpace M] [AddCommMonoid M]
    (M₂ : outParam Type*) [TopologicalSpace M₂] [AddCommMonoid M₂] [Module R M]
    [Module S M₂] [FunLike F M M₂] : Prop
    extends SemilinearMapClass F σ M M₂, ContinuousMapClass F M M₂

/-- `ContinuousLinearMapClass F R M M₂` asserts `F` is a type of bundled continuous
`R`-linear maps `M → M₂`.  This is an abbreviation for
`ContinuousSemilinearMapClass F (RingHom.id R) M M₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearMap/Variantc168d635c296d1f44259f95f6d40f148d0f0fa7095ee6a3e776314c89c196add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearMap/Variantc168d635c296d1f44259f95f6d40f148d0f0fa7095ee6a3e776314c89c196add.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a64586d26f393ee65cf18c45564243fc6d91e454` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
