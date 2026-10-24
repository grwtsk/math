# normal_product_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:081ddbfa-9422-a2a4-5355-55f4e0214469",
  "kind": "theorem",
  "lexical_name": "normal_product_iff",
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
  "slug": "normal-product-iff--4760beeee4c429a17203f7e8",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12832,
    "line": 12764,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4760beeee4c429a17203f7e8a2c633cbdef81d81e2e37004100df1b4ee271153",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:081ddbfa-9422-a2a4-5355-55f4e0214469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12764–12832.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_product_iff {Γ : List (Expr S)} {D E : Expr S} {s : S}
    (hp : HasType P Γ (.pi D E) (.sort s)) (hn : Normal (.pi D E))
    (hg : Profile P Γ (.pi D E) ∈ C) (e : Environment (hw := hw) Ω C hno Γ)
    (ha : Ω.profile ((Expr.pi D E).subst e.images) ∈ C) (h : Expr S) :
    h ∈ R Ω C hno (.pi D E) e ↔
      h ∈ Candidates.Top Ω ((Expr.pi D E).subst e.images).normalForm ∧
      ∀ n, n ∈ R Ω C hno D e → ∀ f : Environment (hw := hw) Ω C hno (D :: Γ),
        e.Ext f n → Expr.app h n ∈ R Ω C hno E f := by
  obtain ⟨a,b,c,hD,hE,hr,_⟩ := hp.generation_pi
  let d := TypingTree.ofTyping hD
  let q := TypingTree.ofTyping hE
  let t := PreResult.productData hD hE hr e
  let bd : t.BodyReads := fun n hn p hp => (preEvaluate Ω C hno q (t.extend hn p hp)).read
  have hf := Profile.triple hw hp
  have hdrel : Relevant (P := P) C Γ D := ⟨_,hg,.single (.domain hf)⟩
  have herel : Relevant (P := P) C (D :: Γ) E := ⟨_,hg,.single (.codomain hf)⟩
  have hrd := R_eq_read_normal Ω C hno hC d hn.pi_domain hdrel e
  have htest : t.testers (preEvaluate Ω C hno d e).read = R Ω C hno D e := by
    unfold ProductInstance.testers
    split_ifs with hc
    · exact hrd.symm
    · exact (R_outside Ω C hno D e (.inr (by simpa only [t,PreResult.productData,
        ProductInstance.domainNF,ProductInstance.rawDomain,Ω.profile_normalForm] using hc))).symm
  have hre : ∀ f : Environment (hw := hw) Ω C hno (D :: Γ),
      R Ω C hno E f = (preEvaluate Ω C hno q f).read.val :=
    fun f => R_eq_read_normal Ω C hno hC q hn.pi_body herel f
  rw [normal_product_candidate Ω C hno hC d q hr hn hg e ha]
  change h ∈ (t.candidate (preEvaluate Ω C hno d e).read bd).val ↔ _
  constructor
  · intro hh
    refine ⟨?_,?_⟩
    · exact t.product_nf.symm ▸ hh.1
    · intro n hnr f he
      have hnt : n ∈ t.testers (preEvaluate Ω C hno d e).read := htest.symm ▸ hnr
      have hnty := (t.testers_top _ hnt).1
      have hfcons := he.eq_cons (t.rawArgument hnty)
      rw [hfcons,hre]
      by_cases hc : Ω.profile (t.targetNF n) ∈ C
      · exact t.candidate_body _ bd hh hnt hc (f.parameters 0) he.payload
      · have hout := t.candidate_outside _ bd hh hnt hc
        have heo := read_outside Ω C hno q (t.extend hnty (f.parameters 0) he.payload) hc
        exact heo.symm ▸ hout
  · rintro ⟨hht,hbody⟩
    refine ⟨t.product_nf ▸ hht,?_⟩
    intro n hn U hU
    have hnty := (t.testers_top _ hn).1
    have hnr : n ∈ R Ω C hno D e := htest ▸ hn
    simp only [ProductInstance.fibers,hnty,dite_true] at hU
    split_ifs at hU with hc
    · obtain ⟨p,hp,rfl⟩ := hU
      rw [← hre]
      exact hbody n hnr (t.extend hnty p hp) (e.cons_ext (t.rawArgument hnty) p hp)
    · have heU : U = Candidates.Top Ω (t.targetNF n) := hU
      rw [heU]
      obtain ⟨p,hp⟩ := PayloadFits.exists_of_actual (hno := hno) ⟨_,(t.rawArgument hnty).actual_type hw⟩
      have hmem := hbody n hnr (t.extend hnty p hp) (e.cons_ext (t.rawArgument hnty) p hp)
      rw [hre,read_outside Ω C hno q (t.extend hnty p hp) hc] at hmem
      exact hmem

end

section
universe u
open Classical
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) [Fintype S]
variable (C : Set (Set S)) {hw : SystemWeaklyNormalizing P} (hno : ¬ ForbiddenConfiguration P C)

namespace Environment
variable {Ω C hno}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L12764).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
