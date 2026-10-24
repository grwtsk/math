# Algebra.IsCentral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:730304be9020f73b7c193cb39e4342426787d1fefa1428a6629c8644a2776bed",
  "kind": "class",
  "lexical_name": "Algebra.IsCentral",
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
  "slug": "algebra-iscentral--e97c6438e38ca7e37d9b902a",
  "source": {
    "blob": "84a98ab1559a55f6d12ff60637a654bf3a43a2bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 64,
    "path": "GRWTSK/Algebra/Defs/Variant273ef235944898b36833ea17646bc6ece060bcebb62cee46d3f2df3c7f273e86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e97c6438e38ca7e37d9b902a4f94f946ad229b7de21fb8f5a83eecd24c4d8be3",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant273ef235944898b36833ea17646bc6ece060bcebb62cee46d3f2df3c7f273e86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:730304be9020f73b7c193cb39e4342426787d1fefa1428a6629c8644a2776bed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Algebra.IsCentral
    (K : Type u) [CommSemiring K] (D : Type v) [Semiring D] [Algebra K D] : Prop where
  out : Subalgebra.center K D ≤ ⊥
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant273ef235944898b36833ea17646bc6ece060bcebb62cee46d3f2df3c7f273e86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant273ef235944898b36833ea17646bc6ece060bcebb62cee46d3f2df3c7f273e86.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84a98ab1559a55f6d12ff60637a654bf3a43a2bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
