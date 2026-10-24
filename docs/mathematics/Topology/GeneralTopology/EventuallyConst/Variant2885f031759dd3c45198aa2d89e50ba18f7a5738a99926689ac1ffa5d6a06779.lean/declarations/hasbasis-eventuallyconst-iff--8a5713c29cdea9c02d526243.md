# HasBasis.eventuallyConst_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5532aa4f7c61084d71fb4ab184df1e1e0bb60289",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da5cc7ac-e277-6b72-5513-d438a7c71c56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:458e2cca-9af6-1533-32f1-13916b865749",
  "kind": "theorem",
  "lexical_name": "HasBasis.eventuallyConst_iff",
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
  "slug": "hasbasis-eventuallyconst-iff--8a5713c29cdea9c02d526243",
  "source": {
    "blob": "5532aa4f7c61084d71fb4ab184df1e1e0bb60289",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a5713c29cdea9c02d52624379ff6c55ac60c390979336f9982ee9126bd92c2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:458e2cca-9af6-1533-32f1-13916b865749`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasBasis.eventuallyConst_iff {ι : Sort*} {p : ι → Prop} {s : ι → Set α}
    (h : l.HasBasis p s) : EventuallyConst f l ↔ ∃ i, p i ∧ ∀ x ∈ s i, ∀ y ∈ s i, f x = f y :=
  (h.map f).subsingleton_iff.trans <| by simp only [Set.Subsingleton, forall_mem_image]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EventuallyConst/Variant2885f031759dd3c45198aa2d89e50ba18f7a5738a99926689ac1ffa5d6a06779.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5532aa4f7c61084d71fb4ab184df1e1e0bb60289` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
