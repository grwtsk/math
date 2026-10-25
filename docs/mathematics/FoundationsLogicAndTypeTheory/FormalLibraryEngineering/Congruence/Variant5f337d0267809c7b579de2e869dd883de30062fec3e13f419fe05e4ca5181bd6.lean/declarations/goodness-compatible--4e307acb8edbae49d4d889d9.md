# goodness_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c7f7b1f-01de-ba46-d2be-e98ce5a3e9d3",
  "kind": "theorem",
  "lexical_name": "goodness_compatible",
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
  "slug": "goodness-compatible--4e307acb8edbae49d4d889d9",
  "source": {
    "blob": "c56f5dd9c2e998dad0ae22a59308e2d767cf8528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1014,
    "line": 935,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e307acb8edbae49d4d889d9b413b2bcd5133b321ca2a37455b9cb8649c43c63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c7f7b1f-01de-ba46-d2be-e98ce5a3e9d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 935–1014.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goodness_compatible {Γ : List (Expr S)} {M T : Expr S} (t : TypingTree P Γ M T)
    {σ τ : Nat → Expr S} (hσ : Ω.TypedSubstitution Γ σ) (hτ : Ω.TypedSubstitution Γ τ)
    (he : ContextTower.TypedSubstitution.Compatible Γ σ τ) :
    (ValGood Ω C t σ ↔ ValGood Ω C t τ) ∧ (ReadGood Ω C t σ ↔ ReadGood Ω C t τ) := by
  induction t generalizing σ τ with
  | var ht hd hc => exact ⟨Iff.rfl,baseGood_congr Ω C hw ht hσ hτ he Iff.rfl⟩
  | sort ht ha hc => exact ⟨Iff.rfl,Iff.rfl⟩
  | @abstraction Γ D m E a s T ht d b hp hc ihd ihb =>
      have hind (n : Expr S) : Ω.HasType n (D.subst σ) ↔ Ω.HasType n (D.subst τ) := by
        constructor
        · intro hn
          exact hn.conversion (ContextTower.HasType.subst d.typing hτ)
            (d.typing.scope.1.subst_converts he)
        · intro hn
          exact hn.conversion (ContextTower.HasType.subst d.typing hσ) (.symm _ _
            (d.typing.scope.1.subst_converts he))
      have hv : ValGood Ω C (.abstraction ht d b hp hc) σ ↔ ValGood Ω C (.abstraction ht d b
        hp hc) τ := by
        dsimp only [ValGood,goodness]
        apply forall_congr'; intro n
        constructor
        · intro h hn
          have hn' := (hind n).mpr hn
          have he' := he.cons_same D n
          rw [← he'.type_profile hw (hσ.cons hn') (hτ.cons hn) b.typing]
          exact fun ha => (ihb (hσ.cons hn') (hτ.cons hn) he').1.mp (h hn' ha)
        · intro h hn
          have hn' := (hind n).mp hn
          have he' := he.cons_same D n
          rw [he'.type_profile hw (hσ.cons hn) (hτ.cons hn') b.typing]
          exact fun ha => (ihb (hσ.cons hn) (hτ.cons hn') he').1.mpr (h hn' ha)
      exact ⟨hv,baseGood_congr Ω C hw ht hσ hτ he hv⟩
  | @application Γ g n D E T ht f a hc ihf iha =>
      have hv : ValGood Ω C (.application ht f a hc) σ ↔ ValGood Ω C (.application ht f a hc)
        τ := by
        dsimp only [ValGood,goodness]
        have hF := he.type_profile hw hσ hτ f.typing
        have hD := he.type_profile hw hσ hτ a.typing
        rw [hF,hD]
        split
        · exact and_congr (ihf hσ hτ he).1 (imp_congr_right fun _ => (iha hσ hτ he).1)
        · exact Iff.rfl
      exact ⟨hv,baseGood_congr Ω C hw ht hσ hτ he hv⟩
  | @product Γ D E a b c T ht d bt hr hc ihd ihb =>
      have hind (n : Expr S) : Ω.HasType n (D.subst σ) ↔ Ω.HasType n (D.subst τ) := by
        constructor
        · intro hn
          exact hn.conversion (ContextTower.HasType.subst d.typing hτ)
            (d.typing.scope.1.subst_converts he)
        · intro hn
          exact hn.conversion (ContextTower.HasType.subst d.typing hσ) (.symm _ _
            (d.typing.scope.1.subst_converts he))
      have hbody : (∀ n, Ω.HasType n (D.subst σ) → Ω.profile (E.subst (Expr.consSub n σ)) ∈ C
        → ReadGood Ω C bt (Expr.consSub n σ)) ↔
          (∀ n, Ω.HasType n (D.subst τ) → Ω.profile (E.subst (Expr.consSub n τ)) ∈ C →
            ReadGood Ω C bt (Expr.consSub n τ)) := by
        apply forall_congr'; intro n
        constructor
        · intro h hn
          have hn' := (hind n).mpr hn
          have he' := he.cons_same D n
          rw [← he'.expr_profile hw (hσ.cons hn') (hτ.cons hn) bt.typing]
          exact fun hh => (ihb (hσ.cons hn') (hτ.cons hn) he').2.mp (h hn' hh)
        · intro h hn
          have hn' := (hind n).mp hn
          have he' := he.cons_same D n
          rw [he'.expr_profile hw (hσ.cons hn) (hτ.cons hn') bt.typing]
          exact fun hh => (ihb (hσ.cons hn) (hτ.cons hn') he').2.mpr (h hn' hh)
      dsimp only [ValGood,ReadGood,goodness]
      have hD := he.expr_profile hw hσ hτ d.typing
      have hM := he.expr_profile hw hσ hτ ht
      rw [hD,hM]
      have hg := and_congr (imp_congr_right fun (_ : Ω.profile (D.subst τ) ∈ C) => (ihd hσ hτ
        he).2) hbody
      exact ⟨imp_congr_right fun _ => hg,imp_congr_right fun _ => hg⟩

end ObservationValues

namespace Neutral
variable {S : Type u} {M : Expr S} {ρ : Nat → Nat}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean#L935).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c56f5dd9c2e998dad0ae22a59308e2d767cf8528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
