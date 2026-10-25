# normal_good

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cab0c1a-e0a8-61be-c3d2-cdf1ad255a3c",
  "kind": "theorem",
  "lexical_name": "normal_good",
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
  "slug": "normal-good--55dd8dc2422a51183a9c0ec6",
  "source": {
    "blob": "96d3ffeb86b9dc10530fed949ca0490756771eb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 696,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant73da2dd16c3bd45dce0060ec2c6a3434e749ee383f31e7610fe914004ae86394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55dd8dc2422a51183a9c0ec6c57cd6b7ce7a6caff2e64f1c9c2d7178c0e45eaa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant73da2dd16c3bd45dce0060ec2c6a3434e749ee383f31e7610fe914004ae86394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cab0c1a-e0a8-61be-c3d2-cdf1ad255a3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_good {Γ : List (Expr S)} {M T : Expr S} (t : TypingTree P Γ M T)
    (hn : Normal M) (σ : Nat → Expr S) (hσ : Ω.TypedSubstitution Γ σ) :
    (ActiveLayer P C (Ω.profile (T.subst σ)) → ValGood Ω C t σ) ∧
    (∀ s, T = .sort s → Relevant (P := P) C Γ M → ReadGood Ω C t σ) := by
  induction t generalizing σ with
  | var ht hd hc =>
      refine ⟨fun _ => trivial,?_⟩
      intro s hs hr
      subst hs
      exact normal_baseGood Ω C hw hC ht hn (.var _) hσ hr (fun _ => trivial)
  | sort ht ha hc => exact ⟨fun _ => trivial,fun _ _ _ => trivial⟩
  | @abstraction Γ D m E a s T ht d b hp hc ihd ihb =>
      have hv : ValGood Ω C (.abstraction ht d b hp hc) σ := by
        intro n hn' ha
        exact (ihb hn.lam_body (Expr.consSub n σ) (hσ.cons hn')).1 ha
      refine ⟨fun _ => hv,?_⟩
      intro s hs _
      exact False.elim ((hs ▸ ht).lambda_cannot_have_sort_type)
  | @application Γ g n D E T ht f a hc ihf iha =>
      have hne : Neutral (.app g n) := by
        obtain ⟨s,he⟩ | hne | ⟨D,E,he⟩ | ⟨D,m,he⟩ := ht.normal_shape hn
        · cases he
        · exact hne
        · cases he
        · cases he
      have hv : ValGood Ω C (.application ht f a hc) σ := by
        dsimp only [ValGood,goodness]
        split
        · rename_i hf
          exact ⟨(ihf hn.app_left σ hσ).1 hf,fun ha => (iha hn.app_right σ hσ).1 ha⟩
        · exact hne
      refine ⟨fun _ => hv,?_⟩
      intro s hs hr
      subst hs
      exact normal_baseGood Ω C hw hC ht hn hne hσ hr (fun _ => hv)
  | @product Γ D E a b c T ht d e hr hc ihd ihe =>
      have hpi : HasType P Γ (.pi D E) (.sort c) := .product d.typing e.typing hr
      have hp := Profile.triple hw hpi
      have hg : Relevant (P := P) C Γ (.pi D E) →
          (Ω.profile (D.subst σ) ∈ C → ReadGood Ω C d σ) ∧
          (∀ n, Ω.HasType n (D.subst σ) → Ω.profile (E.subst (Expr.consSub n σ)) ∈ C →
            ReadGood Ω C e (Expr.consSub n σ)) := by
        intro hrel
        constructor
        · intro _
          exact (ihd hn.pi_domain σ hσ).2 a rfl (hrel.pred (.single (.domain hp)))
        · intro n hn' _
          exact (ihe hn.pi_body (Expr.consSub n σ) (hσ.cons hn')).2 b rfl
            (hrel.pred (.single (.codomain hp)))
      constructor
      · intro hat hcc
        have hconv : (T.subst σ).normalForm = .sort c :=
          (Expr.normalForm_converts ((ContextTower.HasType.subst ht hσ).type_weaklyNormalizing hw)
            ((ContextTower.HasType.subst hpi hσ).type_weaklyNormalizing hw) (hc.subst σ)).trans
              (Expr.normalForm_of_normal (Normal.sort c))
        have hax : (AxProfile P c).Nonempty := by
          have hh := hat.nonempty
          rwa [← Ω.profile_normalForm (T.subst σ),hconv,Ω.profile_sort] at hh
        have hs : ({c} : Set S) ⊆ Profile P Γ (.pi D E) := by
          intro r hr'
          have he : r = c := hr'
          subst r
          exact hpi.normalForm hw
        exact hg ⟨{c},hcc.1,(Profile.inclusion_path hp.product (FeasibleProfile.singleton hax)
          hs).reach⟩
      · intro _ _ hrel
        exact fun _ => hg hrel

end ObservationValues
end PureTypeSystem

namespace PureTypeSystem.ObservationValues
universe u
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) [Fintype S]
variable (C : Set (Set S)) {hw : SystemWeaklyNormalizing P} (hno : ¬ ForbiddenConfiguration P C)

open Classical in
/-- Normal-syntax values forget all stored generation choices; normal Reads
also forget their literal sort choice. No functionality hypothesis is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant73da2dd16c3bd45dce0060ec2c6a3434e749ee383f31e7610fe914004ae86394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant73da2dd16c3bd45dce0060ec2c6a3434e749ee383f31e7610fe914004ae86394.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d3ffeb86b9dc10530fed949ca0490756771eb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
