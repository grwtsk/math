# isBoundedUnder_le_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15eeccb6a74d070379100da1c1e6a6495daac900",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 351,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7612a3743f96379ab16577c154486e9ea0e7ad1efbd81e1c2e65f95aa7665646.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7cfb8625-fa23-4197-b254-1a9afb18eb34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a8af8f4-6683-c23f-2166-dc17f1636575",
  "kind": "lemma",
  "lexical_name": "isBoundedUnder_le_add",
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
  "slug": "isboundedunder-le-add--f51881f198e513ca936ea9c7",
  "source": {
    "blob": "15eeccb6a74d070379100da1c1e6a6495daac900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 351,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7612a3743f96379ab16577c154486e9ea0e7ad1efbd81e1c2e65f95aa7665646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f51881f198e513ca936ea9c71c1a91a40ac20760345352ef634fa7c5213af4c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7612a3743f96379ab16577c154486e9ea0e7ad1efbd81e1c2e65f95aa7665646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a8af8f4-6683-c23f-2166-dc17f1636575`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBoundedUnder_le_add [Add R] [AddLeftMono R] [AddRightMono R]
    {u v : α → R} (u_bdd_le : f.IsBoundedUnder (· ≤ ·) u) (v_bdd_le : f.IsBoundedUnder (· ≤ ·) v) :
    f.IsBoundedUnder (· ≤ ·) (u + v) := by
  obtain ⟨U, hU⟩ := u_bdd_le
  obtain ⟨V, hV⟩ := v_bdd_le
  use U + V
  simp only [eventually_map, Pi.add_apply] at hU hV ⊢
  filter_upwards [hU, hV] with a hu hv using add_le_add hu hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7612a3743f96379ab16577c154486e9ea0e7ad1efbd81e1c2e65f95aa7665646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IsBounded/Variant7612a3743f96379ab16577c154486e9ea0e7ad1efbd81e1c2e65f95aa7665646.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15eeccb6a74d070379100da1c1e6a6495daac900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
