# AddValuation.map_mul

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
      "line": 1151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9de53aba-e42a-ed4f-6d0f-f37a95665855",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dff11432-119b-64ba-f848-40d7f952c611",
  "kind": "theorem",
  "lexical_name": "AddValuation.map_mul",
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
  "slug": "addvaluation-map-mul--ad5ef4aeddca2769537e62e9",
  "source": {
    "blob": "79040472922216be2c0d66793e3b2a3965347e9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1160,
    "line": 1151,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad5ef4aeddca2769537e62e93fb7d781b5bea96ed3aba496a3838e0f441ed6dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dff11432-119b-64ba-f848-40d7f952c611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1151–1160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddValuation.map_mul (x y : ℚ_[p]) :
    addValuationDef (x * y : ℚ_[p]) = addValuationDef x + addValuationDef y := by
  simp only [addValuationDef]
  by_cases hx : x = 0
  · rw [hx, ite_eq_left rfl, zero_mul, ite_eq_left rfl, WithTop.top_add]
  · by_cases hy : y = 0
    · rw [hy, ite_eq_left rfl, mul_zero, ite_eq_left rfl, WithTop.add_top]
    · rw [ite_eq_right hx, ite_eq_right hy, ite_eq_right (mul_ne_zero hx hy), ← WithTop.coe_add,
        WithTop.coe_eq_coe, valuation_mul hx hy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean#L1151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79040472922216be2c0d66793e3b2a3965347e9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
