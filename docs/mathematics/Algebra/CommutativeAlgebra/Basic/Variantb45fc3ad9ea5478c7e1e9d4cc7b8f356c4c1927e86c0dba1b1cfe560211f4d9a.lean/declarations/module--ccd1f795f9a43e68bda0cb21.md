# module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:444d2a62ecfbf708cc6a8ce03d29c1a1b4b7dd0bde5a47a47da130f8f3b1cd78",
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
  "slug": "module--ccd1f795f9a43e68bda0cb21",
  "source": {
    "blob": "b6adaa591a1a88222c979e83886e4b3656700533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 321,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantb45fc3ad9ea5478c7e1e9d4cc7b8f356c4c1927e86c0dba1b1cfe560211f4d9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccd1f795f9a43e68bda0cb21263eed52db30f73d86a24643efba99dc692584c1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantb45fc3ad9ea5478c7e1e9d4cc7b8f356c4c1927e86c0dba1b1cfe560211f4d9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:444d2a62ecfbf708cc6a8ce03d29c1a1b4b7dd0bde5a47a47da130f8f3b1cd78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance module {S} [Semiring S] [Module S R] : Module S R[X] :=
  Function.Injective.module _ ⟨⟨toFinsupp, toFinsupp_zero⟩, toFinsupp_add⟩ toFinsupp_injective
    toFinsupp_smul
#align polynomial.module Polynomial.module

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantb45fc3ad9ea5478c7e1e9d4cc7b8f356c4c1927e86c0dba1b1cfe560211f4d9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantb45fc3ad9ea5478c7e1e9d4cc7b8f356c4c1927e86c0dba1b1cfe560211f4d9a.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6adaa591a1a88222c979e83886e4b3656700533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
