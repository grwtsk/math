# normal_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:811ccbdf-bbec-a474-ecb0-c643001f1baa",
  "kind": "theorem",
  "lexical_name": "normal_product",
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
  "slug": "normal-product--f0990954b593cd2941aab1df",
  "source": {
    "blob": "5e0d083ec1beb708a9e8efdc39363be16152f8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5759,
    "line": 5729,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0990954b593cd2941aab1df621908e91a626af12859eeedd9f8e88bc01e4e43",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:811ccbdf-bbec-a474-ecb0-c643001f1baa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5729–5759.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_product {Γ : List (Expr S)} {D E : Expr S} {s : S}
    (hp : HasType P Γ (.pi D E) (.sort s)) (σ : Nat → Expr S)
    (hσ : Ω.TypedSubstitution Γ σ) (θ : Bits) :
    eval Ω C Γ (Expr.pi D E).normalForm σ θ =
      if Profile P Γ (.pi D E) ∈ C ∧ Ω.profile ((Expr.pi D E).subst σ) ∈ C then
        RawProduct Ω D E σ (eval Ω C Γ D.normalForm σ θ)
          (fun n b => eval Ω C (D :: Γ) E.normalForm (Expr.extend σ n) (extendBit θ b))
      else Top Ω ((Expr.pi D E).subst σ).normalForm := by
  obtain ⟨a,b,c,hD,hE,hr,_⟩ := hp.generation_pi
  have hDN := hD.normalForm hw
  have hEN := hE.normalForm hw
  have cD := (Expr.normalForm_spec (hD.weaklyNormalizing hw)).1.converts
  have cE := (Expr.normalForm_spec (hE.weaklyNormalizing hw)).1.converts
  let ctx := ContextEquivalent.head_conversion hD hDN cD
  have hEN' := (ctx.typing _ _).mp hEN
  have hpn : HasType P Γ (.pi D.normalForm E.normalForm) (.sort c) := .product hDN hEN' hr
  have nc := Converts.pi cD cE
  have he : Profile P Γ (.pi D E) = Profile P Γ (.pi D.normalForm E.normalForm) :=
    Profile.converts (hp.weaklyNormalizing hw) (hpn.weaklyNormalizing hw) nc
  have hrw := (ContextTower.HasType.subst hp hσ).weaklyNormalizing hw
  have hnw := (ContextTower.HasType.subst hpn hσ).weaklyNormalizing hw
  have hnf := Expr.normalForm_converts hrw hnw (nc.subst σ)
  have hae : Ω.profile ((Expr.pi D E).subst σ) = Ω.profile ((Expr.pi D.normalForm E.normalForm).subst σ) := by
    rw [←Ω.profile_normalForm ((Expr.pi D E).subst σ),←Ω.profile_normalForm ((Expr.pi D.normalForm E.normalForm).subst σ),hnf]
  rw [Expr.normalForm_pi (hD.weaklyNormalizing hw) (hE.weaklyNormalizing hw),eval_pi,←he,←hae]
  split
  · unfold RawProduct
    rw [←hnf]
    simp_rw [←eval_recontext Ω C hEN ctx]
  · exact congrArg (Top Ω) hnf.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean#L5729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0d083ec1beb708a9e8efdc39363be16152f8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
