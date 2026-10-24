# monotone_stabilizes_iff_artinian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48d605f5-74a0-205e-bd98-e7f6d87a6320",
  "kind": "theorem",
  "lexical_name": "monotone_stabilizes_iff_artinian",
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
  "slug": "monotone-stabilizes-iff-artinian--2631cd60e1e83fb8e45d4b33",
  "source": {
    "blob": "61c0cd58309d73f1534b886ca268160b1522c938",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 204,
    "path": "GRWTSK/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2631cd60e1e83fb8e45d4b338ce4cd5db25ed825c8f45e5c7a0b64636e6457a7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48d605f5-74a0-205e-bd98-e7f6d87a6320`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monotone_stabilizes_iff_artinian :
    (∀ f : ℕ →o (Submodule R M)ᵒᵈ, ∃ n, ∀ m, n ≤ m → f n = f m) ↔ IsArtinian R M := by
  rw [isArtinian_iff_wellFounded]
  exact WellFounded.monotone_chain_condition.symm
#align monotone_stabilizes_iff_artinian monotone_stabilizes_iff_artinian

namespace IsArtinian

variable [IsArtinian R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Artinian/Variant88294d1d399540e236c407df44afd440201023e5209ee6da1e8bb7188769b9b2.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c0cd58309d73f1534b886ca268160b1522c938` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
