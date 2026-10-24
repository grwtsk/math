# weightedPrime_mertens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "410e5634202dca9e0a2d0446dbcdb68de3149d57",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7a8b432-191c-52e2-c3c3-a50deffab708",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e783ee4b-e434-1fdf-13c7-ae8c9cd9f64f",
  "kind": "theorem",
  "lexical_name": "weightedPrime_mertens",
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
  "slug": "weightedprime-mertens--41e6af639f87520a0ca6eca0",
  "source": {
    "blob": "410e5634202dca9e0a2d0446dbcdb68de3149d57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 263,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41e6af639f87520a0ca6eca06a1e4300e3326b8999c627d68ac47702a86e1c0a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e783ee4b-e434-1fdf-13c7-ae8c9cd9f64f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedPrime_mertens :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ, 1 ≤ N →
      |weightedPrime N - Real.log N| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := weighted_difference_uniformly_bounded
  refine ⟨Real.log 4 + 4 + C, by positivity, ?_⟩
  intro N hN
  have hwm := weightedMangoldt_mertens N hN
  have hdiff := hC N hN
  exact abs_le.mpr ⟨by linarith [(abs_le.mp hwm).1], by linarith [(abs_le.mp hwm).2]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/WeightedPrimeMertens/Variant057805101722a34dcfc8fc815e31dcc9b754c4abb34fc002c009c058dd5752cd.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410e5634202dca9e0a2d0446dbcdb68de3149d57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
