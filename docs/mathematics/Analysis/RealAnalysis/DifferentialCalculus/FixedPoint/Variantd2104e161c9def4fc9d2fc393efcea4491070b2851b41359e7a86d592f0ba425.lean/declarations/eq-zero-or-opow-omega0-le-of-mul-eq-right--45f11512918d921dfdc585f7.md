# eq_zero_or_opow_omega0_le_of_mul_eq_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a308324d7d2f5407ebbe53a77e14a6687bcf1f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 453,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2104e161c9def4fc9d2fc393efcea4491070b2851b41359e7a86d592f0ba425.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fefb4513-4776-619a-d506-21ee53b62c59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1322a99-5dab-e916-f9a4-830c52770cdb",
  "kind": "theorem",
  "lexical_name": "eq_zero_or_opow_omega0_le_of_mul_eq_right",
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
  "slug": "eq-zero-or-opow-omega0-le-of-mul-eq-right--45f11512918d921dfdc585f7",
  "source": {
    "blob": "8a308324d7d2f5407ebbe53a77e14a6687bcf1f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 453,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variantd2104e161c9def4fc9d2fc393efcea4491070b2851b41359e7a86d592f0ba425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45f11512918d921dfdc585f76620ae64b89ff9ea03749b216af638a10f27a985",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variantd2104e161c9def4fc9d2fc393efcea4491070b2851b41359e7a86d592f0ba425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1322a99-5dab-e916-f9a4-830c52770cdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_or_opow_omega0_le_of_mul_eq_right {a b : Ordinal} (hab : a * b = b) :
    b = 0 ∨ a ^ ω ≤ b := by
  rcases eq_zero_or_pos a with ha | ha
  · rw [ha, zero_opow omega0_ne_zero]
    exact Or.inr (Ordinal.zero_le b)
  rw [or_iff_not_imp_left]
  intro hb
  rw [← nfp_mul_one ha]
  rw [← Ne, ← one_le_iff_ne_zero] at hb
  exact nfp_le_fp (isNormal_mul_right ha).monotone hb (le_of_eq hab)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variantd2104e161c9def4fc9d2fc393efcea4491070b2851b41359e7a86d592f0ba425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variantd2104e161c9def4fc9d2fc393efcea4491070b2851b41359e7a86d592f0ba425.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a308324d7d2f5407ebbe53a77e14a6687bcf1f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
