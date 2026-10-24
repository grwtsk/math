# smulMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8372a0d3ff3ea63c2d62c5d7a6677f098669facb91d4fc7a5aa9e9f3f709dd30",
  "kind": "def",
  "lexical_name": "smulMonoidHom",
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
  "slug": "smulmonoidhom--d8ba795b89dd9a55aca4fba0",
  "source": {
    "blob": "f7884ced08a5b2abb658f5f7ebfd1f93a44cb654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 107,
    "path": "GRWTSK/Algebra/GroupTheory/Prod/Varianta2140ac4e7eb2525782e31aec23549192b3a8252fae0abab0b1f9fc0df8aba64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8ba795b89dd9a55aca4fba0ba02cc6a2f9dc2e9c795c70cefafde180de9bcf5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Prod/Varianta2140ac4e7eb2525782e31aec23549192b3a8252fae0abab0b1f9fc0df8aba64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8372a0d3ff3ea63c2d62c5d7a6677f098669facb91d4fc7a5aa9e9f3f709dd30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smulMonoidHom [Monoid α] [MulOneClass β] [MulAction α β] [IsScalarTower α β β]
    [SMulCommClass α β β] : α × β →* β :=
  { smulMulHom with map_one' := one_smul _ _ }

end BundledSMul

section Action_by_Prod
variable (M N α) [Monoid M] [Monoid N]

/-- Construct a `MulAction` by a product monoid from `MulAction`s by the factors.
  This is not an instance to avoid diamonds for example when `α := M × N`. -/
@[to_additive AddAction.prodOfVAddCommClass
/-- Construct an `AddAction` by a product monoid from `AddAction`s by the factors.
This is not an instance to avoid diamonds for example when `α := M × N`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Prod/Varianta2140ac4e7eb2525782e31aec23549192b3a8252fae0abab0b1f9fc0df8aba64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Prod/Varianta2140ac4e7eb2525782e31aec23549192b3a8252fae0abab0b1f9fc0df8aba64.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7884ced08a5b2abb658f5f7ebfd1f93a44cb654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
