# summable_one_div_int_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bb5bb9bfa696fafa8776e4f41dbd7c12a8948b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abad6b9a-763e-bfa2-3220-f91017c719fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3666dba2-5126-4160-84af-8592e91ebc27",
  "kind": "theorem",
  "lexical_name": "summable_one_div_int_pow",
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
  "slug": "summable-one-div-int-pow--e3d6fe3f5be700d578c22e18",
  "source": {
    "blob": "4bb5bb9bfa696fafa8776e4f41dbd7c12a8948b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 335,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3d6fe3f5be700d578c22e185e1691edaf14108ad6e62ce9886c5f90730a011e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3666dba2-5126-4160-84af-8592e91ebc27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_one_div_int_pow {p : ℕ} :
    (Summable fun n : ℤ ↦ 1 / (n : ℝ) ^ p) ↔ 1 < p := by
  refine ⟨fun h ↦ summable_one_div_nat_pow.mp (h.comp_injective Nat.cast_injective),
    fun h ↦ .of_nat_of_neg (summable_one_div_nat_pow.mpr h)
      (((summable_one_div_nat_pow.mpr h).mul_left <| 1 / (-1 : ℝ) ^ p).congr fun n ↦ ?_)⟩
  rw [Int.cast_neg, Int.cast_natCast, neg_eq_neg_one_mul (n : ℝ), mul_pow, mul_one_div, div_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bb5bb9bfa696fafa8776e4f41dbd7c12a8948b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
