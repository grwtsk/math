# product_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39f75cb1-f4b5-19a0-10ec-c9a2ac84cac7",
  "kind": "theorem",
  "lexical_name": "product_iff",
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
  "slug": "product-iff--a2802c2d2e3381902952dcea",
  "source": {
    "blob": "29f3f3277ee9f61effd5a2ad3116aaf21d2f4d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 494,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant50630b73c93f02c5e1c3014d389bc88b65fc7fa7b263c7a3a520821a48f4d351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2802c2d2e3381902952dcea10dca0356785f98f23d12dddd888d978a421c4db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant50630b73c93f02c5e1c3014d389bc88b65fc7fa7b263c7a3a520821a48f4d351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39f75cb1-f4b5-19a0-10ec-c9a2ac84cac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_iff {Γ : List (Expr S)} {D E : Expr S} {s : S}
    (hp : HasType P Γ (.pi D E) (.sort s))
    (hg : Profile P Γ (.pi D E) ∈ C) (e : Environment (hw := hw) Ω C hno Γ)
    (ha : Ω.profile ((Expr.pi D E).subst e.images) ∈ C) (h : Expr S) :
    h ∈ R Ω C hno (.pi D E) e ↔
      h ∈ Candidates.Top Ω ((Expr.pi D E).subst e.images).normalForm ∧
      ∀ n, n ∈ R Ω C hno D e → ∀ f : Environment (hw := hw) Ω C hno (D :: Γ),
        e.Ext f n → Expr.app h n ∈ R Ω C hno E f := by
  obtain ⟨a,b,c,hD,hE,hr,_⟩ := hp.generation_pi
  have hDN := hD.normalForm hw
  have hEN := hE.normalForm hw
  have cD := (Expr.normalForm_spec (hD.weaklyNormalizing hw)).1.converts
  have cE := (Expr.normalForm_spec (hE.weaklyNormalizing hw)).1.converts
  let ctx := ContextEquivalent.head_conversion hD hDN cD
  have hEN' := (ctx.typing _ _).mp hEN
  have hpn : HasType P Γ (.pi D.normalForm E.normalForm) (.sort c) := .product hDN hEN' hr
  have nc := Converts.pi cD cE
  have hn : Normal (.pi D.normalForm E.normalForm) := .pi
    (Expr.normalForm_spec (hD.weaklyNormalizing hw)).2 (Expr.normalForm_spec
      (hE.weaklyNormalizing hw)).2
  have hprof := Profile.converts (P := P) (Γ := Γ) (hp.weaklyNormalizing hw)
    (hpn.weaklyNormalizing hw) nc
  have haprof := Ω.profile_converts ((ContextTower.HasType.subst hp e.typed).weaklyNormalizing hw)
    ((ContextTower.HasType.subst hpn e.typed).weaklyNormalizing hw) (nc.subst e.images)
  have hnf := Expr.normalForm_converts ((ContextTower.HasType.subst hp
    e.typed).weaklyNormalizing hw)
    ((ContextTower.HasType.subst hpn e.typed).weaklyNormalizing hw) (nc.subst e.images)
  have hR := R_sorted_conversion Ω C hno hp hpn nc e
  have hRD := R_normalForm Ω C hno (.sorted hD) e
  rw [hR,normal_product_iff Ω C hno hC hpn hn (hprof ▸ hg) e (haprof ▸ ha) h,hnf]
  constructor
  · rintro ⟨ht,hbody⟩
    refine ⟨ht,?_⟩
    intro n hnr f he
    obtain ⟨g,heg,hfg⟩ := he.convert_domain hD hDN cD
    have hmem := hbody n (hRD ▸ hnr) g heg
    have heq := R_binder_conversion Ω C hno hD hDN cD hE hEN' cE e f g he heg hfg
    exact heq.symm ▸ hmem
  · rintro ⟨ht,hbody⟩
    refine ⟨ht,?_⟩
    intro n hnr g heg
    obtain ⟨f,hef,hgf⟩ := heg.convert_domain hDN hD (.symm _ _ cD)
    have hmem := hbody n (hRD.symm ▸ hnr) f hef
    have heq := R_binder_conversion Ω C hno hD hDN cD hE hEN' cE e f g hef heg ⟨hgf.1.symm,
      hgf.2.symm⟩
    exact heq ▸ hmem

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant50630b73c93f02c5e1c3014d389bc88b65fc7fa7b263c7a3a520821a48f4d351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant50630b73c93f02c5e1c3014d389bc88b65fc7fa7b263c7a3a520821a48f4d351.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f3f3277ee9f61effd5a2ad3116aaf21d2f4d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
