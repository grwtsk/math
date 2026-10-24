# reduction_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eabe3da6-295c-93d6-9583-dd5906035298",
  "kind": "theorem",
  "lexical_name": "reduction_transport",
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
  "slug": "reduction-transport--86da596bf11c4e49486fcf78",
  "source": {
    "blob": "5e0d083ec1beb708a9e8efdc39363be16152f8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12401,
    "line": 12323,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86da596bf11c4e49486fcf78061ca8e0d05f54613cfcebb01f3f0a0b21c0e385",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eabe3da6-295c-93d6-9583-dd5906035298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12323–12401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem reduction_transport (hC : IsComponent (PrimaryEdge P) C)
    {Γ : List (Expr S)} {M N T : Expr S} (t : TypingTree P Γ M T) (hr : Beta M N) :
    ∃ t' : TypingTree P Γ N T, GoodTransport (hw := hw) Ω C hno t t' := by
  induction hr generalizing Γ T with
  | head D m n =>
      cases t with
      | application ht ft nt hc =>
          cases ft with
          | abstraction hf d b hp hcF =>
              exact root_transport Ω C hno ht hf d b hp hcF nt hc hC
  | app_left hr ih =>
      cases t with
      | application ht ft nt hc =>
          obtain ⟨ft',hft⟩ := ih ft
          have ht' := ht.subject_reduction (.app_left hr)
          exact ⟨.application ht' ft' nt hc,application_transport Ω C hno ht ht' ft ft' nt nt hc hc
            hft (.refl nt) (.rel _ _ hr) (.refl _) (fun hn => hn.beta hr)⟩
  | app_right hr ih =>
      cases t with
      | @application Γ f n D E T ht ft nt hc =>
          obtain ⟨nt',hnt⟩ := ih nt
          have ht' := ht.subject_reduction (.app_right hr)
          have hc' : Converts T (E.instantiate _) := .trans _ _ _ hc ((show Converts _ _ from .rel _ _ hr).instantiate_right E)
          exact ⟨.application ht' ft nt' hc',application_transport Ω C hno ht ht' ft ft nt nt' hc hc'
            (.refl ft) hnt (.refl _) (.rel _ _ hr) (fun hn => hn)⟩
  | @lam_domain D D' m hr ih =>
      cases t with
      | @abstraction Γ _ _ E a s T ht d b hp hc =>
          obtain ⟨d',_⟩ := ih d
          let hctx := ContextEquivalent.head_conversion d.typing d'.typing (.rel _ _ hr)
          let b' := b.recontext hctx
          have ht' := ht.subject_reduction (.lam_domain hr)
          have hp' := hp.subject_reduction (.pi_domain hr)
          have hc' : Converts T (.pi D' E) := .trans _ _ _ hc (.rel _ _ (.pi_domain hr))
          refine ⟨.abstraction ht' d' b' hp' hc',abstraction_transport Ω C hno ht ht' d d' b b' hp hp'
            hc hc' (.rel _ _ hr) (.refl _) (.refl _) ?_⟩
          intro e n hn hn' p hpp hpp' ha ha' hg
          refine ⟨?_,?_⟩
          · change (goodness Ω C (b.recontext hctx) (e.cons hn' p hpp').images).1
            rw [goodness_recontext]
            simpa only [Environment.cons_images] using hg
          · apply PreResult.val_congr
            exact (preEvaluate_recontext Ω C hno b hctx (e.cons hn p hpp) (e.cons hn' p hpp') ⟨rfl,rfl⟩).1
  | lam_body hr ih =>
      cases t with
      | abstraction ht d b hp hc =>
          obtain ⟨b',hb⟩ := ih b
          have ht' := ht.subject_reduction (.lam_body hr)
          refine ⟨.abstraction ht' d b' hp hc,abstraction_transport Ω C hno ht ht' d d b b' hp hp
            hc hc (.refl _) (.rel _ _ hr) (.refl _) ?_⟩
          intro e n hn hn' p hpp hpp' ha ha' hg
          exact hb.val (e.cons hn p hpp) ha hg
  | @pi_domain D D' E hr ih =>
      cases t with
      | @product Γ _ _ a b c T ht d bt hrule hc =>
          obtain ⟨d',hd⟩ := ih d
          let hctx := ContextEquivalent.head_conversion d.typing d'.typing (.rel _ _ hr)
          let b' := bt.recontext hctx
          have ht' := ht.subject_reduction (.pi_domain hr)
          refine ⟨.product ht' d' b' hrule hc,product_transport Ω C hno ht ht' d d' bt b' hrule hc
            (.rel _ _ hr) (.refl _) hd.read ?_⟩
          intro e n hn hn' p hpp hpp' hg
          refine ⟨?_,?_⟩
          · change (goodness Ω C (bt.recontext hctx) (e.cons hn' p hpp').images).2
            rw [goodness_recontext]
            simpa only [Environment.cons_images] using hg
          · exact (preEvaluate_recontext Ω C hno bt hctx (e.cons hn p hpp) (e.cons hn' p hpp') ⟨rfl,rfl⟩).2
  | pi_body hr ih =>
      cases t with
      | product ht d bt hrule hc =>
          obtain ⟨b',hb⟩ := ih bt
          have ht' := ht.subject_reduction (.pi_body hr)
          refine ⟨.product ht' d b' hrule hc,product_transport Ω C hno ht ht' d d bt b' hrule hc
            (.refl _) (.rel _ _ hr) (fun e hg => ⟨hg,rfl⟩) ?_⟩
          intro e n hn hn' p hpp hpp' hg
          exact hb.read (e.cons hn p hpp) hg

namespace GoodTransport
variable {Ω C hno} {Γ : List (Expr S)} {M N L T : Expr S}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean#L12323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0d083ec1beb708a9e8efdc39363be16152f8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
