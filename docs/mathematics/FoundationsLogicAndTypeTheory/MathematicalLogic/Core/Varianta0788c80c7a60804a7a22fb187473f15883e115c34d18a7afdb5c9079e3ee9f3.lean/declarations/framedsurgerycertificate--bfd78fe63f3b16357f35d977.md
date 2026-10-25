# FramedSurgeryCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:352b41dad75949e1388dbeb06d3e580bd8839f6ee0ac9c2ebdb7fbadfd39418d",
  "kind": "structure",
  "lexical_name": "FramedSurgeryCertificate",
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
  "slug": "framedsurgerycertificate--bfd78fe63f3b16357f35d977",
  "source": {
    "blob": "4a71178157f432c03afb416a36e1ac691a893a55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfd78fe63f3b16357f35d9771cac5ec2dd05cff3ca58fa09364b2dd4ae39072b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:352b41dad75949e1388dbeb06d3e580bd8839f6ee0ac9c2ebdb7fbadfd39418d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FramedSurgeryCertificate
    (T : SmoothFramedSurgeryTheory)
    (R : Type uH) [CommRing R]
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M) where
  ambientDimension : Nat
  dimension_eq : ambientDimension = p + q
  q_pos : 0 < q
  trace : T.Trace M (T.surgery embedding)
  trace_relative_boundary : T.TraceBoundaryRelative trace
  incomingRelative : SingleHandleRelativeInvariant R (p + 1)
  dualRelative : SingleHandleRelativeInvariant R q

namespace FramedSurgeryCertificate

variable
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}

/--
The handle has index `p + 1` in a trace of dimension `ambientDimension + 1`;
its complementary (dual) index is exactly `q`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a71178157f432c03afb416a36e1ac691a893a55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
