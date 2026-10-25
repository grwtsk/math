# actual_raw_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2f152c7-95d8-855c-5ea1-e363c5696865",
  "kind": "theorem",
  "lexical_name": "actual_raw_product",
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
  "slug": "actual-raw-product--7880d9a863b9ecd0d8ff7ef8",
  "source": {
    "blob": "a6260bd07efc4f37d7494ebde8371b2f01556972",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 262,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variante7c3c45732da7d1d3d57a31470843fa1de4abcc454ed6d8c4f7d0d3a28d1dfab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7880d9a863b9ecd0d8ff7ef873e9c745c4e76fd96a040893cb543cce81f80a02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variante7c3c45732da7d1d3d57a31470843fa1de4abcc454ed6d8c4f7d0d3a28d1dfab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2f152c7-95d8-855c-5ea1-e363c5696865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_raw_product {Γ : List (Expr S)} {D E : Expr S} {s : S}
    (hp : HasType P Γ (.pi D E) (.sort s)) (e : Environment Ω Γ)
    (ha : Ω.profile ((Expr.pi D E).subst e.val) ∈ C) (h : Expr S) :
    h ∈ actual Ω hC hw hno ((Expr.pi D E).subst e.val).normalForm ↔
    h ∈ Top Ω ((Expr.pi D E).subst e.val).normalForm ∧
      ∀ n, n ∈ actual Ω hC hw hno (D.subst e.val).normalForm →
        Expr.app h n ∈ actual Ω hC hw hno (E.subst (Expr.extend e.val n)).normalForm := by
  obtain ⟨a,b,c,hD,hE,_,_⟩ := hp.generation_pi
  have hraw := ContextTower.HasType.subst hp e.property
  have hwraw := hraw.weaklyNormalizing hw
  change WeaklyNormalizing (.pi (D.subst e.val) (E.subst (Expr.liftSub e.val))) at hwraw
  have hparts : WeaklyNormalizing (D.subst e.val) ∧
      WeaklyNormalizing (E.subst (Expr.liftSub e.val)) := by
    obtain ⟨normal, reduction, hnormal⟩ := hwraw
    obtain ⟨domain, body, rfl, hdomain, hbody⟩ := Reduces.pi_inv reduction
    exact ⟨⟨domain, hdomain, hnormal.pi_domain⟩, ⟨body, hbody, hnormal.pi_body⟩⟩
  have hnf := Expr.normalForm_pi hparts.1 hparts.2
  have hpN := hraw.normalForm hw
  change Ω.HasType (Expr.pi (D.subst e.val) (E.subst (Expr.liftSub e.val))).normalForm (.sort
    s) at hpN
  rw [hnf] at hpN
  have hNC : Ω.profile (.pi (D.subst e.val).normalForm (E.subst (Expr.liftSub
    e.val)).normalForm) ∈ C := by
    rw [← hnf,Ω.profile_normalForm]; exact ha
  have hnormal : Normal (.pi (D.subst e.val).normalForm (E.subst (Expr.liftSub
    e.val)).normalForm) :=
    .pi (Expr.normalForm_spec hparts.1).2 (Expr.normalForm_spec hparts.2).2
  have hbody (n : Expr S) (hn : n ∈ actual Ω hC hw hno (D.subst e.val).normalForm) :
      (E.subst (Expr.extend e.val n)).normalForm =
        ((E.subst (Expr.liftSub e.val)).normalForm.instantiate n).normalForm := by
    have hnt := (actual_candidate Ω hC hw hno _).upper hn |>.1
    have hrawD := ContextTower.HasType.subst hD e.property
    have hnr := hnt.conversion hrawD
      (.symm _ _ (Expr.normalForm_spec (hrawD.weaklyNormalizing hw)).1.converts)
    have htarget := ContextTower.HasType.subst hE (e.property.cons hnr)
    obtain ⟨t,ht⟩ := Ω.frame_target_sorted hpN hnt
    have hr : Reduces (E.subst (Expr.extend e.val n))
        ((E.subst (Expr.liftSub e.val)).normalForm.instantiate n) := by
      rw [← Expr.instantiate_extended]
      exact (Expr.normalForm_spec hparts.2).1.subst (Expr.single n)
    exact Expr.normalForm_converts (htarget.weaklyNormalizing hw) (ht.weaklyNormalizing hw)
      hr.converts
  change h ∈ actual Ω hC hw hno (Expr.pi (D.subst e.val) (E.subst (Expr.liftSub
    e.val))).normalForm ↔ _
  change h ∈ actual Ω hC hw hno (Expr.pi (D.subst e.val) (E.subst (Expr.liftSub
    e.val))).normalForm ↔
    h ∈ Top Ω (Expr.pi (D.subst e.val) (E.subst (Expr.liftSub e.val))).normalForm ∧ _
  rw [hnf,actual_product Ω hC hw hno hnormal hpN hNC]
  constructor
  · rintro ⟨ht,hb⟩
    refine ⟨ht,?_⟩
    intro n hn
    rw [hbody n hn]
    exact hb n hn _ (Set.mem_singleton _)
  · rintro ⟨ht,hb⟩
    refine ⟨ht,?_⟩
    intro n hn X hX
    rcases Set.mem_singleton_iff.mp hX with rfl
    rw [← hbody n hn]
    exact hb n hn

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variante7c3c45732da7d1d3d57a31470843fa1de4abcc454ed6d8c4f7d0d3a28d1dfab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variante7c3c45732da7d1d3d57a31470843fa1de4abcc454ed6d8c4f7d0d3a28d1dfab.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6260bd07efc4f37d7494ebde8371b2f01556972` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
