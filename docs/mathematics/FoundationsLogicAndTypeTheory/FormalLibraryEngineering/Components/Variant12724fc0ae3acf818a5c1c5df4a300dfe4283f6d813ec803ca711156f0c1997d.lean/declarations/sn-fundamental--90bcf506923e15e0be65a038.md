# sn_fundamental

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffbbd05a-b232-839c-0df8-a7ec2b08b58e",
  "kind": "theorem",
  "lexical_name": "sn_fundamental",
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
  "slug": "sn-fundamental--90bcf506923e15e0be65a038",
  "source": {
    "blob": "8edc5ea035d5ab08d9c6da6a675fa70744ed209f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant12724fc0ae3acf818a5c1c5df4a300dfe4283f6d813ec803ca711156f0c1997d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90bcf506923e15e0be65a038412ebe4f29b139de0e8667a88fd0589f8b31b493",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant12724fc0ae3acf818a5c1c5df4a300dfe4283f6d813ec803ca711156f0c1997d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffbbd05a-b232-839c-0df8-a7ec2b08b58e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sn_fundamental {M : Expr S} (hs : StronglyNormalizing M) :
    J.Transports (U := U) M := by
  apply StronglyNormalizing.induction_descendants (Q := J.Transports (U := U)) _ hs
  intro M _ ihr ihp Γ A ht e ha
  cases M with
  | var i => exact J.transported_var H ht e ha
  | sort s =>
    obtain ⟨t,hat,hc⟩ := ht.generation
    have hst := HasType.sort_of_valid ht.valid hat
    exact (J.transported_at_sort hst (Normal.sort s).stronglyNormalizing).convert
      (.inl ⟨t,rfl⟩) (.of_type ht) (.symm _ _ hc)
  | pi D E =>
    obtain ⟨a,b,c,hD,hE,hr,hc⟩ := ht.generation_pi
    have hDs := (ihp D (Expr.ProperPart.child (.pi_domain D E)) _ _ hD e ha).sn (.of_type hD)
    have hEs := J.open_sn hE hD (ihp E (Expr.ProperPart.child (.pi_body D E))) e ha
    exact (J.transported_at_sort (.product hD hE hr) (hDs.pi hEs)).convert
      (.inl ⟨c,rfl⟩) (.of_type ht) (.symm _ _ hc)
  | lam D b =>
    obtain ⟨B,s,hb,hp,hc⟩ := ht.generation_lam
    exact (J.transports_lam H hb hp
      (ihp D (Expr.ProperPart.child (.lam_domain D b)))
      (ihp b (Expr.ProperPart.child (.lam_body D b))) e ha).convert
      (.sorted hp) (.of_type ht) (.symm _ _ hc)
  | app f n =>
    rcases ht.app_spine with hf | ⟨D,b,n',ns,he⟩
    · obtain ⟨D,E,hft,hnt,hc⟩ := ht.generation_app
      obtain ⟨s,hp⟩ := hft.product_type_sorted
      have hfr := ihp f (Expr.ProperPart.child (.app_left f n)) _ _ hft e ha
      have hnr := ihp n (Expr.ProperPart.child (.app_right f n)) _ _ hnt e ha
      exact (J.transported_neutral_app H hp hnt hf e hfr hnr).convert
        (.of_type (.application hft hnt)) (.of_type ht) (.symm _ _ hc)
    · have ht' : HasType P Γ ((Expr.app (.lam D b) n').apps ns) A := he ▸ ht
      have parts : ∀ N, Expr.ProperPart N ((Expr.app (.lam D b) n').apps ns) →
          J.Transports (U := U) N := by
        intro N hN; apply ihp N; change Expr.ProperPart N (.app f n); rwa [he]
      have hlampart : Expr.ProperPart (.lam D b) ((Expr.app (.lam D b) n').apps ns) :=
        (Expr.ProperPart.child (.app_left _ _)).trans_right (Expr.Subterm.apps_head ns)
      obtain ⟨T,hthead⟩ := ht'.apps_head
      obtain ⟨D',E',hlam,hn',_⟩ := hthead.generation_app
      obtain ⟨B,s,hb,hp,_⟩ := hlam.generation_lam
      obtain ⟨a,c,d,hD,_,_,_⟩ := hp.generation_pi
      have hDs := (parts D (Expr.ProperPart.trans_left (Expr.Subterm.of_child (.lam_domain D
        b)) hlampart) _ _ hD e ha).sn (.of_type hD)
      have hbs := J.open_sn hb hD (parts b (Expr.ProperPart.trans_left (Expr.Subterm.of_child
        (.lam_body D b)) hlampart)) e ha
      have hnp := (Expr.ProperPart.child (.app_right (.lam D b) n')).trans_right
        (Expr.Subterm.apps_head ns)
      have hns := (parts n' hnp _ _ hn' e ha).sn (.of_type hn')
      have hargs : StronglyNormalizingArgs (ns.map (Expr.subst (J.images e))) := by
        apply StronglyNormalizingArgs.of_forall
        intro z hz
        rcases List.mem_map.mp hz with ⟨L,hL,rfl⟩
        obtain ⟨Z,hZ⟩ := ht'.apps_arg hL
        exact (parts L (Expr.ProperPart.apps_arg hL) _ _ hZ e ha).sn (.of_type hZ)
      have hred : Beta (.app f n) ((b.instantiate n').apps ns) := by
        rw [he]; exact (Beta.head D b n').apps ns
      have hctr := (ihr _ hred _ _ (ht.subject_reduction hred) e ha).1
      have hctr' : ((b.subst (Expr.liftSub (J.images e))).instantiate (n'.subst (J.images e))).apps
          (ns.map (Expr.subst (J.images e))) ∈ J.R A e := by
        simpa only [Expr.subst_apps,Expr.instantiate_subst] using hctr
      have hty := (ContextTower.HasType.subst ht' (J.typed e)).normalize_type hw
      rw [Expr.subst_apps] at hty
      have hexp := (J.candidate e (.of_type ht)).expansion _ _ _ _ hty hDs hbs hns hargs hctr'
      constructor
      · rw [he,Expr.subst_apps]
        exact hexp
      · intro hn
        rw [he] at hn
        have hh := hn.apps_head
        cases hh with
        | app hn => cases hn
end ComponentInterface

namespace StronglyNormalizing
variable {S : Type u} {M : Expr S}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant12724fc0ae3acf818a5c1c5df4a300dfe4283f6d813ec803ca711156f0c1997d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant12724fc0ae3acf818a5c1c5df4a300dfe4283f6d813ec803ca711156f0c1997d.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8edc5ea035d5ab08d9c6da6a675fa70744ed209f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
