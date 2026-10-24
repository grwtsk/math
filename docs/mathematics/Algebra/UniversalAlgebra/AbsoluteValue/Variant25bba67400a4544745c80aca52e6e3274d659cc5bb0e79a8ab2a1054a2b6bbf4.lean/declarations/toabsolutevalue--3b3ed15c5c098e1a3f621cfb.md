# toAbsoluteValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1485d1da913093def386cc552b77e51a01c02d45d32c62bdadf09c9d35b60335",
  "kind": "def",
  "lexical_name": "toAbsoluteValue",
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
  "slug": "toabsolutevalue--3b3ed15c5c098e1a3f621cfb",
  "source": {
    "blob": "40c2fe4a5698d6b97a11949cf90527bcb6b6d994",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 347,
    "path": "GRWTSK/Algebra/UniversalAlgebra/AbsoluteValue/Variant25bba67400a4544745c80aca52e6e3274d659cc5bb0e79a8ab2a1054a2b6bbf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b3ed15c5c098e1a3f621cfba1898f4708287d2e7c90b676f269f88c2675bbd0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/AbsoluteValue/Variant25bba67400a4544745c80aca52e6e3274d659cc5bb0e79a8ab2a1054a2b6bbf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1485d1da913093def386cc552b77e51a01c02d45d32c62bdadf09c9d35b60335`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toAbsoluteValue : AbsoluteValue R S where
  toFun := abv
  add_le' := abv_add'
  eq_zero' _ := abv_eq_zero'
  nonneg' := abv_nonneg'
  map_mul' := abv_mul'
#align is_absolute_value.to_absolute_value IsAbsoluteValue.toAbsoluteValue
#align is_absolute_value.to_absolute_value_apply IsAbsoluteValue.toAbsoluteValue_apply
#align is_absolute_value.to_absolute_value_to_mul_hom_apply IsAbsoluteValue.toAbsoluteValue_apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/AbsoluteValue/Variant25bba67400a4544745c80aca52e6e3274d659cc5bb0e79a8ab2a1054a2b6bbf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/AbsoluteValue/Variant25bba67400a4544745c80aca52e6e3274d659cc5bb0e79a8ab2a1054a2b6bbf4.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40c2fe4a5698d6b97a11949cf90527bcb6b6d994` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
