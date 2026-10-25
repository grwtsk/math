# transports_lam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e276f2d-d655-d15f-7858-d3df5781bbba",
  "kind": "theorem",
  "lexical_name": "transports_lam",
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
  "slug": "transports-lam--66c93847e846e74fb7d05ebf",
  "source": {
    "blob": "1b8ffcebf58c28e1875ce86f1d958785aca4d1aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant62effed345093301ecbc0afa60ffcd6b84e7761a0da438274c2bfa0ea62da1ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66c93847e846e74fb7d05ebff59b40e9763d5ae543a21bfaf71637c05de3e355",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant62effed345093301ecbc0afa60ffcd6b84e7761a0da438274c2bfa0ea62da1ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e276f2d-d655-d15f-7858-d3df5781bbba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transports_lam {Γ : List (Expr S)} {D b B : Expr S} {s : S}
    (hb : HasType P (D :: Γ) b B) (hp : HasType P Γ (.pi D B) (.sort s))
    (ihD : J.Transports (U := U) D) (ihb : J.Transports (U := U) b)
    (e : J.Env Γ) (ha : J.Admissible (U := U) e) :
    J.Transported (.lam D b) (.pi D B) e := by
  classical
  obtain ⟨a,c,d,hD,hB,_,_⟩ := hp.generation_pi
  have hDs := (ihD _ _ hD e ha).sn (.of_type hD)
  have hbs := J.open_sn hb hD ihb e ha
  have htop : (Expr.lam D b).subst (J.images e) ∈ Top Ω ((Expr.pi D B).subst (J.images
    e)).normalForm :=
    ⟨(ContextTower.HasType.subst (.abstraction hb hp) (J.typed e)).normalize_type hw,hDs.lam hbs⟩
  refine ⟨?_,fun hn => by cases hn⟩
  by_cases hK : Profile P Γ (.pi D B) ∈ C
  · by_cases hKa : Ω.profile ((Expr.pi D B).subst (J.images e)) ∈ C
    · apply J.product_intro e hp hK hKa _ htop
      intro n hn e' he
      have hnt := (J.candidate e (.sorted hD)).upper hn
      have hDomain := ContextTower.HasType.subst hD (J.typed e)
      have hnr := hnt.1.conversion hDomain
        (.symm _ _ (Expr.normalForm_spec (hDomain.weaklyNormalizing hw)).1.converts)
      have hdBefore := H.before hK (Reach.single (.domain (Profile.triple hw hp)))
      have hadm : J.Admissible (U := U) e' := J.admissible_extension hD he ha
        (fun _ => hn) (fun _ => hnt.2) (fun hnu hnc => by
          rcases hdBefore with hu | hc
          · exact False.elim (hnu hu)
          · exact False.elim (hnc hc))
      have hbody := (ihb _ _ hb e' hadm).1
      have htapp := ((ContextTower.HasType.subst (.abstraction hb hp) (J.typed e)).application
        hnr).normalize_type hw
      change Ω.HasType (.app (.lam (D.subst (J.images e)) (b.subst (Expr.liftSub (J.images e)))) n)
        ((B.subst (Expr.liftSub (J.images e))).instantiate n).normalForm at htapp
      rw [Expr.instantiate_extended,← J.ext_images he] at htapp
      have hbmem : (b.subst (Expr.liftSub (J.images e))).instantiate n ∈ J.R B e' := by
        rwa [Expr.instantiate_extended,← J.ext_images he]
      exact (J.candidate e' (.of_type hb)).expansion _ _ _ [] htapp hDs hbs hnt.2 .nil hbmem
    · rw [J.outside e (.sorted hp) (.inr hKa)]; exact htop
  · rw [J.outside e (.sorted hp) (.inl hK)]; exact htop

/-- Strongly-normalizing substitution transport,
including a neutral G-prefix invariant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant62effed345093301ecbc0afa60ffcd6b84e7761a0da438274c2bfa0ea62da1ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant62effed345093301ecbc0afa60ffcd6b84e7761a0da438274c2bfa0ea62da1ce.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b8ffcebf58c28e1875ce86f1d958785aca4d1aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
