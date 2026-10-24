# IsConvexSet.sUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e76b5afb-c139-e99d-661e-985f44e8e57e",
  "kind": "lemma",
  "lexical_name": "IsConvexSet.sUnion",
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
  "slug": "isconvexset-sunion--f42cb6258056ed4af36aa474",
  "source": {
    "blob": "03bc2ffa6a3e1e23da6b4041ed6a8993e8701b12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f42cb6258056ed4af36aa474125c2d8abf8eb8f031760f7be592397d0c0f75dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e76b5afb-c139-e99d-661e-985f44e8e57e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsConvexSet.sUnion {S : Set (Set X)} (hS : DirectedOn (· ⊆ ·) S)
    (hS' : ∀ s ∈ S, IsConvexSet R s) : IsConvexSet R (⋃₀ S) := by
  obtain rfl | hS'' := S.eq_empty_or_nonempty
  · simp
  rintro w hw
  obtain ⟨s, hsS, hws⟩ :=
    hS.exists_mem_subset_of_finite_of_subset_sUnion hS'' w.weights.support.finite_toSet hw
  exact mem_sUnion_of_mem (hS' s hsS hws) hsS

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03bc2ffa6a3e1e23da6b4041ed6a8993e8701b12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
