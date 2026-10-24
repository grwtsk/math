# rawProduct_candidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e22e7ff8-b05b-256b-8bfb-1707ac6ff455",
  "kind": "theorem",
  "lexical_name": "rawProduct_candidate",
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
  "slug": "rawproduct-candidate--9dc15eeaab06a790527a8262",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4671,
    "line": 4627,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dc15eeaab06a790527a8262db8929481864598bb9cb096a1a9aae4ff69468d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e22e7ff8-b05b-256b-8bfb-1707ac6ff455`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4627–4671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawProduct_candidate {Γ : List (Expr S)} {D E : Expr S} {s : S}
    {σ : Nat → Expr S} {X : Set (Expr S)} {Y : Expr S → Bool → Set (Expr S)}
    (hp : HasType P Γ (.pi D E) (.sort s)) (hσ : Ω.TypedSubstitution Γ σ)
    (hX : IsCandidate Ω (D.subst σ).normalForm X)
    (hY : ∀ n ∈ X, ∀ b, IsCandidate Ω (E.subst (Expr.extend σ n)).normalForm (Y n b)) :
    IsCandidate Ω ((Expr.pi D E).subst σ).normalForm (RawProduct Ω D E σ X Y) where
  lower := by
    intro h hh
    refine ⟨ground_le_top hh,?_⟩
    intro n hn b
    exact (hY n hn b).lower (ground_application_subst hw hp hσ hh (hX.upper hn))
  upper := fun _ hh => hh.1
  expansion := by
    intro D' m a ns ht hD hm ha hns hc
    refine ⟨⟨ht,StronglyNormalizing.head_expansion hD hm ha hns hc.1.2⟩,?_⟩
    intro n hn b
    have ht' := application_subst_type hw hp hσ ht (hX.upper hn).1
    have hsn : StronglyNormalizingArgs (ns ++ [n]) := by
      apply StronglyNormalizingArgs.of_forall
      intro x hx
      rcases List.mem_append.mp hx with hx | hx
      · exact hns.of_mem hx
      · exact (List.mem_singleton.mp hx).symm ▸ (hX.upper hn).2
    have hc' := hc.2 n hn b
    have ht'' : Ω.HasType ((Expr.app (.lam D' m) a).apps (ns ++ [n]))
        (E.subst (Expr.extend σ n)).normalForm := by
      simpa only [Expr.apps_append,Expr.apps] using ht'
    have hc'' : (m.instantiate a).apps (ns ++ [n]) ∈ Y n b := by
      simpa only [Expr.apps_append,Expr.apps] using hc'
    simpa only [Expr.apps_append,Expr.apps] using
      (hY n hn b).expansion D' m a (ns ++ [n]) ht'' hD hm ha hsn hc'' 
end PureTypeSystem.Candidates

end OAI

/- Source module: OAI.Computability.TypeSystem.Components -/

namespace OAI

namespace PureTypeSystem

section
universe u v
namespace Neutral
variable {S : Type u} {M : Expr S} {ns : List (Expr S)}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L4627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
