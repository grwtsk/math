# le_pow_iff_clog_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4509acf-7640-c4ef-44c0-1935ed584ada",
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
  "slug": "le-pow-iff-clog-le--28067515d3656e5c697b14aa",
  "source": {
    "blob": "94be3f2415c7bbf188d444fbcc2c63d9d66e5002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant0dfc8b11e3299bfc2509492b63f1b88314833a62edba1ca7837996a6428cb7d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28067515d3656e5c697b14aaf89b5f142298bd74788b787b92eab8aac16b2f9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant0dfc8b11e3299bfc2509492b63f1b88314833a62edba1ca7837996a6428cb7d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4509acf-7640-c4ef-44c0-1935ed584ada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_pow_iff_clog_le {b : ℕ} (hb : 1 < b) {x y : ℕ} : x ≤ b ^ y ↔ clog b x ≤ y := by
  induction x using Nat.strong_induction_on generalizing y with | h x ih => ?_
  cases y
  · rw [Nat.pow_zero]
    refine ⟨fun h => (clog_of_right_le_one h b).le, ?_⟩
    simp_rw [← not_lt]
    contrapose!
    exact clog_pos hb
  have b_pos : 0 < b := zero_lt_of_lt hb
  rw [clog]; split_ifs with h
  · rw [Nat.add_le_add_iff_right, ← ih ((x + b - 1) / b) (add_pred_div_lt hb h.2),
      Nat.div_le_iff_le_mul_add_pred b_pos, Nat.mul_comm b, ← Nat.pow_succ,
      Nat.add_sub_assoc (Nat.succ_le_of_lt b_pos), Nat.add_le_add_iff_right]
  · exact iff_of_true ((not_lt.1 (not_and.1 h hb)).trans <| succ_le_of_lt <| Nat.pow_pos b_pos)
      (zero_le _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant0dfc8b11e3299bfc2509492b63f1b88314833a62edba1ca7837996a6428cb7d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant0dfc8b11e3299bfc2509492b63f1b88314833a62edba1ca7837996a6428cb7d5.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94be3f2415c7bbf188d444fbcc2c63d9d66e5002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
