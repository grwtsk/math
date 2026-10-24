# IsLocalization.tensorRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c84d5b3710b7fe3e042a2f21f8c26d5c7f42f66fe0933a018b2fc295af86c54a",
  "kind": "instance",
  "lexical_name": "IsLocalization.tensorRight",
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
  "slug": "islocalization-tensorright--e80e3c70d497b815e184cf5a",
  "source": {
    "blob": "0c7dee33cb587aa0ee020b89e761413f1d2fbd99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 220,
    "path": "GRWTSK/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e80e3c70d497b815e184cf5abd5764ed646b58f0260183d0b897ff01227591c1",
  "verification": {
    "reference": "docs/verification/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c84d5b3710b7fe3e042a2f21f8c26d5c7f42f66fe0933a018b2fc295af86c54a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsLocalization.tensorRight (M : Submonoid R) [IsLocalization M A] :
    IsLocalization (Algebra.algebraMapSubmonoid S M) (A ⊗[R] S) := by
  rw [Algebra.isLocalization_iff_isPushout _ A]
  infer_instance

open Algebra.TensorProduct in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c7dee33cb587aa0ee020b89e761413f1d2fbd99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
