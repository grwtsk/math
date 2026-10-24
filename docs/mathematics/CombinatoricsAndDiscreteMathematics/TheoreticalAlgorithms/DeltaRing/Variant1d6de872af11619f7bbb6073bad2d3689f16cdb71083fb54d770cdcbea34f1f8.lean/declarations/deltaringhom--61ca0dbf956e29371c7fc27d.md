# DeltaRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15df354ef23e8dd27aa80215914211d396b8239cabf63caaeecc000396301118",
  "kind": "structure",
  "lexical_name": "DeltaRingHom",
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
  "slug": "deltaringhom--61ca0dbf956e29371c7fc27d",
  "source": {
    "blob": "a7323e4d8b37eb60d3bd96e291bd4eeaa83df359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61ca0dbf956e29371c7fc27de354479771751fcf398f203340959ca985082385",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15df354ef23e8dd27aa80215914211d396b8239cabf63caaeecc000396301118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DeltaRingHom
    {p : Nat}
    (A B : DeltaRing p) where
  map : A.ops.carrier → B.ops.carrier
  preserves_zero : map A.ops.zero = B.ops.zero
  preserves_one : map A.ops.one = B.ops.one
  preserves_add :
    ∀ x y, map (A.ops.add x y) = B.ops.add (map x) (map y)
  preserves_mul :
    ∀ x y, map (A.ops.mul x y) = B.ops.mul (map x) (map y)
  preserves_delta :
    ∀ x, map (A.delta x) = B.delta (map x)
  preserves_phi :
    ∀ x, map (A.phi x) = B.phi (map x)
  homBoundary : List String

/-- A tiny terminal δ-ring used by examples and tests. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7323e4d8b37eb60d3bd96e291bd4eeaa83df359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
