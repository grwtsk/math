# Localization.flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cae69267d107f42057597f34c5069c7c9bb9dc4675ea381c7e2e67c25c8cd6b",
  "kind": "instance",
  "lexical_name": "Localization.flat",
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
  "slug": "localization-flat--46bd8719c80f961ae15e4a6f",
  "source": {
    "blob": "2a0b16fae81a17658c9768c458b706d23865d3ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 48,
    "path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46bd8719c80f961ae15e4a6fb3e25be312506b53a50c35f020b065d9c1313cbb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cae69267d107f42057597f34c5069c7c9bb9dc4675ea381c7e2e67c25c8cd6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Localization.flat : Module.Flat R (Localization p) := IsLocalization.flat _ p

namespace Module

include p in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Localization/Variant22bec7e69e031bd91aa38b623afac5714869a6c18a163c80142007ba0b29b136.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a0b16fae81a17658c9768c458b706d23865d3ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
