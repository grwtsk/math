# exists_isDynCoverOf_of_isCompact_uniformContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38015c8911940b320a2cbd89df153f30f342af42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:716fc575-2eed-b7d5-0cdd-f581b402a2f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ff98f1b-112a-cef3-b207-362917fb4b03",
  "kind": "lemma",
  "lexical_name": "exists_isDynCoverOf_of_isCompact_uniformContinuous",
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
  "slug": "exists-isdyncoverof-of-iscompact-uniformcontinuous--70a25094e25d915839d566eb",
  "source": {
    "blob": "38015c8911940b320a2cbd89df153f30f342af42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 200,
    "path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70a25094e25d915839d566eb50790120da230df191d512cd689bcb72e38eaa7a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ff98f1b-112a-cef3-b207-362917fb4b03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isDynCoverOf_of_isCompact_uniformContinuous [UniformSpace X] {T : X → X} {F : Set X}
    (F_comp : IsCompact F) (h : UniformContinuous T) {U : Set (X × X)} (U_uni : U ∈ 𝓤 X) (n : ℕ) :
    ∃ s : Finset X, IsDynCoverOf T F U n s := by
  have uni_ite := dynEntourage_mem_uniformity h U_uni n
  let open_cover := fun x : X ↦ ball x (dynEntourage T U n)
  obtain ⟨s, _, s_cover⟩ := IsCompact.elim_nhds_subcover F_comp open_cover
    fun (x : X) _ ↦ ball_mem_nhds x uni_ite
  exact ⟨s, s_cover⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38015c8911940b320a2cbd89df153f30f342af42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
