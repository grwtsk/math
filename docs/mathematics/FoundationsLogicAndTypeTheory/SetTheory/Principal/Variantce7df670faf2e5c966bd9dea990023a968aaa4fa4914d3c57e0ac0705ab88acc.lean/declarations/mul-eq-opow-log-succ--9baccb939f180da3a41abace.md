# mul_eq_opow_log_succ

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
      "line": 396,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a0ef799-52a1-6e92-096c-7ecca3c7becd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a59a0210-503e-543a-634f-a10e06bedc14",
  "kind": "theorem",
  "lexical_name": "mul_eq_opow_log_succ",
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
  "slug": "mul-eq-opow-log-succ--9baccb939f180da3a41abace",
  "source": {
    "blob": "ebd3f85e02445d20039fcd47eecc281d59dceb35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 396,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9baccb939f180da3a41abaceff42034da47f98214c33ca7a741688ab322844a6",
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

Occurrence: `result:a59a0210-503e-543a-634f-a10e06bedc14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_eq_opow_log_succ {a b : Ordinal.{u}} (ha : a ≠ 0) (hb : Principal (· * ·) b)
    (hb₂ : 2 < b) : a * b = (b^succ (log b a)) := by
  apply le_antisymm
  · have hbl := principal_mul_isLimit hb₂ hb
    have := IsNormal.bsup_eq.{u, u} (mul_isNormal (Ordinal.pos_iff_ne_zero.2 ha)) hbl
    dsimp at this
    rw [← this, bsup_le_iff]
    intro c hcb
    have hb₁ : 1 < b := (lt_succ 1).trans (by simpa using hb₂)
    have hbo₀ : (b^b.log a) ≠ 0 := Ordinal.pos_iff_ne_zero.1 (opow_pos _ (zero_lt_one.trans hb₁))
    apply le_trans (mul_le_mul_right' (le_of_lt (lt_mul_succ_div a hbo₀)) c)
    rw [mul_assoc, opow_succ]
    refine' mul_le_mul_left' (le_of_lt (hb (hbl.2 _ _) hcb)) _
    rw [div_lt hbo₀, ← opow_succ]
    exact lt_opow_succ_log_self hb₁ _
  · rw [opow_succ]
    exact mul_le_mul_right' (opow_log_le_self b ha) b
#align ordinal.mul_eq_opow_log_succ Ordinal.mul_eq_opow_log_succ

/-! #### Exponential principal ordinals -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebd3f85e02445d20039fcd47eecc281d59dceb35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
