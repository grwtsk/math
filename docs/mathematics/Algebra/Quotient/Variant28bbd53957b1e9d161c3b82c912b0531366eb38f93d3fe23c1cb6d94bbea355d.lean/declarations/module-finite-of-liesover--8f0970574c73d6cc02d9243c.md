# module_finite_of_liesOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51e07c3f035ddc32ddcfe1d0722cb5646181442b9754ee004c3007cc6204e450",
  "kind": "instance",
  "lexical_name": "module_finite_of_liesOver",
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
  "slug": "module-finite-of-liesover--8f0970574c73d6cc02d9243c",
  "source": {
    "blob": "a01082aeb9277f4ac22a4088729ad48adeb5743a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 19,
    "path": "GRWTSK/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f0970574c73d6cc02d9243ca12ccb4fe33133a6c10a1419a64b91661afbe4e7",
  "verification": {
    "reference": "docs/verification/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51e07c3f035ddc32ddcfe1d0722cb5646181442b9754ee004c3007cc6204e450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance module_finite_of_liesOver [Module.Finite A B] : Module.Finite (A ⧸ p) (B ⧸ P) :=
  Module.Finite.of_restrictScalars_finite A (A ⧸ p) (B ⧸ P)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quotient/Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a01082aeb9277f4ac22a4088729ad48adeb5743a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
