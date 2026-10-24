# normal_tree_independence

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
      "line": 10500,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:422f38da-a172-c8a1-c777-b0fc8ad2d4c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9f3fe9e-1a32-31e5-0763-448c852c59fc",
  "kind": "theorem",
  "lexical_name": "normal_tree_independence",
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
  "slug": "normal-tree-independence--1ebe73248e4f62264e28657d",
  "source": {
    "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 10602,
    "line": 10500,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ebe73248e4f62264e28657d7101f685cdc7c8baa369a5aa1bd63fc1a507040d",
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

Occurrence: `result:d9f3fe9e-1a32-31e5-0763-448c852c59fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10500–10602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_tree_independence {Γ : List (Expr S)} {M T : Expr S}
    (t : TypingTree P Γ M T) : Normal M →
    ∀ {U : Expr S} (t' : TypingTree P Γ M U) (e : Environment (hw := hw) Ω C hno Γ),
    (Converts T U → (preEvaluate Ω C hno t e).parameter = (preEvaluate Ω C hno t' e).parameter) ∧
    (∀ s s', T = .sort s → U = .sort s' →
      (preEvaluate Ω C hno t e).read.val = (preEvaluate Ω C hno t' e).read.val) := by
  induction t with
  | @var Γ n A T ht hd hc =>
      intro _ U t' e
      cases t' with
      | var ht' hd' hc' =>
          have hv : (PreResult.lookup ht hd hc e).parameter = (PreResult.lookup ht' hd' hc' e).parameter := by
            rw [PreResult.lookup_parameter,PreResult.lookup_parameter]
          refine ⟨fun _ => hv,?_⟩
          intro s s' hs hs'
          have he : s = s' := (hs ▸ hs' ▸ HasType.neutral_unique (.var n) ht ht').sort_inj
          subst s'; subst T; subst U
          apply PreResult.baseRead_congr ht ht' rfl rfl Iff.rfl
          exact fun ha hb => PreResult.val_congr _ _ hv ha hb
  | sort ht ha hc =>
      intro _ U t' e
      cases t' with
      | sort ht' ha' hc' =>
          constructor
          · intro hh
            apply PreResult.parameter_congr _ _ (e.type_convert_eq ht ht' hh)
            intro _ _
            exact distinguished_congr Ω C hno (e.type_convert_eq ht ht' hh)
          · exact fun _ _ _ _ => rfl
  | @abstraction Γ D m E a s T ht d b hp hc ihd ihb =>
      intro hn U t' e
      cases t' with
      | @abstraction _ _ _ E' a' s' _ ht' d' b' hp' hc' =>
          constructor
          · intro hh
            have hproducts : Converts (.pi D E) (.pi D E') := .trans _ _ _ (.symm _ _ hc) (.trans _ _ _ hh hc')
            have hEE := hproducts.product_compatibility.2
            apply PreResult.parameter_congr _ _ (e.type_convert_eq ht ht' hh)
            apply PreResult.abstraction_val_congr ht ht' hp hp' hc hc' _ _ e e (e.type_convert_eq ht ht' hh)
            intro n n' hnt hn' he p hpa hpb hact hact'
            subst n'
            exact PreResult.val_congr _ _ ((ihb hn.lam_body b' (e.cons hnt p hpa)).1 hEE) hact hact'
          · intro r r' hs _
            exact False.elim ((hs ▸ ht).lambda_cannot_have_sort_type)
  | @application Γ g n D E T ht f a hc ihf iha =>
      intro hn U t' e
      cases t' with
      | @application _ _ _ D' E' _ ht' f' a' hc' =>
          have hg : Neutral g := by
            obtain ⟨s,he⟩ | hne | ⟨D,E,he⟩ | ⟨D,m,he⟩ := ht.normal_shape hn
            · cases he
            · cases hne with | app hne => exact hne
            · cases he
            · cases he
          have hF := HasType.neutral_unique hg f.typing f'.typing
          have hD := hF.product_compatibility.1
          have hv : ∀ (hh : Converts T U),
              (preEvaluate Ω C hno (.application ht f a hc) e).parameter =
              (preEvaluate Ω C hno (.application ht' f' a' hc') e).parameter := by
            intro hh
            apply PreResult.parameter_congr _ _ (e.type_convert_eq ht ht' hh)
            apply PreResult.application_val_congr ht ht' f.typing f'.typing a.typing a'.typing hc hc'
              _ _ _ _ e e (e.type_convert_eq ht ht' hh) (e.type_convert_eq f.typing f'.typing hF) rfl
            · exact fun ha hb => PreResult.val_congr _ _ ((ihf hn.app_left f' e).1 hF) ha hb
            · exact (iha hn.app_right a' e).1 hD
          refine ⟨hv,?_⟩
          intro s s' hs hs'
          have hh := HasType.neutral_unique (.app hg) ht ht'
          have he : s = s' := (hs ▸ hs' ▸ hh).sort_inj
          subst s'; subst T; subst U
          apply PreResult.baseRead_congr ht ht' rfl rfl Iff.rfl
          exact fun ha hb => PreResult.val_congr _ _ (hv hh) ha hb
  | @product Γ D E a b c T ht d bt hr hc ihd ihb =>
      intro hn U t' e
      cases t' with
      | @product _ _ _ a' b' c' _ ht' d' bt' hr' hc' =>
          have hpc : (PreResult.productCandidate d.typing bt.typing hr (preEvaluate Ω C hno d)
              (preEvaluate Ω C hno bt) e).val =
              (PreResult.productCandidate d'.typing bt'.typing hr' (preEvaluate Ω C hno d')
                (preEvaluate Ω C hno bt') e).val := by
            apply PreResult.productCandidate_congr d.typing bt.typing hr d'.typing bt'.typing hr' _ _ _ _ e e rfl rfl
            · exact fun _ => (ihd hn.pi_domain d' e).2 a a' rfl rfl
            · intro n hn' hn'' p hp hp' _
              exact (ihb hn.pi_body bt' (e.cons hn' p hp)).2 b b' rfl rfl
          constructor
          · intro hh
            have hsorts : Converts (.sort c) (.sort c') := .trans _ _ _ (.symm _ _ hc) (.trans _ _ _ hh hc')
            have he : c = c' := hsorts.sort_inj
            apply PreResult.parameter_congr _ _ (e.type_convert_eq ht ht' hh)
            apply PreResult.product_val_congr ht ht' d.typing bt.typing hr d'.typing bt'.typing hr'
              hc hc' _ _ _ _ e e (e.type_convert_eq ht ht' hh) rfl
            · exact he ▸ Iff.rfl
            · exact fun _ => hpc
          · intro _ _ _ _
            exact PreResult.product_read_congr ht ht' d.typing bt.typing hr d'.typing bt'.typing hr'
              hc hc' _ _ _ _ e e rfl (fun _ => hpc)
end PureTypeSystem.ObservationValues

namespace PureTypeSystem
universe u
namespace ContextTower.TypedSubstitution
variable {S : Type u} {P : Specification S} {Ω : ContextTower P} {Γ : List (Expr S)}
    {σ τ : Nat → Expr S}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean#L10500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43dd61c35d3d36651c01f53530ca36ac91fcb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
