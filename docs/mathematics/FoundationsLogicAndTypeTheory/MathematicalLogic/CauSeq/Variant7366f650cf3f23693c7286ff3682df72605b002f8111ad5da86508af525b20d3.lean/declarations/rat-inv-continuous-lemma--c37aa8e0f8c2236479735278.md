# rat_inv_continuous_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6479390906c2ad14867161724a02dfa9cbe16b9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/7366f650cf3f23693c7286ff3682df72605b002f8111ad5da86508af525b20d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5074cfe9-60a8-df0e-7fc9-e7493f3f3395",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0afbef12-33b4-e956-697f-f585fae13ad8",
  "kind": "theorem",
  "lexical_name": "rat_inv_continuous_lemma",
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
  "slug": "rat-inv-continuous-lemma--c37aa8e0f8c2236479735278",
  "source": {
    "blob": "6479390906c2ad14867161724a02dfa9cbe16b9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant7366f650cf3f23693c7286ff3682df72605b002f8111ad5da86508af525b20d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c37aa8e0f8c22364797352781ff5ef58cdf778edf31b7097e31d0d585572fbce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant7366f650cf3f23693c7286ff3682df72605b002f8111ad5da86508af525b20d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0afbef12-33b4-e956-697f-f585fae13ad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rat_inv_continuous_lemma {β : Type*} [DivisionRing β] (abv : β → α) [IsAbsoluteValue abv]
    {ε K : α} (ε0 : 0 < ε) (K0 : 0 < K) :
    ∃ δ > 0, ∀ {a b : β}, K ≤ abv a → K ≤ abv b → abv (a - b) < δ → abv (a⁻¹ - b⁻¹) < ε := by
  refine' ⟨K * ε * K, mul_pos (mul_pos K0 ε0) K0, fun {a b} ha hb h => _⟩
  have a0 := K0.trans_le ha
  have b0 := K0.trans_le hb
  rw [inv_sub_inv' ((abv_pos abv).1 a0) ((abv_pos abv).1 b0), abv_mul abv, abv_mul abv, abv_inv abv,
    abv_inv abv, abv_sub abv]
  refine' lt_of_mul_lt_mul_left (lt_of_mul_lt_mul_right _ b0.le) a0.le
  rw [mul_assoc, inv_mul_cancel_right₀ b0.ne', ← mul_assoc, mul_inv_cancel a0.ne', one_mul]
  refine' h.trans_le _
  gcongr
#align rat_inv_continuous_lemma rat_inv_continuous_lemma

end

/-- A sequence is Cauchy if the distance between its entries tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant7366f650cf3f23693c7286ff3682df72605b002f8111ad5da86508af525b20d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeq/Variant7366f650cf3f23693c7286ff3682df72605b002f8111ad5da86508af525b20d3.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6479390906c2ad14867161724a02dfa9cbe16b9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
