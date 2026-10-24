# instModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01780cc986cdc0b029c930d0e1553825f6e8f39b4e4da51ff7d85060004c16af",
  "kind": "instance",
  "lexical_name": "instModule",
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
  "slug": "instmodule--1dbfa97acea0f35b09b8db7d",
  "source": {
    "blob": "099007fe9e7da885ef31e4c22cecc69c4deaad52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 40,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1dbfa97acea0f35b09b8db7d3f8cab71387512935a83a0c319cbc8c5c4576bf4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01780cc986cdc0b029c930d0e1553825f6e8f39b4e4da51ff7d85060004c16af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instModule [Semiring R] [AddMonoid A] [AddCommMonoid B] [Module R B] :
    Module R (ZeroHom A B) where
  __ : MulActionWithZero _ _ := ZeroHom.instMulActionWithZero
  add_smul _ _ _ := ext fun _ => add_smul _ _ _
  smul_add _ _ _ := ext fun _ => smul_add _ _ _

end ZeroHom

/-! ### Instances for `AddMonoidHom` -/

namespace AddMonoidHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variant6b76369081f1de582bcd94fb0df9f709d0d6122d022eac049fac2caf9780ef02.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `099007fe9e7da885ef31e4c22cecc69c4deaad52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
