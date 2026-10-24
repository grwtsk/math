# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:710c7662aab5bef42daf486e4950648ad2e45bc8b758ece509267b854c352262",
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
  "slug": "example--3f0246df259f9373f4b3f1ef",
  "source": {
    "blob": "e4bd5c07b55440a26ae5910608e0a7185ba8ea7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 107,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Linarith/Variantd74186c902aa9c398f713d28a34ea85b4686778bb34ecd74556314b0e9aebf33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f0246df259f9373f4b3f1ef7b8c37b2ce724210f97f11f0cd6aa591e4013c99",
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

Occurrence: `declaration:710c7662aab5bef42daf486e4950648ad2e45bc8b758ece509267b854c352262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (g v V c h : Rat) (h1 : h = 0) (h2 : v = V) (h3 : V > 0) (h4 : g > 0)
    (h5 : 0 ≤ c) (h6 : c < 1) : v ≤ V := by
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Linarith/Variantd74186c902aa9c398f713d28a34ea85b4686778bb34ecd74556314b0e9aebf33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Linarith/Variantd74186c902aa9c398f713d28a34ea85b4686778bb34ecd74556314b0e9aebf33.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4bd5c07b55440a26ae5910608e0a7185ba8ea7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
