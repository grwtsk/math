# mul_principal_add_is_principal_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ebd3f85e02445d20039fcd47eecc281d59dceb35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:638440a7-b622-984c-b08a-1b812ae43bd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02b8e64d-7ca1-aa14-eee9-2e37ac9a56df",
  "kind": "theorem",
  "lexical_name": "mul_principal_add_is_principal_add",
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
  "slug": "mul-principal-add-is-principal-add--a68c28aeebac1070873f7088",
  "source": {
    "blob": "ebd3f85e02445d20039fcd47eecc281d59dceb35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 243,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a68c28aeebac1070873f70885fd06b39d924acc9d971fea388e8094fc6d18d50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02b8e64d-7ca1-aa14-eee9-2e37ac9a56df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_principal_add_is_principal_add (a : Ordinal.{u}) {b : Ordinal.{u}} (hb₁ : b ≠ 1)
    (hb : Principal (· + ·) b) : Principal (· + ·) (a * b) := by
  rcases eq_zero_or_pos a with (rfl | _)
  · rw [zero_mul]
    exact principal_zero
  · rcases eq_zero_or_pos b with (rfl | hb₁')
    · rw [mul_zero]
      exact principal_zero
    · rw [← succ_le_iff, succ_zero] at hb₁'
      intro c d hc hd
      rw [lt_mul_of_limit (principal_add_isLimit (lt_of_le_of_ne hb₁' hb₁.symm) hb)] at *
      · rcases hc with ⟨x, hx, hx'⟩
        rcases hd with ⟨y, hy, hy'⟩
        use x + y, hb hx hy
        rw [mul_add]
        exact Left.add_lt_add hx' hy'
#align ordinal.mul_principal_add_is_principal_add Ordinal.mul_principal_add_is_principal_add

/-! #### Multiplicative principal ordinals -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebd3f85e02445d20039fcd47eecc281d59dceb35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
