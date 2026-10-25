# ground_application_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fde27bc5-dd29-4315-9277-99d09b33cd9b",
  "kind": "theorem",
  "lexical_name": "ground_application_subst",
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
  "slug": "ground-application-subst--cc8595a42eabee104ffed968",
  "source": {
    "blob": "69b0a29843f5051a65a7f2e01f13b12849f7b7fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant08bab2d7d96e775739e22491e7dac87ddca191394efbc524393cae1af987a2ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc8595a42eabee104ffed968e958ef858b477bcc1210b19359401af026c053d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant08bab2d7d96e775739e22491e7dac87ddca191394efbc524393cae1af987a2ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fde27bc5-dd29-4315-9277-99d09b33cd9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ground_application_subst {Γ : List (Expr S)} {D E n h : Expr S} {s : S}
    {σ : Nat → Expr S} (hp : HasType P Γ (.pi D E) (.sort s))
    (hσ : Ω.TypedSubstitution Γ σ)
    (hh : h ∈ Ground Ω ((Expr.pi D E).subst σ).normalForm)
    (hn : n ∈ Top Ω (D.subst σ).normalForm) :
    Expr.app h n ∈ Ground Ω (E.subst (Expr.extend σ n)).normalForm := by
  obtain ⟨a,b,c,hD,hE,_,_⟩ := hp.generation_pi
  have hraw := ContextTower.HasType.subst hp hσ
  have hwraw := hraw.weaklyNormalizing hw
  change WeaklyNormalizing (.pi (D.subst σ) (E.subst (Expr.liftSub σ))) at hwraw
  have hrawD := ContextTower.HasType.subst hD hσ
  have hnr : Ω.HasType n (D.subst σ) := hn.1.conversion hrawD
    (.symm _ _ (Expr.normalForm_spec (hrawD.weaklyNormalizing hw)).1.converts)
  have hparts : WeaklyNormalizing (D.subst σ) ∧
      WeaklyNormalizing (E.subst (Expr.liftSub σ)) := by
    obtain ⟨normal, reduction, hnormal⟩ := hwraw
    obtain ⟨domain, body, rfl, hdomain, hbody⟩ := Reduces.pi_inv reduction
    exact ⟨⟨domain, hdomain, hnormal.pi_domain⟩, ⟨body, hbody, hnormal.pi_body⟩⟩
  have htarget : Ω.HasType (E.subst (Expr.extend σ n)) (.sort b) :=
    ContextTower.HasType.subst hE (hσ.cons hnr)
  have hnf : ((Expr.pi D E).subst σ).normalForm =
      .pi (D.subst σ).normalForm (E.subst (Expr.liftSub σ)).normalForm :=
    Expr.normalForm_pi hparts.1 hparts.2
  rw [hnf] at hh
  have hout := ground_application hw hh hn
  have hpN := hraw.normalForm hw
  rw [hnf] at hpN
  obtain ⟨t,ht⟩ := Ω.frame_target_sorted hpN hn.1
  have hr : Reduces (E.subst (Expr.extend σ n))
      ((E.subst (Expr.liftSub σ)).normalForm.instantiate n) := by
    rw [← Expr.instantiate_extended]
    exact (Expr.normalForm_spec hparts.2).1.subst (Expr.single n)
  have he := Expr.normalForm_converts (htarget.weaklyNormalizing hw)
    (ht.weaklyNormalizing hw) hr.converts
  rwa [he]
end Candidates

namespace Processed
variable {S : Type u} {P : Specification S} {Ω : ContextTower P}
variable {U C : Set (Set S)} (H : Processed Ω U C) (hw : SystemWeaklyNormalizing P)
variable {Γ : List (Expr S)} {T : Expr S} {s : S} {σ : Nat → Expr S}
include H hw
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant08bab2d7d96e775739e22491e7dac87ddca191394efbc524393cae1af987a2ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant08bab2d7d96e775739e22491e7dac87ddca191394efbc524393cae1af987a2ce.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69b0a29843f5051a65a7f2e01f13b12849f7b7fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
