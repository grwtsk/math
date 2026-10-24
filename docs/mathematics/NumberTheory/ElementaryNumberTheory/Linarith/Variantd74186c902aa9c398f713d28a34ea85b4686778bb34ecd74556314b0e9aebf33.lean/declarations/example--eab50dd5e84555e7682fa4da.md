# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:222d9e4a41cab60f767f2204d771be9927f3833d97894a551e78a0c70379c9fb",
  "kind": "example",
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
  "slug": "example--eab50dd5e84555e7682fa4da",
  "source": {
    "blob": "e4bd5c07b55440a26ae5910608e0a7185ba8ea7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 253,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Linarith/Variantd74186c902aa9c398f713d28a34ea85b4686778bb34ecd74556314b0e9aebf33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eab50dd5e84555e7682fa4da5e835a6e5102194b3c72aea4b0d618de67b6b430",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Linarith/Variantd74186c902aa9c398f713d28a34ea85b4686778bb34ecd74556314b0e9aebf33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:222d9e4a41cab60f767f2204d771be9927f3833d97894a551e78a0c70379c9fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (d : Rat) (q n : ℕ) (h1 : ((q : Rat) - 1)*n ≥ 0) (h2 : d = 2/3*(((q : Rat) - 1)*n)) :
    d ≤ ((q : Rat) - 1)*n := by
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Linarith/Variantd74186c902aa9c398f713d28a34ea85b4686778bb34ecd74556314b0e9aebf33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Linarith/Variantd74186c902aa9c398f713d28a34ea85b4686778bb34ecd74556314b0e9aebf33.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4bd5c07b55440a26ae5910608e0a7185ba8ea7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
