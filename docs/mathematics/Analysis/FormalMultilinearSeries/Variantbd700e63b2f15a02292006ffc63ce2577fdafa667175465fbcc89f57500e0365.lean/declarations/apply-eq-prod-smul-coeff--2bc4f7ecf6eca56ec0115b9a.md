# apply_eq_prod_smul_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9da44c90b8c10b542c9c8bb8daa8daa4306e09e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d412c58-9775-73ce-3996-7899d2d494c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0cbd9a3-06e8-7d70-170d-a8a05ad0fba7",
  "kind": "theorem",
  "lexical_name": "apply_eq_prod_smul_coeff",
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
  "slug": "apply-eq-prod-smul-coeff--2bc4f7ecf6eca56ec0115b9a",
  "source": {
    "blob": "9da44c90b8c10b542c9c8bb8daa8daa4306e09e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 276,
    "path": "GRWTSK/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bc4f7ecf6eca56ec0115b9a7d9fcf3dd40334c371e9403df8e36d8ca1cf0d27",
  "verification": {
    "reference": "docs/verification/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0cbd9a3-06e8-7d70-170d-a8a05ad0fba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_eq_prod_smul_coeff : p n y = (∏ i, y i) • p.coeff n := by
  convert (p n).toMultilinearMap.map_smul_univ y 1
  funext
  simp only [Pi.one_apply, Algebra.id.smul_eq_mul, mul_one]
#align formal_multilinear_series.apply_eq_prod_smul_coeff FormalMultilinearSeries.apply_eq_prod_smul_coeff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da44c90b8c10b542c9c8bb8daa8daa4306e09e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
