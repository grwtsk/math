# metrizable_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9e3ffbb-d9b1-0773-09bb-1cf97ebeb786",
  "kind": "lemma",
  "lexical_name": "metrizable_of_isCompact",
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
  "slug": "metrizable-of-iscompact--3e10cc4e851c6d9924df694e",
  "source": {
    "blob": "f9ec0f82265b578948182d0f3c97e192fd484d8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 348,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e10cc4e851c6d9924df694e6a6111b60cba8b88d0669b92daaf800d671e2638",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9e3ffbb-d9b1-0773-09bb-1cf97ebeb786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma metrizable_of_isCompact (K_cpt : IsCompact K) : TopologicalSpace.MetrizableSpace K := by
  have : CompactSpace K := isCompact_iff_compactSpace.mp K_cpt
  obtain ⟨gs, gs_cont, gs_sep⟩ := exists_countable_separating 𝕜 E
  exact Metric.PiNatEmbed.TopologicalSpace.MetrizableSpace.of_countable_separating
    (fun n k ↦ gs n k) (fun n ↦ (gs_cont n).comp continuous_subtype_val)
    fun x y hxy ↦ gs_sep <| Subtype.val_injective.ne hxy

variable [ProperSpace 𝕜]

/-- Bounded closed sets in the weak dual of a separable normed space are sequentially compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9ec0f82265b578948182d0f3c97e192fd484d8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
