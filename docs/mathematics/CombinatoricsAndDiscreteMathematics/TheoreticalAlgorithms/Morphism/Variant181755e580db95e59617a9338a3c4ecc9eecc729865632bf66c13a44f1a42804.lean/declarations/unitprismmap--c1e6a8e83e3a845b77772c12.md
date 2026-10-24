# unitPrismMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e56cdc26d0fe5c1cd1fcaedb73e162b8f1fc64569bce89ca5659881e942f6716",
  "kind": "def",
  "lexical_name": "unitPrismMap",
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
  "slug": "unitprismmap--c1e6a8e83e3a845b77772c12",
  "source": {
    "blob": "68c3c4e3856e2e98c8edecd753234a309cdc1bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Morphism/Variant181755e580db95e59617a9338a3c4ecc9eecc729865632bf66c13a44f1a42804.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1e6a8e83e3a845b77772c125a7906bcd8660ce266036dcbdbb6cde087240f10",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Morphism/Variant181755e580db95e59617a9338a3c4ecc9eecc729865632bf66c13a44f1a42804.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e56cdc26d0fe5c1cd1fcaedb73e162b8f1fc64569bce89ca5659881e942f6716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitPrismMap (p : Nat) :
    PrismMap (unitPrism p) (unitPrism p) where
  map := {
    map := fun _ => PUnit.unit
    preserves_zero := rfl
    preserves_one := rfl
    preserves_add := by intro x y; rfl
    preserves_mul := by intro x y; rfl
    preserves_delta := by intro x; rfl
    preserves_phi := by intro x; rfl
    homBoundary := ["Identity map of the unit δ-ring."]
  }
  maps_I_to_J := {
    maps_mem := by intro x hx; trivial
    boundary := ["Total unit ideal maps to itself."]
  }
  rigidity := {
    equality := True
    equalityCertified := trivial
    statement := "IB = J for the unit prism map"
    boundary := ["Trivial rigidity certificate for the unit prism."]
  }
  boundary := ["Unit prism identity map."]

end Surface.Prismatic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Morphism/Variant181755e580db95e59617a9338a3c4ecc9eecc729865632bf66c13a44f1a42804.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Morphism/Variant181755e580db95e59617a9338a3c4ecc9eecc729865632bf66c13a44f1a42804.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68c3c4e3856e2e98c8edecd753234a309cdc1bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
