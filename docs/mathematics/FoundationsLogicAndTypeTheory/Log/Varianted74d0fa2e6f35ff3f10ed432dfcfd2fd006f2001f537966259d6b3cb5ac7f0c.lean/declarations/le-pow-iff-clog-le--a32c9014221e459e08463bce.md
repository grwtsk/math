# le_pow_iff_clog_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d55ac8d3c91640e64ac966fb9abb0439412c8eff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c60e8ad2-fb25-9785-f03e-64ac904fd60d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1027502d-4fb1-f96f-f348-3b45b499b142",
  "kind": "theorem",
  "lexical_name": "le_pow_iff_clog_le",
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
  "slug": "le-pow-iff-clog-le--a32c9014221e459e08463bce",
  "source": {
    "blob": "d55ac8d3c91640e64ac966fb9abb0439412c8eff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 292,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a32c9014221e459e08463bce09aa357055f536676e8b6ace0f76be9b3e36b3cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1027502d-4fb1-f96f-f348-3b45b499b142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_pow_iff_clog_le {b : ℕ} (hb : 1 < b) {x y : ℕ} : x ≤ b ^ y ↔ clog b x ≤ y := by
  induction' x using Nat.strong_induction_on with x ih generalizing y
  cases y
  · rw [pow_zero]
    refine' ⟨fun h => (clog_of_right_le_one h b).le, _⟩
    simp_rw [← not_lt]
    contrapose!
    exact clog_pos hb
  have b_pos : 0 < b := (zero_lt_one' ℕ).trans hb
  rw [clog]; split_ifs with h
  · rw [succ_eq_add_one, add_le_add_iff_right, ← ih ((x + b - 1) / b) (add_pred_div_lt hb h.2),
      Nat.div_le_iff_le_mul_add_pred b_pos, mul_comm b, ← pow_succ,
      add_tsub_assoc_of_le (Nat.succ_le_of_lt b_pos), add_le_add_iff_right]
  · exact iff_of_true ((not_lt.1 (not_and.1 h hb)).trans <| succ_le_of_lt <| pow_pos b_pos _)
      (zero_le _)
#align nat.le_pow_iff_clog_le Nat.le_pow_iff_clog_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55ac8d3c91640e64ac966fb9abb0439412c8eff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
