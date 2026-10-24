# PerfectPairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:921ce6e00bb7abe3f0de4fba72922f7a27846ba2d157a738bb92854375b96a6c",
  "kind": "structure",
  "lexical_name": "PerfectPairing",
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
  "slug": "perfectpairing--c63f0b6d1aad8dc3f14c0e5b",
  "source": {
    "blob": "346fb72d1d9bdf243127c698a85a2723331329c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c63f0b6d1aad8dc3f14c0e5bbe63e42d6a6889c8de842c1772cb4972c89744b9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:921ce6e00bb7abe3f0de4fba72922f7a27846ba2d157a738bb92854375b96a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PerfectPairing extends M →ₗ[R] N →ₗ[R] R where
  bijective_left : Bijective toLinearMap
  bijective_right : Bijective toLinearMap.flip

/-- The underlying bilinear map of a perfect pairing. -/
add_decl_doc PerfectPairing.toLinearMap

variable {R M N}

namespace PerfectPairing

@[deprecated (since := "2025-04-20")] alias toLin := toLinearMap
@[deprecated (since := "2025-04-20")] alias bijectiveLeft := bijective_left
@[deprecated (since := "2025-04-20")] alias bijectiveRight := bijective_right

/-- If the coefficients are a field, and one of the spaces is finite-dimensional, it is sufficient
to check only injectivity instead of bijectivity of the bilinear form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant2c223f809b326a3839abef05246fa0377ecf8505b8c2234c287f7114593f9490.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `346fb72d1d9bdf243127c698a85a2723331329c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
