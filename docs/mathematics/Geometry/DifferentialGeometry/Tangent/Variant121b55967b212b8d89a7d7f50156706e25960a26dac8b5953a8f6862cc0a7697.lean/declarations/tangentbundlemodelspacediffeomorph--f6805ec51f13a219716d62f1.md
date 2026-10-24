# tangentBundleModelSpaceDiffeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9e8322a6212b08fb62cabf7ca05480be10828516d6d0e19e4efbf9c6cb8c6fd",
  "kind": "def",
  "lexical_name": "tangentBundleModelSpaceDiffeomorph",
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
  "slug": "tangentbundlemodelspacediffeomorph--f6805ec51f13a219716d62f1",
  "source": {
    "blob": "9f3742a281a99612c9bb892f43f93d11308a7a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 128,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6805ec51f13a219716d62f1ee0ff1ba5449eae6dade243a92b15718bed1e4c6",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9e8322a6212b08fb62cabf7ca05480be10828516d6d0e19e4efbf9c6cb8c6fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tangentBundleModelSpaceDiffeomorph (n : ℕ∞) :
    TangentBundle I H ≃ₘ^n⟮I.tangent, I.prod 𝓘(𝕜, E)⟯ ModelProd H E where
  __ := TotalSpace.toProd H E
  contMDiff_toFun := contMDiff_tangentBundleModelSpaceHomeomorph
  contMDiff_invFun := contMDiff_tangentBundleModelSpaceHomeomorph_symm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant121b55967b212b8d89a7d7f50156706e25960a26dac8b5953a8f6862cc0a7697.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f3742a281a99612c9bb892f43f93d11308a7a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
