# instIsStrictOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73c4652979b81f8f2743691315a2b2b929701c632ed0daa3e5539e26d858d392",
  "kind": "instance",
  "lexical_name": "instIsStrictOrderedRing",
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
  "slug": "instisstrictorderedring--a904efac6379c62b513816d2",
  "source": {
    "blob": "f45207533bae6c63dee158ccae56bcc45e0dfd0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variantf95c22e8f45ee58d05b3c965b5c9c16e45e2e12bccfcd81bc5a162ad0dd9e195.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a904efac6379c62b513816d26474763b155a6c96873288d3159382acd6751b10",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variantf95c22e8f45ee58d05b3c965b5c9c16e45e2e12bccfcd81bc5a162ad0dd9e195.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73c4652979b81f8f2743691315a2b2b929701c632ed0daa3e5539e26d858d392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsStrictOrderedRing [Semiring β] [PartialOrder β] [IsStrictOrderedRing β] :
    IsStrictOrderedRing β* where
  mul_lt_mul_of_pos_left x y z := inductionOn₃ x y z fun _f _g _h hfg hh ↦
    coe_lt.2 <| (coe_lt.1 hh).mp <| (coe_lt.1 hfg).mono fun _a ↦ mul_lt_mul_of_pos_left
  mul_lt_mul_of_pos_right x y z := inductionOn₃ x y z fun _f _g _h hfg hh ↦
    coe_lt.2 <| (coe_lt.1 hh).mp <| (coe_lt.1 hfg).mono fun _a ↦ mul_lt_mul_of_pos_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variantf95c22e8f45ee58d05b3c965b5c9c16e45e2e12bccfcd81bc5a162ad0dd9e195.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FilterProduct/Variantf95c22e8f45ee58d05b3c965b5c9c16e45e2e12bccfcd81bc5a162ad0dd9e195.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f45207533bae6c63dee158ccae56bcc45e0dfd0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
