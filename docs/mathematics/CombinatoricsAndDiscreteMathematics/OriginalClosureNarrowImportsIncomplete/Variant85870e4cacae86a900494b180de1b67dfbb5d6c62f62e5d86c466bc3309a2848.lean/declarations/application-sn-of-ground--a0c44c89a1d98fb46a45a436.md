# application_sn_of_ground

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1a4cc7b-124e-1c61-c7e0-38672779f048",
  "kind": "theorem",
  "lexical_name": "application_sn_of_ground",
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
  "slug": "application-sn-of-ground--a0c44c89a1d98fb46a45a436",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5130,
    "line": 5077,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0c44c89a1d98fb46a45a43650099b46373e03c0161821149f9234e4c4668baf",
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

Occurrence: `result:f1a4cc7b-124e-1c61-c7e0-38672779f048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5077–5130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem application_sn_of_ground {S : Type u} {P : Specification S}
    (Ω : ContextTower P) (hw : SystemWeaklyNormalizing P)
    (hground : ∀ {T}, ActualType Ω T → Ground Ω T = Top Ω T)
    {Γ : List (Expr S)} {f a D E : Expr S}
    (hf : HasType P Γ f (.pi D E)) (ha : HasType P Γ a D)
    (hsf : StronglyNormalizing f) (hsa : StronglyNormalizing a) :
    StronglyNormalizing (.app f a) := by
  obtain ⟨ρ,hρ⟩ := Ω.variable_substitution hf.valid
  have hf' := ContextTower.HasType.subst hf hρ
  have ha' := ContextTower.HasType.subst ha hρ
  simp only [Expr.subst_var_rename] at hf' ha'
  obtain ⟨s,hpi⟩ := hf.product_type_sorted
  have hpi' := ContextTower.HasType.subst hpi hρ
  simp only [Expr.subst_var_rename,Expr.rename] at hpi'
  obtain ⟨a',b',c',hD,hE,hr,_⟩ := hpi.generation_pi
  have hDw := (ContextTower.HasType.subst hD hρ).weaklyNormalizing hw
  simp only [Expr.subst_var_rename] at hDw
  have hPw := hpi'.weaklyNormalizing hw
  have hDN : Normal (D.rename ρ).normalForm := (Expr.normalForm_spec hDw).2
  have hPN := (Expr.normalForm_spec hPw).2
  have hpNF : ((Expr.pi D E).rename ρ).normalForm =
      .pi (D.rename ρ).normalForm (E.rename (Expr.liftRen ρ)).normalForm := by
    apply Expr.normalForm_pi hDw
    obtain ⟨target, reduces, normal⟩ := hPw
    obtain ⟨domain, body, rfl, _, bodyReduces⟩ := Reduces.pi_inv reduces
    exact ⟨body, bodyReduces, normal.pi_body⟩
  have htype : ActualType Ω ((Expr.pi D E).rename ρ).normalForm :=
    .inl ⟨hPN,s,hpi'.normalForm hw⟩
  have hfg : f.rename ρ ∈ Ground Ω ((Expr.pi D E).rename ρ).normalForm := by
    rw [hground htype]
    exact ⟨hf'.normalize_type hw,hsf.rename ρ⟩
  rw [hpNF] at hfg
  have hag : a.rename ρ ∈ Top Ω (D.rename ρ).normalForm := ⟨ha'.normalize_type hw,hsa.rename ρ⟩
  have hs := (ground_le_top (ground_application hw hfg hag)).2
  exact StronglyNormalizing.of_rename ρ hs

end PureTypeSystem

end OAI

/- Source module: OAI.Computability.TypeSystem.Signed -/

namespace OAI

namespace PureTypeSystem.SignedInterpretation

section
universe u
open Classical Candidates
variable {S : Type u} {P : Specification S} (Ω : ContextTower P)
variable {C : Set (Set S)} (hC : IsComponent (PrimaryEdge P) C)
variable (hw : SystemWeaklyNormalizing P)
variable (hno : ∀ I ∈ C, ¬ SignedPath (PrimaryEdge P) I I true)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L5077).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
