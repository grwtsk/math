# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90b34d2e3c09207b1f7da9a9ac6cb6b9719e12f4b95cf74734a8ca90f1430d61",
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
  "slug": "instance--c1db0b64d892a859cae1193b",
  "source": {
    "blob": "bca0e24738d78f3daabbdb9fb7e66be26ced0ade",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 44,
    "path": "GRWTSK/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1db0b64d892a859cae1193b05a6c4318d8b15ed1309f9e368779cdc7e1003b0",
  "verification": {
    "reference": "docs/verification/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90b34d2e3c09207b1f7da9a9ac6cb6b9719e12f4b95cf74734a8ca90f1430d61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (X : TopCat.{w}) : Category (Presheaf.{w, v, u} C X) :=
  inferInstanceAs (Category ((Opens X)ᵒᵖ ⥤ C : Type max u v w))

variable {C}

namespace Presheaf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Presheaf/Variant9e5c8e7e3910c8fd7d5e45972a5cd873a0b1aa134a35449aac0fb566402c01f8.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bca0e24738d78f3daabbdb9fb7e66be26ced0ade` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
