# _root_.Set.infinite_iff_exists_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d75c4a228d056203ac8ffc38ded8f466aead5a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 853,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/069bab69a40cff449e160b8568bb7987a74080ff9ef2bfff1af97e159429f235.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:388e07cf-963c-c892-5a79-71f0675d7f8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4622dde-27a0-472f-a4d3-094639ccd1aa",
  "kind": "theorem",
  "lexical_name": "_root_.Set.infinite_iff_exists_lt",
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
  "slug": "root-set-infinite-iff-exists-lt--ba10e862aa4b33b23eeabbd6",
  "source": {
    "blob": "0d75c4a228d056203ac8ffc38ded8f466aead5a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 860,
    "line": 853,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant069bab69a40cff449e160b8568bb7987a74080ff9ef2bfff1af97e159429f235.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba10e862aa4b33b23eeabbd68ac895ee7e094404a3d8ced3ab7771ec5d300517",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinite/Variant069bab69a40cff449e160b8568bb7987a74080ff9ef2bfff1af97e159429f235.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4622dde-27a0-472f-a4d3-094639ccd1aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 853–860.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Set.infinite_iff_exists_lt [Nonempty α] : s.Infinite ↔ ∀ a, ∃ b ∈ s, b < a :=
  ⟨Set.Infinite.exists_lt, Set.infinite_of_forall_exists_lt⟩
#align set.infinite_iff_exists_lt Set.infinite_iff_exists_lt

end LocallyFiniteOrderTop

variable [Fintype α] [LocallyFiniteOrderTop α] [LocallyFiniteOrderBot α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinite/Variant069bab69a40cff449e160b8568bb7987a74080ff9ef2bfff1af97e159429f235.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant069bab69a40cff449e160b8568bb7987a74080ff9ef2bfff1af97e159429f235.lean#L853).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d75c4a228d056203ac8ffc38ded8f466aead5a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
