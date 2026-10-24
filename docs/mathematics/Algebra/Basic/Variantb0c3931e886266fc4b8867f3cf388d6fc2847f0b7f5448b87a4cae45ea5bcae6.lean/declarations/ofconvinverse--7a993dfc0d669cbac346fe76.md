# ofConvInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f5244b475d1232a89c9d0a78e0e954ced9724beaed6a0e4a616c44de8c547d7",
  "kind": "abbrev",
  "lexical_name": "ofConvInverse",
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
  "slug": "ofconvinverse--7a993dfc0d669cbac346fe76",
  "source": {
    "blob": "f9ed21c55fcccd87fede17fb4cfd37b1e27fe07d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 156,
    "path": "GRWTSK/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a993dfc0d669cbac346fe767fa010aa1888a07e87a97691a7d22f8ee22f2e23",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f5244b475d1232a89c9d0a78e0e954ced9724beaed6a0e4a616c44de8c547d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ofConvInverse [CommSemiring R] [Semiring A] [Bialgebra R A]
    (antipode : A →ₗ[R] A)
    (antipode_convMul_id : toConv antipode * toConv LinearMap.id = 1)
    (id_convMul_antipode : toConv LinearMap.id * toConv antipode = 1) :
    HopfAlgebra R A where
  antipode := antipode
  mul_antipode_rTensor_comul := by simpa using! congr(($antipode_convMul_id).ofConv)
  mul_antipode_lTensor_comul := by simpa using! congr(($id_convMul_antipode).ofConv)

/-- Upgrade a commutative bialgebra to a Hopf algebra by specifying the antipode `A →ₐ[R] A`
with appropriate conditions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantb0c3931e886266fc4b8867f3cf388d6fc2847f0b7f5448b87a4cae45ea5bcae6.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9ed21c55fcccd87fede17fb4cfd37b1e27fe07d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
