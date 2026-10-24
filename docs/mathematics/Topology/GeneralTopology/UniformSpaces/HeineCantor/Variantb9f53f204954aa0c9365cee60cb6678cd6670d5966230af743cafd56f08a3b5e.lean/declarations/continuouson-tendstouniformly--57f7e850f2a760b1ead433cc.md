# ContinuousOn.tendstoUniformly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9140cb9a687da21eae277578b7631f29c9165f07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b257476-5d9b-47ca-8f5f-42ef813d864e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb2d6de1-337c-b67e-82cf-9b03159dd593",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.tendstoUniformly",
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
  "slug": "continuouson-tendstouniformly--57f7e850f2a760b1ead433cc",
  "source": {
    "blob": "9140cb9a687da21eae277578b7631f29c9165f07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57f7e850f2a760b1ead433cc6150058999227bec770f593ef87ffff01d47437d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb2d6de1-337c-b67e-82cf-9b03159dd593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.tendstoUniformly [LocallyCompactSpace α] [CompactSpace β] [UniformSpace γ]
    {f : α → β → γ} {x : α} {U : Set α} (hxU : U ∈ 𝓝 x) (h : ContinuousOn (↿f) (U ×ˢ univ)) :
    TendstoUniformly f (f x) (𝓝 x) := by
  rcases LocallyCompactSpace.local_compact_nhds _ _ hxU with ⟨K, hxK, hKU, hK⟩
  have : UniformContinuousOn (↿f) (K ×ˢ univ) :=
    IsCompact.uniformContinuousOn_of_continuous (hK.prod isCompact_univ)
      (h.mono <| prod_mono hKU Subset.rfl)
  exact this.tendstoUniformly hxK

/-- A continuous family of functions `α → β → γ` tends uniformly to its value at `x`
if `α` is weakly locally compact and `β` is compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9140cb9a687da21eae277578b7631f29c9165f07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
