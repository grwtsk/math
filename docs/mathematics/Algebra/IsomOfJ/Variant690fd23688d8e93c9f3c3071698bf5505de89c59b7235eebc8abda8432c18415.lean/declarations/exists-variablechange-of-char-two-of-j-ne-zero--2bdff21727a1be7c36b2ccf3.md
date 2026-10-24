# exists_variableChange_of_char_two_of_j_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ac9e589040b0978c8987d5ffa4ac6a8543bedd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/690fd23688d8e93c9f3c3071698bf5505de89c59b7235eebc8abda8432c18415.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbf83f46-fa78-31a2-c310-499bff006216",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3224dc49-4511-db40-be10-9d492f6b5308",
  "kind": "lemma",
  "lexical_name": "exists_variableChange_of_char_two_of_j_ne_zero",
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
  "slug": "exists-variablechange-of-char-two-of-j-ne-zero--2bdff21727a1be7c36b2ccf3",
  "source": {
    "blob": "6ac9e589040b0978c8987d5ffa4ac6a8543bedd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 34,
    "path": "GRWTSK/Algebra/IsomOfJ/Variant690fd23688d8e93c9f3c3071698bf5505de89c59b7235eebc8abda8432c18415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bdff21727a1be7c36b2ccf3ed5446cf89cc5ba46c813798307e1a066ba29919",
  "verification": {
    "reference": "docs/verification/Algebra/IsomOfJ/Variant690fd23688d8e93c9f3c3071698bf5505de89c59b7235eebc8abda8432c18415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3224dc49-4511-db40-be10-9d492f6b5308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_variableChange_of_char_two_of_j_ne_zero
    [E.IsCharTwoJNeZeroNF] [E'.IsCharTwoJNeZeroNF] (heq : E.a₆ = E'.a₆) :
    ∃ C : VariableChange F, C • E = E' := by
  obtain ⟨s, hs⟩ := IsSepClosed.exists_root_C_mul_X_pow_add_C_mul_X_add_C' 2 2
    1 1 (E.a₂ + E'.a₂) (by norm_num) (by norm_num) one_ne_zero
  use ⟨1, 0, s, 0⟩
  ext
  · simp_rw [variableChange_a₁, inv_one, Units.val_one, a₁_of_isCharTwoJNeZeroNF]
    linear_combination s * CharP.cast_eq_zero F 2
  · simp_rw [variableChange_a₂, inv_one, Units.val_one, a₁_of_isCharTwoJNeZeroNF]
    linear_combination -hs + E.a₂ * CharP.cast_eq_zero F 2
  · simp_rw [variableChange_a₃, inv_one, Units.val_one, a₃_of_isCharTwoJNeZeroNF]
    ring1
  · simp_rw [variableChange_a₄, inv_one, Units.val_one, a₃_of_isCharTwoJNeZeroNF,
      a₄_of_isCharTwoJNeZeroNF]
    ring1
  · simp_rw [variableChange_a₆, inv_one, Units.val_one, heq]
    ring1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsomOfJ/Variant690fd23688d8e93c9f3c3071698bf5505de89c59b7235eebc8abda8432c18415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsomOfJ/Variant690fd23688d8e93c9f3c3071698bf5505de89c59b7235eebc8abda8432c18415.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ac9e589040b0978c8987d5ffa4ac6a8543bedd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
