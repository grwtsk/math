# IsRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2da0b68ecce118f68706f9c5102f9e2d41f4980f064fdd3c665c011da56ac59a",
  "kind": "abbrev",
  "lexical_name": "IsRoot",
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
  "slug": "isroot--a2de6954a88e91c501cc4bd5",
  "source": {
    "blob": "6122bede893542c7e45486e2105864243847b480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 285,
    "path": "GRWTSK/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2de6954a88e91c501cc4bd571f8db91c07e6446653abd2a9691f350900aef0f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2da0b68ecce118f68706f9c5102f9e2d41f4980f064fdd3c665c011da56ac59a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev IsRoot :=
  IsWeight H L
#align lie_algebra.is_root LieAlgebra.IsRoot

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6122bede893542c7e45486e2105864243847b480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
