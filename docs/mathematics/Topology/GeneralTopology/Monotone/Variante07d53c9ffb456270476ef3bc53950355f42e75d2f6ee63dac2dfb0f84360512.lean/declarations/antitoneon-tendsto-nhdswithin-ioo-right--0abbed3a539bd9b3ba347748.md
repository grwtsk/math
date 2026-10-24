# AntitoneOn.tendsto_nhdsWithin_Ioo_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d81dee74f9bc020acf1ba502c05b0d3128b019f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 510,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d159f857-322b-9aa7-39f0-156320bf5555",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f09e4ab-6805-bdd0-b3c2-91e91d5391ec",
  "kind": "lemma",
  "lexical_name": "AntitoneOn.tendsto_nhdsWithin_Ioo_right",
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
  "slug": "antitoneon-tendsto-nhdswithin-ioo-right--0abbed3a539bd9b3ba347748",
  "source": {
    "blob": "7d81dee74f9bc020acf1ba502c05b0d3128b019f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 510,
    "path": "GRWTSK/Topology/GeneralTopology/Monotone/Variante07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0abbed3a539bd9b3ba3477489bd82f76f937352816a5c8ed91aa000271d9bc69",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monotone/Variante07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f09e4ab-6805-bdd0-b3c2-91e91d5391ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AntitoneOn.tendsto_nhdsWithin_Ioo_right {α β : Type*} [LinearOrder α] [TopologicalSpace α]
    [OrderTopology α] [ConditionallyCompleteLinearOrder β] [TopologicalSpace β] [OrderTopology β]
    {f : α → β} {x y : α} (h_nonempty : (Ioo x y).Nonempty) (Af : AntitoneOn f (Ioo x y))
    (h_bdd : BddAbove (f '' Ioo x y)) :
    Tendsto f (𝓝[>] x) (𝓝 (sSup (f '' Ioo x y))) :=
  MonotoneOn.tendsto_nhdsWithin_Ioo_right h_nonempty Af.dual_right h_bdd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monotone/Variante07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monotone/Variante07d53c9ffb456270476ef3bc53950355f42e75d2f6ee63dac2dfb0f84360512.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d81dee74f9bc020acf1ba502c05b0d3128b019f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
