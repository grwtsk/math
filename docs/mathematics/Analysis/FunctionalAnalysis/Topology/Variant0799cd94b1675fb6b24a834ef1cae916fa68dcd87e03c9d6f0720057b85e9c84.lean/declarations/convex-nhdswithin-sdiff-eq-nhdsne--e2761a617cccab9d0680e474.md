# Convex.nhdsWithin_sdiff_eq_nhdsNE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59e6d194decf07da342fd999735eb7bf45c7e227",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 456,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/0799cd94b1675fb6b24a834ef1cae916fa68dcd87e03c9d6f0720057b85e9c84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:019e6bd1-266d-f2e0-ca4a-3c2923187352",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b17fdcea-ae6f-364d-d987-ddba5f47855d",
  "kind": "lemma",
  "lexical_name": "Convex.nhdsWithin_sdiff_eq_nhdsNE",
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
  "slug": "convex-nhdswithin-sdiff-eq-nhdsne--e2761a617cccab9d0680e474",
  "source": {
    "blob": "59e6d194decf07da342fd999735eb7bf45c7e227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 456,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Topology/Variant0799cd94b1675fb6b24a834ef1cae916fa68dcd87e03c9d6f0720057b85e9c84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2761a617cccab9d0680e474d49d9ba9fe6b0d1b75b1f47c09cfc9f5d6c84e71",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Topology/Variant0799cd94b1675fb6b24a834ef1cae916fa68dcd87e03c9d6f0720057b85e9c84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b17fdcea-ae6f-364d-d987-ddba5f47855d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Convex.nhdsWithin_sdiff_eq_nhdsNE {s : Set 𝕜} (hs : Convex 𝕜 s) {a : 𝕜}
    (has : a ∈ closure s) (h_Iio : (s ∩ Iio a).Nonempty) (h_Ioi : (s ∩ Ioi a).Nonempty) :
    𝓝[s \ {a}] a = 𝓝[≠] a := by
  rw [sdiff_eq, ← Iio_union_Ioi, inter_union_distrib_left, nhdsWithin_union, nhdsWithin_union]
  simp [hs.nhdsWithin_inter_Ioi_eq_nhdsGT has h_Ioi, hs.nhdsWithin_inter_Iio_eq_nhdsLT has h_Iio]

@[deprecated (since := "2026-06-03")]
alias Convex.nhdsWithin_diff_eq_nhdsNE := Convex.nhdsWithin_sdiff_eq_nhdsNE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Topology/Variant0799cd94b1675fb6b24a834ef1cae916fa68dcd87e03c9d6f0720057b85e9c84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Topology/Variant0799cd94b1675fb6b24a834ef1cae916fa68dcd87e03c9d6f0720057b85e9c84.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e6d194decf07da342fd999735eb7bf45c7e227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
