# logC_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7cd69ff8fd13e2a9a5e98320f6b8953bfefd064",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9eab5ad0ff8a391d42184aba2572264202bffdcf6d3e2df5005942764ecdae72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b15daff5-4c73-2806-b12c-bbacb2cd7d53",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:115cd671-d43c-c008-b7fa-09632df056cb",
  "kind": "lemma",
  "lexical_name": "logC_step",
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
  "slug": "logc-step--afd3980b9e9999c6b2de41e5",
  "source": {
    "blob": "e7cd69ff8fd13e2a9a5e98320f6b8953bfefd064",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 377,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant9eab5ad0ff8a391d42184aba2572264202bffdcf6d3e2df5005942764ecdae72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afd3980b9e9999c6b2de41e50e3307d7975a78f0363e7e5b3859d24b16ba416b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant9eab5ad0ff8a391d42184aba2572264202bffdcf6d3e2df5005942764ecdae72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:115cd671-d43c-c008-b7fa-09632df056cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma logC_step {m pw q e : ℕ} (hpw : 1 < pw) (hqe : logC.step m pw hpw = (q, e)) :
    pw ^ e * q ≤ m ∧ q < pw ∧ (m < pw ^ e * (q + 1)) ∧ (0 < m → 0 < q) := by
  induction pw, hpw using logC.step.induct m generalizing q e with
  | case1 pw hpw hmpw =>
      rw [logC.step, dif_pos hmpw] at hqe
      cases hqe
      simpa
  | case2 pw hpw hmpw q' e' hqe' hqpw ih =>
      simp only [logC.step, dif_neg hmpw, hqe', if_pos hqpw] at hqe
      cases hqe
      rw [Nat.pow_mul, Nat.pow_two]
      exact ⟨(ih hqe').1, hqpw, (ih hqe').2.2⟩
  | case3 pw hpw hmpw q' e' hqe' hqpw ih =>
      simp only [Nat.logC.step, dif_neg hmpw, hqe', if_neg hqpw] at hqe
      cases hqe
      rw [Nat.pow_succ, Nat.mul_assoc, Nat.pow_mul, Nat.pow_two, Nat.mul_assoc]
      refine ⟨(ih hqe').1.trans' (Nat.mul_le_mul_left _ (Nat.mul_div_le _ _)),
        Nat.div_lt_of_lt_mul (ih hqe').2.1, (ih hqe').2.2.1.trans_le ?_,
        fun _ => Nat.div_pos (le_of_not_lt hqpw) (by omega)⟩
      exact Nat.mul_le_mul_left _ (Nat.lt_mul_div_succ _ (zero_lt_of_lt hpw))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant9eab5ad0ff8a391d42184aba2572264202bffdcf6d3e2df5005942764ecdae72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variant9eab5ad0ff8a391d42184aba2572264202bffdcf6d3e2df5005942764ecdae72.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7cd69ff8fd13e2a9a5e98320f6b8953bfefd064` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
