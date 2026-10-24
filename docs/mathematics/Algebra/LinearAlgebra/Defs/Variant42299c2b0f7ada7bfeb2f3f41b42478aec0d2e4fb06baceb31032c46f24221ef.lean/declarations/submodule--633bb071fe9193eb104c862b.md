# Submodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b442537888d17ede999e3bb879763e9575531cb5f8217033d29958f6bc2dc64",
  "kind": "structure",
  "lexical_name": "Submodule",
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
  "slug": "submodule--633bb071fe9193eb104c862b",
  "source": {
    "blob": "fced5507b5bf2d98b47bb92d688f7c52484edac0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 37,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:633bb071fe9193eb104c862b13a09893137daeb423c4f0a9301c48e8e0d3b5c7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b442537888d17ede999e3bb879763e9575531cb5f8217033d29958f6bc2dc64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Submodule (R : Type u) (M : Type v) [Semiring R] [AddCommMonoid M] [Module R M] : Type v
    extends AddSubmonoid M, SubMulAction R M

/-- Reinterpret a `Submodule` as an `AddSubmonoid`. -/
add_decl_doc Submodule.toAddSubmonoid

/-- Reinterpret a `Submodule` as a `SubMulAction`. -/
add_decl_doc Submodule.toSubMulAction

namespace Submodule

variable [Semiring R] [AddCommMonoid M] [Module R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fced5507b5bf2d98b47bb92d688f7c52484edac0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
