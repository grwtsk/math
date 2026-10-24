# mulEquivHaarChar_smul_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "183507d645e9f8b8b7fd8dcdff34ed2e1490f284",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d03d5bc407e8f8e675f457d6f59f95ec035852a63a8727194595a6dd33118c3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d51fabdb-96a9-4ed3-2f7c-2ed63b68bc81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7837cda3-ae06-8877-38d3-2efef5895b6e",
  "kind": "lemma",
  "lexical_name": "mulEquivHaarChar_smul_preimage",
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
  "slug": "mulequivhaarchar-smul-preimage--bb6b8fc7bbbffa486d39dc80",
  "source": {
    "blob": "183507d645e9f8b8b7fd8dcdff34ed2e1490f284",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 104,
    "path": "GRWTSK/Analysis/MeasureTheory/MulEquivHaarChar/Variantd03d5bc407e8f8e675f457d6f59f95ec035852a63a8727194595a6dd33118c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb6b8fc7bbbffa486d39dc80ea511170a06d7c38c33da5c5c48087324f457bd2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MulEquivHaarChar/Variantd03d5bc407e8f8e675f457d6f59f95ec035852a63a8727194595a6dd33118c3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7837cda3-ae06-8877-38d3-2efef5895b6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulEquivHaarChar_smul_preimage
    (μ : Measure G) [IsHaarMeasure μ] [Regular μ] {X : Set G} (φ : G ≃ₜ* G) :
    mulEquivHaarChar φ • μ (φ ⁻¹' X) = μ X := by
  nth_rw 2 [← mulEquivHaarChar_smul_map μ φ]
  simp only [Measure.smul_apply, nnreal_smul_coe_apply]
  exact congr_arg _ <| (MeasurableEquiv.map_apply φ.toMeasurableEquiv X).symm

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MulEquivHaarChar/Variantd03d5bc407e8f8e675f457d6f59f95ec035852a63a8727194595a6dd33118c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MulEquivHaarChar/Variantd03d5bc407e8f8e675f457d6f59f95ec035852a63a8727194595a6dd33118c3b.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `183507d645e9f8b8b7fd8dcdff34ed2e1490f284` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
