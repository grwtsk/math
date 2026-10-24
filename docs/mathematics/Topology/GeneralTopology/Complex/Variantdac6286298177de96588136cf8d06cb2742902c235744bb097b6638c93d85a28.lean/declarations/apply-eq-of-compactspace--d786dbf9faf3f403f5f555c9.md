# apply_eq_of_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c8de129-7204-a93c-a69b-e55e9e747062",
  "kind": "theorem",
  "lexical_name": "apply_eq_of_compactSpace",
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
  "slug": "apply-eq-of-compactspace--d786dbf9faf3f403f5f555c9",
  "source": {
    "blob": "fcb280baacb9c0afdb38e10353ae5a9112ae863b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 169,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d786dbf9faf3f403f5f555c9751e7e2d5903f91f44940c1a124c46b188994fbb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c8de129-7204-a93c-a69b-e55e9e747062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_eq_of_compactSpace [PreconnectedSpace M] {f : M → F}
    (hf : MDifferentiable I 𝓘(ℂ, F) f) (a b : M) : f a = f b :=
  hf.isLocallyConstant.apply_eq_of_preconnectedSpace _ _

/-- A holomorphic function on a compact connected complex manifold is the constant function `f ≡ v`,
for some value `v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variantdac6286298177de96588136cf8d06cb2742902c235744bb097b6638c93d85a28.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcb280baacb9c0afdb38e10353ae5a9112ae863b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
