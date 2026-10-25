# preservesColimitsOfSize_of_univLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82019bfe-e6ff-ae49-98f1-fca9be72c8af",
  "kind": "lemma",
  "lexical_name": "preservesColimitsOfSize_of_univLE",
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
  "slug": "preservescolimitsofsize-of-univle--4332ea486435383378bb46b3",
  "source": {
    "blob": "5cc02bfb37f45cce7a8d2379c409378988bceca1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 369,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd3079506c68a2b7392fedf5d92ae6c9defd12c37458ff884d02525a2ce2a7e37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4332ea486435383378bb46b389c3d59a2f25f84a93c23c03d3e3925b19167baf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd3079506c68a2b7392fedf5d92ae6c9defd12c37458ff884d02525a2ce2a7e37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82019bfe-e6ff-ae49-98f1-fca9be72c8af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesColimitsOfSize_of_univLE (F : C ⥤ D) [UnivLE.{w, w'}] [UnivLE.{w₂, w₂'}]
    [PreservesColimitsOfSize.{w', w₂'} F] : PreservesColimitsOfSize.{w, w₂} F where
  preservesColimitsOfShape {J} := preservesColimitsOfShape_of_equiv
    ((ShrinkHoms.equivalence.{w'} J).trans <| Shrink.equivalence _).symm F

/--
`PreservesColimitsOfSize_shrink.{w w'} F` tries to obtain `PreservesColimitsOfSize.{w w'} F`
from some other `PreservesColimitsOfSize F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd3079506c68a2b7392fedf5d92ae6c9defd12c37458ff884d02525a2ce2a7e37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd3079506c68a2b7392fedf5d92ae6c9defd12c37458ff884d02525a2ce2a7e37.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cc02bfb37f45cce7a8d2379c409378988bceca1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
