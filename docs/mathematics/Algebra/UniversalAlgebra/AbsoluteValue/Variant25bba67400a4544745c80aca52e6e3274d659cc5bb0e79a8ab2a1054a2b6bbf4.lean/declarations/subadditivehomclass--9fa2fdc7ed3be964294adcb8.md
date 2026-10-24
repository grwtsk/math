# subadditiveHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6eece4408afb34cabf7ad4cbfd7e21cd999d4f9bdd2040c8c5207ad3a859ac6",
  "kind": "instance",
  "lexical_name": "subadditiveHomClass",
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
  "slug": "subadditivehomclass--9fa2fdc7ed3be964294adcb8",
  "source": {
    "blob": "40c2fe4a5698d6b97a11949cf90527bcb6b6d994",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 74,
    "path": "GRWTSK/Algebra/UniversalAlgebra/AbsoluteValue/Variant25bba67400a4544745c80aca52e6e3274d659cc5bb0e79a8ab2a1054a2b6bbf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fa2fdc7ed3be964294adcb88e7b26457fd356f95000a85ccd719435349c7381",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/AbsoluteValue/Variant25bba67400a4544745c80aca52e6e3274d659cc5bb0e79a8ab2a1054a2b6bbf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6eece4408afb34cabf7ad4cbfd7e21cd999d4f9bdd2040c8c5207ad3a859ac6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subadditiveHomClass : SubadditiveHomClass (AbsoluteValue R S) R S :=
  { AbsoluteValue.zeroHomClass with map_add_le_add := fun f => f.add_le' }
#align absolute_value.subadditive_hom_class AbsoluteValue.subadditiveHomClass

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/AbsoluteValue/Variant25bba67400a4544745c80aca52e6e3274d659cc5bb0e79a8ab2a1054a2b6bbf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/AbsoluteValue/Variant25bba67400a4544745c80aca52e6e3274d659cc5bb0e79a8ab2a1054a2b6bbf4.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40c2fe4a5698d6b97a11949cf90527bcb6b6d994` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
