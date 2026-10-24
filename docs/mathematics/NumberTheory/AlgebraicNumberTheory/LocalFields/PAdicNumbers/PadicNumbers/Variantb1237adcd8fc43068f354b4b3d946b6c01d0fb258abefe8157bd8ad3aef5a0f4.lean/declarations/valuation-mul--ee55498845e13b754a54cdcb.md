# valuation_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79040472922216be2c0d66793e3b2a3965347e9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d640a190-6ac8-73a2-ef6f-41c463e30425",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba9fa2d3-7752-16a0-e463-c06e8e0ee9a7",
  "kind": "lemma",
  "lexical_name": "valuation_mul",
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
  "slug": "valuation-mul--ee55498845e13b754a54cdcb",
  "source": {
    "blob": "79040472922216be2c0d66793e3b2a3965347e9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1115,
    "line": 1106,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee55498845e13b754a54cdcbac040de399221ed572ba4350c505e8b7445f0769",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba9fa2d3-7752-16a0-e463-c06e8e0ee9a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1106–1115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma valuation_mul {x y : ℚ_[p]} (hx : x ≠ 0) (hy : y ≠ 0) :
    (x * y).valuation = x.valuation + y.valuation := by
  have h_norm : ‖x * y‖ = ‖x‖ * ‖y‖ := norm_mul x y
  have hp_ne_one : (p : ℝ) ≠ 1 := mod_cast (Fact.out : p.Prime).ne_one
  have hp_pos : (0 : ℝ) < p := mod_cast NeZero.pos _
  rwa [norm_eq_zpow_neg_valuation hx, norm_eq_zpow_neg_valuation hy,
    norm_eq_zpow_neg_valuation (mul_ne_zero hx hy), ← zpow_add₀ hp_pos.ne',
    zpow_right_inj₀ hp_pos hp_ne_one, ← neg_add, neg_inj] at h_norm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean#L1106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79040472922216be2c0d66793e3b2a3965347e9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
