# exists_ultrafilter_of_finite_inter_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b32c9e9aab3c6d59442fc5f0603246b1a8420bfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b89f1b0d-a47a-52a7-37d2-e977ea15c72e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eddf7655-8808-f9f1-8c1b-52514306c4f8",
  "kind": "theorem",
  "lexical_name": "exists_ultrafilter_of_finite_inter_nonempty",
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
  "slug": "exists-ultrafilter-of-finite-inter-nonempty--abbd6b5eed344a8a3c43fff4",
  "source": {
    "blob": "b32c9e9aab3c6d59442fc5f0603246b1a8420bfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abbd6b5eed344a8a3c43fff403b12b2e2a03aedf3ef1ce0b947c98389cced401",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eddf7655-8808-f9f1-8c1b-52514306c4f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ultrafilter_of_finite_inter_nonempty (S : Set (Set α))
    (cond : ∀ T : Finset (Set α), (↑T : Set (Set α)) ⊆ S → (⋂₀ (↑T : Set (Set α))).Nonempty) :
    ∃ F : Ultrafilter α, S ⊆ F.sets :=
  haveI : NeBot (generate S) :=
    generate_neBot_iff.2 fun _ hts ht =>
      ht.coe_toFinset ▸ cond ht.toFinset (ht.coe_toFinset.symm ▸ hts)
  ⟨of (generate S), fun _ ht => (of_le <| generate S) <| GenerateSets.basic ht⟩

end Ultrafilter

namespace Filter

open Ultrafilter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b32c9e9aab3c6d59442fc5f0603246b1a8420bfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
