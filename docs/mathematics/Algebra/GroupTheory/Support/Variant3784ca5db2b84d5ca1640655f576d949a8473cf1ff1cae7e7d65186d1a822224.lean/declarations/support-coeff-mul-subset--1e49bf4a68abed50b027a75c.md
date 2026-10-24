# support_coeff_mul_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5987cd4afff0aa7224bb6d4686020e93f76682d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:631946f1-29a9-e41b-4a50-67fab45bc2f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:708119ad-64a7-3818-ac30-ddda692d348d",
  "kind": "theorem",
  "lexical_name": "support_coeff_mul_subset",
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
  "slug": "support-coeff-mul-subset--1e49bf4a68abed50b027a75c",
  "source": {
    "blob": "5987cd4afff0aa7224bb6d4686020e93f76682d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 35,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e49bf4a68abed50b027a75cf1189ea662ff2b30475ce68773ea4530312cf941",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:708119ad-64a7-3818-ac30-ddda692d348d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_coeff_mul_subset [DecidableEq G] (x y : k[G]) :
    (x * y).coeff.support ⊆ x.coeff.support * y.coeff.support := by
  simp only [MonoidAlgebra.mul_def, coeff_finsuppSum]
  grw [Finsupp.support_sum, biUnion_subset]
  rintro x hx
  grw [Finsupp.support_sum, biUnion_subset]
  exact fun y hy ↦ support_single_subset.trans <| singleton_subset_iff.2 <| mem_image₂_of_mem hx hy

@[deprecated (since := "2026-06-18")] alias support_single_mul_eq_image := support_coeff_mul_subset

@[to_additive (dont_translate := k) support_coeff_single_mul_subset]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variant3784ca5db2b84d5ca1640655f576d949a8473cf1ff1cae7e7d65186d1a822224.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5987cd4afff0aa7224bb6d4686020e93f76682d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
