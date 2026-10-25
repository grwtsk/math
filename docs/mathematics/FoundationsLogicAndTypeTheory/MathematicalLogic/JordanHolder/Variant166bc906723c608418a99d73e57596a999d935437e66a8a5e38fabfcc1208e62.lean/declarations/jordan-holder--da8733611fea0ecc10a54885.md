# jordan_holder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dc72487-2ee1-6fe2-3902-04ab3a0cb2a8",
  "kind": "theorem",
  "lexical_name": "jordan_holder",
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
  "slug": "jordan-holder--da8733611fea0ecc10a54885",
  "source": {
    "blob": "b6ba949cd340e0a11327d485e1348f5fd300ad50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 411,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da8733611fea0ecc10a5488557508dbdc1f76505ba736b8cfd23bf083f3966dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dc72487-2ee1-6fe2-3902-04ab3a0cb2a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jordan_holder (s₁ s₂ : CompositionSeries X)
    (hb : s₁.head = s₂.head) (ht : s₁.last = s₂.last) :
    Equivalent s₁ s₂ := by
  induction hle : s₁.length generalizing s₁ s₂ with
  | zero => rw [eq_of_head_eq_head_of_last_eq_last_of_length_eq_zero hb ht hle]
  | succ n ih =>
    have h0s₂ : 0 < s₂.length :=
      length_pos_of_head_eq_head_of_last_eq_last_of_length_pos hb ht (hle.symm ▸ Nat.succ_pos _)
    rcases exists_last_eq_snoc_equivalent s₁ s₂.eraseLast.last
        (ht.symm ▸ isMaximal_eraseLast_last h0s₂)
        (hb.symm ▸ s₂.head_eraseLast ▸ head_le_of_mem (last_mem _)) with
      ⟨t, htb, htl, htt, hteq⟩
    have := ih t s₂.eraseLast (by simp [htb, ← hb]) htt (Nat.succ_inj.1 (htl.trans hle))
    refine hteq.trans ?_
    conv_rhs => rw [eq_snoc_eraseLast h0s₂]
    simp only [ht]
    exact Equivalent.snoc this (by simpa [htt] using (isMaximal_eraseLast_last h0s₂).iso_refl)

end CompositionSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ba949cd340e0a11327d485e1348f5fd300ad50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
