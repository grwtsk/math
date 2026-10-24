# valuation_isEquiv_inftyValuation_of_one_lt_valuation_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c96ad746f4e844474d3d9e6518e4d7f7c7e98f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26c44a98-ebc5-6e05-5a16-f084a8b2cdf2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8ce0a5c-7ddf-c6d9-57df-94de3994631f",
  "kind": "lemma",
  "lexical_name": "valuation_isEquiv_inftyValuation_of_one_lt_valuation_X",
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
  "slug": "valuation-isequiv-inftyvaluation-of-one-lt-valuation-x--9c9453ac4aa01fc1b8acb2b9",
  "source": {
    "blob": "6c96ad746f4e844474d3d9e6518e4d7f7c7e98f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 51,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c9453ac4aa01fc1b8acb2b9e715ee49dcc517a3dc8be748c58af67094c52d59",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8ce0a5c-7ddf-c6d9-57df-94de3994631f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma valuation_isEquiv_inftyValuation_of_one_lt_valuation_X [v.IsTrivialOn K] (hlt : 1 < v X) :
    v.IsEquiv (inftyValuation K) := by
  refine isEquiv_iff_val_lt_one.mpr fun {f} ↦ ?_
  rcases eq_or_ne f 0 with rfl | hf
  · simp
  · have hlt' : 1 < inftyValuation K X := by simp [← exp_zero]
    rw [valuation_eq_valuation_X_zpow_intDegree_of_one_lt_valuation_X hlt hf,
      valuation_eq_valuation_X_zpow_intDegree_of_one_lt_valuation_X hlt' hf]
    grind [one_le_zpow_iff_right₀]

end Infinity

open IsDedekindDomain HeightOneSpectrum Set Valuation Polynomial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variantc1d55fbcd2b4c019f4207bfea9fa07d953273d98bfad28d0d175b6e48b277552.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c96ad746f4e844474d3d9e6518e4d7f7c7e98f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
