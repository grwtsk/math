# embed_tag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7d88b97-203f-50d4-b488-bc11823af010",
  "kind": "theorem",
  "lexical_name": "embed_tag",
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
  "slug": "embed-tag--34030aca450ebc262f1b7ee6",
  "source": {
    "blob": "9f27095a5042c2e106babe2ec20a6039c2922cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 598,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34030aca450ebc262f1b7ee62ac2f4d58769278a37345624ca42ae1b2cb0b3bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7d88b97-203f-50d4-b488-bc11823af010`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embed_tag {T t : Expr S} (hT : SortedAt P Γ T I) (mT : WellModed γ T .data)
    (bs cs : List Bool) (hl : bs.length = cs.length) (ht : HasType P Γ t T) (mt : WellModed γ
      t .data) :
    Proves P Γ γ (L.code.sign (bs == cs)
      ((R.tagBody L.code bs T).instantiate (R.embed L.code cs T t))) := by
  induction bs generalizing cs with
  | nil =>
    cases cs with
    | nil =>
      simp only [beq_self_eq_true,DoubleCode.tagBody,LogicCode.sign,ite_true,Expr.instantiate_raise]
      change Proves P Γ γ L.top
      exact L.top_intro
    | cons c cs => simp at hl
  | cons b bs ih =>
    cases cs with
    | nil => simp at hl
    | cons c cs =>
      have hlen : bs.length = cs.length := Nat.succ.inj hl
      have hp := ih cs hlen
      have hv := h.embed_typed hT mT cs ht mt
      have hv' : HasType P Γ (R.embed L.code cs T t) (R.tower bs.length T) := by
        rw [hlen]
        exact hv.1
      have hq := h.tagBody_family hT mT bs
      have he := h.emb_recovery (h.tower_sorted hT bs.length) (h.tower_mode mT bs.length) c
        hv' hv.2 hq
      have hb := h.emb_bit (h.tower_sorted hT bs.length) (h.tower_mode mT bs.length) c hv' hv.2
      have hw := h.emb_typed (h.tower_sorted hT bs.length) (h.tower_mode mT bs.length) c hv' hv.2
      have hf := h.bit_formula (h.tower_sorted hT bs.length) (h.tower_mode mT bs.length) hw.1 hw.2
      have hr := h.rec_formula (h.tower_sorted hT bs.length) (h.tower_mode mT bs.length) hw.1
        hw.2 hq
      have hqt := hq.instantiate hv' hv.2
      simp only [DoubleCode.tagBody,DoubleCode.embed,← hlen,
        LogicCode.conj_instantiate_raise,LogicCode.sign_instantiate_raise,
        DoubleCode.bitBody_instantiate,DoubleCode.recBody_instantiate]
      change Proves P Γ γ (L.code.sign ((b::bs) == (c::cs)) (L.conj
        (L.code.sign b (R.bit L.code (R.tower bs.length T)
          (R.emb L.code c (R.tower bs.length T) (R.embed L.code cs T t))))
        (R.recover L.code (R.tower bs.length T)
          (R.emb L.code c (R.tower bs.length T) (R.embed L.code cs T t))
          (R.tagBody L.code bs T))))
      have hbit := L.signed_sign b c hf hb
      have hrec := (L.sign_equivalent (bs == cs) hr hqt he).2.prove hp
      have hh := L.signed_conj (b == c) (bs == cs) (L.sign_formula b hf) hr hbit hrec
      simpa only [List.cons_beq_cons] using hh
end DoubleCode.Formed

/-- Nine distinct finite query strings. Index zero is the payload tag. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f27095a5042c2e106babe2ec20a6039c2922cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
