# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9906919a752ab2206df94062d6fb324cc7425742386c8ce151e078cf538c55e0",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e0dbcf3f41d518da51e360b1",
  "source": {
    "blob": "717d9efdd9fa976837df0f4a34f7e472a6b41d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0dbcf3f41d518da51e360b1da987e97f3b8d73f40ced3f039acd93bb962dcb6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9906919a752ab2206df94062d6fb324cc7425742386c8ce151e078cf538c55e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {R A : Type*} [CommRing R] [StarRing R] [NormedRing A] [Algebra R A] [StarRing A]
    [ContinuousStar A] [StarModule R A] (a : A) [IsStarNormal a] :
    NormedCommRing (elementalStarAlgebra R a) :=
  { SubringClass.toNormedRing (elementalStarAlgebra R a) with
    mul_comm := mul_comm }

-- porting note: these hack instances no longer seem to be necessary
#noalign elemental_star_algebra.complex.normed_algebra

variable [CompleteSpace A] (a : A) [IsStarNormal a] (S : StarSubalgebra ℂ A)

/-- This lemma is used in the proof of `elementalStarAlgebra.isUnit_of_isUnit_of_isStarNormal`,
which in turn is the key to spectral permanence `StarSubalgebra.spectrum_eq`, which is itself
necessary for the continuous functional calculus. Using the continuous functional calculus, this
lemma can be superseded by one that omits the `IsStarNormal` hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantbe6fcf26527e6087e0f0695f8da7811f2b06e2f6a0cc86bbb1809900b38aabf7.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `717d9efdd9fa976837df0f4a34f7e472a6b41d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
