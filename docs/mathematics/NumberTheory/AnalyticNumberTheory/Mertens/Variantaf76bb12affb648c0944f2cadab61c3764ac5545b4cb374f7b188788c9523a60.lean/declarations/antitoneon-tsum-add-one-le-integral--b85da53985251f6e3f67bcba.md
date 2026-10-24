# AntitoneOn.tsum_add_one_le_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb56d427f4d743c7064130d3471ac0402c0faafc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af76bb12affb648c0944f2cadab61c3764ac5545b4cb374f7b188788c9523a60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5328d323-4e0b-c507-2d27-d023bc9fe137",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cea295d4-7283-bf6b-9f35-5822043edeb2",
  "kind": "theorem",
  "lexical_name": "AntitoneOn.tsum_add_one_le_integral",
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
  "slug": "antitoneon-tsum-add-one-le-integral--b85da53985251f6e3f67bcba",
  "source": {
    "blob": "fb56d427f4d743c7064130d3471ac0402c0faafc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variantaf76bb12affb648c0944f2cadab61c3764ac5545b4cb374f7b188788c9523a60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b85da53985251f6e3f67bcba9841a73e63c7878776793aa03e8e00b03e51de55",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Mertens/Variantaf76bb12affb648c0944f2cadab61c3764ac5545b4cb374f7b188788c9523a60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cea295d4-7283-bf6b-9f35-5822043edeb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AntitoneOn.tsum_add_one_le_integral (anti : AntitoneOn f (Ici 0))
    (integrable : IntegrableOn f (Ioi 0)) (nonneg : ∀ t ∈ Ioi 0, 0 ≤ f t) :
    ∑' (n : ℕ),  f (n + 1 : ℕ) ≤ ∫ x in Ioi 0, f x  := by
  apply Summable.tsum_le_of_sum_range_le
  · exact summable_nat_add_iff _|>.mpr (anti.summable_of_integrable integrable nonneg)
  · exact fun N ↦ (anti.mono Icc_subset_Ici_self).sum_range_le_integral _ integrable nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Mertens/Variantaf76bb12affb648c0944f2cadab61c3764ac5545b4cb374f7b188788c9523a60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variantaf76bb12affb648c0944f2cadab61c3764ac5545b4cb374f7b188788c9523a60.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb56d427f4d743c7064130d3471ac0402c0faafc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
