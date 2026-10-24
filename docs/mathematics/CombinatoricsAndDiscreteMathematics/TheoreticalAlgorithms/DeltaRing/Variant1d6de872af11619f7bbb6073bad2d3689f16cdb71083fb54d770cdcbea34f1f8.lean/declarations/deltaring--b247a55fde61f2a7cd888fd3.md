# DeltaRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7acd1297e2b0131e63eca20ceffd0b366ea9a7fa0ad4fc809bc8d25a1c0f9f8",
  "kind": "structure",
  "lexical_name": "DeltaRing",
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
  "slug": "deltaring--b247a55fde61f2a7cd888fd3",
  "source": {
    "blob": "a7323e4d8b37eb60d3bd96e291bd4eeaa83df359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b247a55fde61f2a7cd888fd3717c15eb62d3df91338217860e20af43d6bc706e",
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

Occurrence: `declaration:b7acd1297e2b0131e63eca20ceffd0b366ea9a7fa0ad4fc809bc8d25a1c0f9f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DeltaRing (p : Nat) where
  ops : RingOps.{u}
  delta : ops.carrier → ops.carrier
  phi : ops.carrier → ops.carrier
  phi_eq :
    ∀ x, phi x =
      ops.add (ops.pow x p) (ops.natMul p (delta x))
  delta_zero : delta ops.zero = ops.zero
  delta_one : delta ops.one = ops.zero
  delta_add_numerator_divisible :
    ∀ _ _ : ops.carrier, Prop
  delta_add_certificate :
    ∀ x y, delta_add_numerator_divisible x y
  delta_mul :
    ∀ x y,
      delta (ops.mul x y) =
        ops.add
          (ops.add
            (ops.mul (ops.pow x p) (delta y))
            (ops.mul (ops.pow y p) (delta x)))
          (ops.natMul p (ops.mul (delta x) (delta y)))
  phi_is_ring_hom : Prop
  phi_is_ring_hom_certified : phi_is_ring_hom
  phi_lifts_frobenius_mod_p : Prop
  phi_lifts_frobenius_mod_p_certified : phi_lifts_frobenius_mod_p
  certificateBoundary : List String

namespace DeltaRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7323e4d8b37eb60d3bd96e291bd4eeaa83df359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
