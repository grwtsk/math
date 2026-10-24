# addSubMapCoeff_condition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bf5a1fbb850966eb6252995608d6e1a4792e0dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be1dd8a8599c2432ce3f78d91238cde18eb9590ec6b8303100e515d6a4772fb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9932c3df-f9fe-90a2-39ba-8a8094664872",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bda51ba3-3227-42dd-1c79-852de236bd94",
  "kind": "lemma",
  "lexical_name": "addSubMapCoeff_condition",
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
  "slug": "addsubmapcoeff-condition--592203f7a03ee7ea0db352b2",
  "source": {
    "blob": "2bf5a1fbb850966eb6252995608d6e1a4792e0dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/AddSubMap/Variantbe1dd8a8599c2432ce3f78d91238cde18eb9590ec6b8303100e515d6a4772fb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:592203f7a03ee7ea0db352b2ca47cb3e9958cd9eaf9fb02b149701e5b2830108",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AddSubMap/Variantbe1dd8a8599c2432ce3f78d91238cde18eb9590ec6b8303100e515d6a4772fb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bda51ba3-3227-42dd-1c79-852de236bd94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addSubMapCoeff_condition (x : Fin 3 → R) (i : Fin 3) :
    ∑ j : Fin 3, (C (↑W.Δ'⁻¹ : R) * addSubMapCoeff W (i, j)).eval x *
      (addSubMap W j).eval x = x i ^ 4 := by
  simp only [eval_mul, eval_C, mul_assoc]
  rw [← Finset.mul_sum, Units.inv_mul_eq_iff_eq_mul, Fin.sum_univ_three, addSubMap, addSubMapCoeff,
    Function.uncurry_apply_pair, coe_Δ', Δ]
  fin_cases i <;> simp <;> grind only [b_relation]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AddSubMap/Variantbe1dd8a8599c2432ce3f78d91238cde18eb9590ec6b8303100e515d6a4772fb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AddSubMap/Variantbe1dd8a8599c2432ce3f78d91238cde18eb9590ec6b8303100e515d6a4772fb1.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bf5a1fbb850966eb6252995608d6e1a4792e0dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
