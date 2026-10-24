# UniqueMDiffOn.bundle_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d6dbd94715a5b75332560c5a936793a9e8ffa75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd5ac106-eec7-08d1-a375-ead2798f8ad9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5d90214-c187-e90a-171d-e893dbea16e9",
  "kind": "theorem",
  "lexical_name": "UniqueMDiffOn.bundle_preimage",
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
  "slug": "uniquemdiffon-bundle-preimage--be3e1e4a1b91e264cacfdd75",
  "source": {
    "blob": "2d6dbd94715a5b75332560c5a936793a9e8ffa75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 190,
    "path": "GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be3e1e4a1b91e264cacfdd7579aeff73b5119c1617b1c84cfcc60ae584914816",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5d90214-c187-e90a-171d-e893dbea16e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniqueMDiffOn.bundle_preimage (hs : UniqueMDiffOn I s) :
    UniqueMDiffOn (I.prod 𝓘(𝕜, F)) (π F Z ⁻¹' s) := fun _p hp ↦
  (hs _ hp).bundle_preimage

@[deprecated (since := "2024-12-02")]
alias UniqueMDiffOn.smooth_bundle_preimage := UniqueMDiffOn.bundle_preimage

-- TODO: move me to `Mathlib/Geometry/Manifold/VectorBundle/MDifferentiable.lean`
variable [∀ b, AddCommMonoid (Z b)] [∀ b, Module 𝕜 (Z b)] [VectorBundle 𝕜 F Z]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d6dbd94715a5b75332560c5a936793a9e8ffa75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
