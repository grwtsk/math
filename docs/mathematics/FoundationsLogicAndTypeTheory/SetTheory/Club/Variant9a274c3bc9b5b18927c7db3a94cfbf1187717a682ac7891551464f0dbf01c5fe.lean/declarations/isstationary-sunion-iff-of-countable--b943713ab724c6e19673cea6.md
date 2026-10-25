# isStationary_sUnion_iff_of_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de44ee3e3f6f2e0c7f435021ed00882976ec970f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a274c3bc9b5b18927c7db3a94cfbf1187717a682ac7891551464f0dbf01c5fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a5b903d-b6a0-870b-3d23-cbd6eff92fe7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70d4fdba-8819-d037-21b5-5a6f4b710a9b",
  "kind": "theorem",
  "lexical_name": "isStationary_sUnion_iff_of_countable",
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
  "slug": "isstationary-sunion-iff-of-countable--b943713ab724c6e19673cea6",
  "source": {
    "blob": "de44ee3e3f6f2e0c7f435021ed00882976ec970f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 317,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Club/Variant9a274c3bc9b5b18927c7db3a94cfbf1187717a682ac7891551464f0dbf01c5fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b943713ab724c6e19673cea60896e734ae482f32b84d4ac7e923d474bdfea22f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Club/Variant9a274c3bc9b5b18927c7db3a94cfbf1187717a682ac7891551464f0dbf01c5fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70d4fdba-8819-d037-21b5-5a6f4b710a9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isStationary_sUnion_iff_of_countable {s : Set (Set α)} (hα : cof α ≠ ℵ₀)
    (hsα : s.Countable) : IsStationary (⋃₀ s) ↔ ∃ x ∈ s, IsStationary x := by
  obtain hα | hα := hα.lt_or_gt
  · apply isStationary_sUnion_iff_of_cof_le_one
    rwa [← Order.cof_lt_aleph0_iff]
  · apply isStationary_sUnion_iff hα.ne' (hα.trans_le' _)
    rwa [le_aleph0_iff_set_countable]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Club/Variant9a274c3bc9b5b18927c7db3a94cfbf1187717a682ac7891551464f0dbf01c5fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Club/Variant9a274c3bc9b5b18927c7db3a94cfbf1187717a682ac7891551464f0dbf01c5fe.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de44ee3e3f6f2e0c7f435021ed00882976ec970f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
