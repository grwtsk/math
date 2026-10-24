# ereal_toReal_sub_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bc60b9c-c13f-8298-9daf-28a5e6f4cda0",
  "kind": "lemma",
  "lexical_name": "ereal_toReal_sub_mono",
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
  "slug": "ereal-toreal-sub-mono--8b113c9e977668d6b95fb7ee",
  "source": {
    "blob": "4bc63a57afc465f27db885b1686b1f5e58591aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3732,
    "line": 3714,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b113c9e977668d6b95fb7eea2f7ee3931a795a502e76c066f02ad9cb506833c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bc60b9c-c13f-8298-9daf-28a5e6f4cda0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3714–3732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ereal_toReal_sub_mono {M : ℕ} (b' : Fin (M + 1) → EReal) (hmono : Monotone b')
    (i : Fin M) (v : ℝ) (hv : b' ⟨i.val, by omega⟩ ≤ (v : EReal))
    (h_bot : b' 0 ≠ ⊥) :
    Monotone (fun j : Fin (i.val + 1) ↦ (b' ⟨j.val, by omega⟩).toReal) := by
  intro j k hjk
  generalize_proofs at *;
  apply EReal.toReal_le_toReal
  all_goals generalize_proofs at *;
  · exact hmono hjk;
  · exact ne_of_gt ( lt_of_lt_of_le ( lt_of_le_of_ne ( bot_le ) ( Ne.symm h_bot ) ) ( hmono ( Nat.zero_le _ ) ) );
  · have := hmono ( show ⟨ k, by linarith ⟩ ≤ ⟨ i, by linarith ⟩ from Nat.le_of_lt_succ <| by linarith [ Fin.is_lt k, Fin.is_lt i ] ) ; aesop;

/-
PROBLEM
Helper: EReal.toReal of a real cast is the original value

PROVIDED SOLUTION
Since h_b_start : b' 0 = ↑(log x₁), we have (b' 0).toReal = (↑(log x₁)).toReal = log x₁ by EReal.toReal_coe.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean#L3714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc63a57afc465f27db885b1686b1f5e58591aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
