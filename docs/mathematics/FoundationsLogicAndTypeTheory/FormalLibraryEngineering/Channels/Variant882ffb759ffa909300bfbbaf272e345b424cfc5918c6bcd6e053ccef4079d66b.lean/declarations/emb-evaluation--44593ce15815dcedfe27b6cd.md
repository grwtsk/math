# emb_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78d642b3-e5cd-4018-81d3-afb6ee3ebc74",
  "kind": "theorem",
  "lexical_name": "emb_evaluation",
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
  "slug": "emb-evaluation--44593ce15815dcedfe27b6cd",
  "source": {
    "blob": "9f27095a5042c2e106babe2ec20a6039c2922cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44593ce15815dcedfe27b6cd4652a1667b80bd79b69262faf349762e720426d3",
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

Occurrence: `result:78d642b3-e5cd-4018-81d3-afb6ee3ebc74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emb_evaluation (hT : SortedAt P Γ T I) (mT : WellModed γ T .data) (b : Bool) (ht :
  HasType P Γ t T) (mt : WellModed γ t .data)
    (hQ : L.Family T Q) :
    Equivalent P Γ γ (R.eval T (R.emb L.code b T t) Q) (L.code.sign b (Q.instantiate t)) := by
  have hf := (h.first.sound hT mT).1 Q hQ
  have hcb := (h.first.contraCallback_family hT mT ht mt).code_sign b
  have he := h.second.cancellation (h.first.sorted hT) (h.first.mode mT) hcb hf
  have he' : Equivalent P Γ γ (R.eval T (R.emb L.code b T t) Q)
      (L.code.sign b (R.first.observe T (R.first.build T Q) t)) := by
    simpa only [DataWrapper.cancelFormula,ite_true,LogicCode.sign_instantiate_raise,
      DataWrapper.contraCallback_instantiate,eval,emb] using he
  have he₁ := h.first.cancellation hT mT hQ ⟨ht,mt⟩
  have ha := (h.first.sound hT mT).2 _ t hf.1 hf.2 ⟨ht,mt⟩
  have hb := hQ.instantiate ht mt
  have he₂ := L.sign_equivalent b ha hb (by simpa only [DataWrapper.cancelFormula,ite_true]
    using he₁)
  have hv := h.emb_typed hT mT b ht mt
  have hc := h.eval_formula hT mT hv.1 hv.2 hQ
  obtain ⟨s,hs⟩ := L.triple.codomain.1
  exact he'.trans he₂ (hc.1 s hs) ((L.sign_formula b ha).1 s hs) ((L.sign_formula b hb).1 s hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f27095a5042c2e106babe2ec20a6039c2922cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
