# module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1488d8632fbd9757462d0e55a279623c537bdfd175d91627c2595f4cf04b4998",
  "kind": "instance",
  "lexical_name": "module",
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
  "slug": "module--8a6e1e92b73ed1f11deccf2f",
  "source": {
    "blob": "cbcb9eae8a531123740efa3b49cdbf94d0703b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 121,
    "path": "GRWTSK/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a6e1e92b73ed1f11deccf2f28e70d0056402a1c1af0a7e96201ca72f10dc8db",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1488d8632fbd9757462d0e55a279623c537bdfd175d91627c2595f4cf04b4998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance module [Semiring R] [AddCommMonoid M] [Module R M] : Module (ULift R) M :=
  { ULift.smulWithZero with
    add_smul := fun _ _ => add_smul _ _
    smul_add := smul_add
    one_smul := one_smul _
    mul_smul := mul_smul }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ULift/Variante3f55e4d73662c9b64deaea5b31dfc2eb6653dbceb2542b58a3035f9226655da.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbcb9eae8a531123740efa3b49cdbf94d0703b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
