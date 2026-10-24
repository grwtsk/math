# MonoidHom.coeToOneHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20456caf8447494fc54bd0d131f8f23c1ccfc8404b0d1e0129146dda573fb0e3",
  "kind": "instance",
  "lexical_name": "MonoidHom.coeToOneHom",
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
  "slug": "monoidhom-coetoonehom--00f023b59078e0d9c8c96500",
  "source": {
    "blob": "1c61d344e5dfa13d6c2c2af05988bb19768bccf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 531,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant75c37312a35d159fe1ebbb09629516f92fc6bb49a528fb71e19755330f1bac2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00f023b59078e0d9c8c96500cc22e9c9e94148b706add35532b11210bf012bbe",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant75c37312a35d159fe1ebbb09629516f92fc6bb49a528fb71e19755330f1bac2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20456caf8447494fc54bd0d131f8f23c1ccfc8404b0d1e0129146dda573fb0e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance MonoidHom.coeToOneHom [MulOne M] [MulOne N] : Coe (M →* N) (OneHom M N) :=
  ⟨MonoidHom.toOneHom⟩

attribute [coe] MonoidHom.toMulHom
attribute [coe] AddMonoidHom.toAddHom

/-- `MonoidHom` down-cast to a `MulHom`, forgetting the 1-preserving property. -/
@[to_additive /-- `AddMonoidHom` down-cast to an `AddHom`, forgetting the 0-preserving property. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant75c37312a35d159fe1ebbb09629516f92fc6bb49a528fb71e19755330f1bac2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant75c37312a35d159fe1ebbb09629516f92fc6bb49a528fb71e19755330f1bac2b.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c61d344e5dfa13d6c2c2af05988bb19768bccf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
