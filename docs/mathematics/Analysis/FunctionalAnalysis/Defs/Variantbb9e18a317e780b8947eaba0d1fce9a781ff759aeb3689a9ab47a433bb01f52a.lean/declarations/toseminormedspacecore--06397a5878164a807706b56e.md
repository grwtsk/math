# toSeminormedSpaceCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59c53f0d833e2920a53d96b06c36d59b7143c86a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 429,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb9e18a317e780b8947eaba0d1fce9a781ff759aeb3689a9ab47a433bb01f52a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06b284da-9ff6-d0d9-43b6-0129a89a7d80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8715b37-8ddc-75bc-41a7-a8566623f11f",
  "kind": "lemma",
  "lexical_name": "toSeminormedSpaceCore",
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
  "slug": "toseminormedspacecore--06397a5878164a807706b56e",
  "source": {
    "blob": "59c53f0d833e2920a53d96b06c36d59b7143c86a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 429,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantbb9e18a317e780b8947eaba0d1fce9a781ff759aeb3689a9ab47a433bb01f52a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06397a5878164a807706b56e63be969b8c6a2c5fc239faf5bd314e35a807d39a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Defs/Variantbb9e18a317e780b8947eaba0d1fce9a781ff759aeb3689a9ab47a433bb01f52a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8715b37-8ddc-75bc-41a7-a8566623f11f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toSeminormedSpaceCore (c : PreInnerProductSpace.Core 𝕜 F) : SeminormedSpace.Core 𝕜 F where
  norm_nonneg x := norm_nonneg x
  norm_smul c x := by
    let : NormedSpace 𝕜 F := toNormedSpace
    exact _root_.norm_smul c x
  norm_triangle x y := norm_add_le x y

end PreInnerProductSpace.Core

section InnerProductSpace.Core

variable [AddCommGroup F] [Module 𝕜 F] [cd : InnerProductSpace.Core 𝕜 F]

local notation "⟪" x ", " y "⟫" => inner 𝕜 x y

local notation "ext_iff" => @RCLike.ext_iff 𝕜 _

/-- Inner product defined by the `InnerProductSpace.Core` structure. We can't reuse
`InnerProductSpace.Core.toInner` because it takes `InnerProductSpace.Core` as an explicit
argument. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Defs/Variantbb9e18a317e780b8947eaba0d1fce9a781ff759aeb3689a9ab47a433bb01f52a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantbb9e18a317e780b8947eaba0d1fce9a781ff759aeb3689a9ab47a433bb01f52a.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c53f0d833e2920a53d96b06c36d59b7143c86a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
