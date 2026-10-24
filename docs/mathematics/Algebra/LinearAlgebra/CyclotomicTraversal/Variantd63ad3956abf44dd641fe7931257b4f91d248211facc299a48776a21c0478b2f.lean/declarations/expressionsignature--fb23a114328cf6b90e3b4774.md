# ExpressionSignature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b1ba7b1f83aa9c64f97ed4fe41b53379d6843d15d876b58f7388e4f3e475a29",
  "kind": "inductive",
  "lexical_name": "ExpressionSignature",
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
  "slug": "expressionsignature--fb23a114328cf6b90e3b4774",
  "source": {
    "blob": "91177893dd34f76df0d29dad6fa7c684760e2ab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 163,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb23a114328cf6b90e3b4774ac5200ee18946982e0266f94a8930027e093d948",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b1ba7b1f83aa9c64f97ed4fe41b53379d6843d15d876b58f7388e4f3e475a29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ExpressionSignature where
  | cyclotomicReduct
  | forestExpansion
  | externalSignature
deriving Repr, DecidableEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclotomicTraversal/Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91177893dd34f76df0d29dad6fa7c684760e2ab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
