# application_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 12154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73b835a6-a83a-6c5d-fea2-f215d8238cc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00f3ad8a-034f-c255-8095-bc1778da646c",
  "kind": "theorem",
  "lexical_name": "application_transport",
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
  "slug": "application-transport--5ea7e01ee1f68b54f9f4f518",
  "source": {
    "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12193,
    "line": 12154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ea7e01ee1f68b54f9f4f5184cbbdf6e2fa84c8ee39e2bc4418c00ff65be430e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00f3ad8a-034f-c255-8095-bc1778da646c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12154–12193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem application_transport {Γ : List (Expr S)} {f n f' n' D E T : Expr S}
    (ht : HasType P Γ (.app f n) T) (ht' : HasType P Γ (.app f' n') T)
    (ft : TypingTree P Γ f (.pi D E)) (ft' : TypingTree P Γ f' (.pi D E))
    (nt : TypingTree P Γ n D) (nt' : TypingTree P Γ n' D)
    (hc : Converts T (E.instantiate n)) (hc' : Converts T (E.instantiate n'))
    (hf : GoodTransport (hw := hw) Ω C hno ft ft') (hn : GoodTransport (hw := hw) Ω C hno nt nt')
    (hff : Converts f f') (hnn : Converts n n') (hne : Neutral f → Neutral f') :
    GoodTransport (hw := hw) Ω C hno (.application ht ft nt hc) (.application ht' ft' nt' hc') := by
  have hval : ∀ (e : Environment (hw := hw) Ω C hno Γ)
      (ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm)),
      ValGood Ω C (.application ht ft nt hc) e.images →
      ValGood Ω C (.application ht' ft' nt' hc') e.images ∧
      ((preEvaluate Ω C hno (.application ht ft nt hc) e).val ha).val =
      ((preEvaluate Ω C hno (.application ht' ft' nt' hc') e).val ha).val := by
    intro e ha hg
    change (if ActiveLayer P C (Ω.profile ((Expr.pi D E).subst e.images)) then _ else _) at hg
    change (if ActiveLayer P C (Ω.profile ((Expr.pi D E).subst e.images)) then _ else _) ∧ _
    by_cases hF : ActiveLayer P C (Ω.profile ((Expr.pi D E).subst e.images))
    · rw [ite_eq_left hF] at hg ⊢
      have hFa : ActiveLayer P C (Ω.profile ((Expr.pi D E).subst e.images).normalForm) := by
        simpa only [Ω.profile_normalForm] using hF
      refine ⟨⟨(hf.val e hFa hg.1).1,fun haD => (hn.val e
        (by simpa only [Ω.profile_normalForm] using haD) (hg.2 haD)).1⟩,?_⟩
      apply PreResult.application_val_congr ht ht' ft.typing ft'.typing nt.typing nt'.typing hc hc'
        _ _ _ _ e e rfl rfl (e.expression_convert_eq nt.typing nt'.typing hnn)
      · exact fun _ _ => (hf.val e hFa hg.1).2
      · exact hn.parameter_eq e (fun haD => hg.2 (by simpa only [Ω.profile_normalForm] using haD))
    · rw [ite_eq_right hF] at hg ⊢
      refine ⟨?_,?_⟩
      · cases hg with | app hg => exact .app (hne hg)
      · have hFa : ¬ ActiveLayer P C (Ω.profile ((Expr.pi D E).subst e.images).normalForm) := by
          simpa only [Ω.profile_normalForm] using hF
        simp only [preEvaluate,PreResult.application,PreResult.baseResult,PreResult.applicationValue,dite_eq_right hFa]
  refine ⟨hval,?_⟩
  intro e hr
  apply baseRead_transport Ω C hno ht (.application ht' ft' nt' hc') e
    (e.expression_convert_eq ht ht' (.app hff hnn))
    (fun hh => by cases hh with | app hh => exact .app (hne hh)) _ _ hr
  exact hval e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean#L12154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43dd61c35d3d36651c01f53530ca36ac91fcb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
