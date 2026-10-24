# finiteFeatureKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd1c1e4041c722b808f82aa4172d5b0346d76ef4ffd41eba95a9774d0a56aa4f",
  "kind": "def",
  "lexical_name": "finiteFeatureKernel",
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
  "slug": "finitefeaturekernel--bee5603893024bfb9939ffa0",
  "source": {
    "blob": "67a83eef4f2d5d7c21e47a36ab94647326ee22bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 27,
    "path": "GRWTSK/Analysis/A295bc15cf0e08b9e/Variantf2f65c4ee14de8e7c58dc6a5f0433ebc47ba450950d1787e2c980ebbf9c2d5ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bee5603893024bfb9939ffa0ed1b1e5e51cef71568a1b5d21e10d65b6ec46e94",
  "verification": {
    "reference": "docs/verification/Analysis/A295bc15cf0e08b9e/Variantf2f65c4ee14de8e7c58dc6a5f0433ebc47ba450950d1787e2c980ebbf9c2d5ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd1c1e4041c722b808f82aa4172d5b0346d76ef4ffd41eba95a9774d0a56aa4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteFeatureKernel
    {Feature : Type} [Fintype Feature]
    (feature : Index → Feature → ℂ) : PositiveKernel Index where
  matrix := ∑ coordinate,
    (scalarFeatureKernel (fun index => feature index coordinate)).matrix
  positiveSemidefinite := Matrix.posSemidef_sum Finset.univ fun coordinate _ =>
    (scalarFeatureKernel
      (fun index => feature index coordinate)).positiveSemidefinite

end Mathematics.Kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/A295bc15cf0e08b9e/Variantf2f65c4ee14de8e7c58dc6a5f0433ebc47ba450950d1787e2c980ebbf9c2d5ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/A295bc15cf0e08b9e/Variantf2f65c4ee14de8e7c58dc6a5f0433ebc47ba450950d1787e2c980ebbf9c2d5ca.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67a83eef4f2d5d7c21e47a36ab94647326ee22bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
