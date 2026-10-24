# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b984fa5ccf1a55c05f5788aaec3e081454a80520720f6de69aabb0da2e350d07",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ea99adf139b8c894c68bcc32",
  "source": {
    "blob": "650a5f3be8ebdb78f99f0cabb1ee44f49dab9a41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 59,
    "path": "GRWTSK/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea99adf139b8c894c68bcc329282c111120f0654542b0370f00b9da810c0c04a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b984fa5ccf1a55c05f5788aaec3e081454a80520720f6de69aabb0da2e350d07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [∀ i, SMul Mᵐᵒᵖ (α i)] [∀ i, IsCentralScalar M (α i)] : IsCentralScalar M (Σi, α i) :=
  ⟨fun a x => by
    cases x
    rw [smul_mk, smul_mk, op_smul_eq_smul]⟩

/-- This is not an instance because `i` becomes a metavariable. -/
@[to_additive "This is not an instance because `i` becomes a metavariable."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sigma/Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `650a5f3be8ebdb78f99f0cabb1ee44f49dab9a41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
