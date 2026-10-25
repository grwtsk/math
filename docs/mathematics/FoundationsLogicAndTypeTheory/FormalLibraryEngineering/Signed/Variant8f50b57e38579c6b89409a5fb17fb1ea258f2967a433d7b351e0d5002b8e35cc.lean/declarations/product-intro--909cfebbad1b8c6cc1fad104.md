# product_intro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72d3de5b-b0b3-e726-ab28-eefce4c2e4aa",
  "kind": "theorem",
  "lexical_name": "product_intro",
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
  "slug": "product-intro--909cfebbad1b8c6cc1fad104",
  "source": {
    "blob": "66ffa05e7620437fd268ce9af9fa028ace9f6af4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 332,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant8f50b57e38579c6b89409a5fb17fb1ea258f2967a433d7b351e0d5002b8e35cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:909cfebbad1b8c6cc1fad104c02afc277fdc2937096dc47e80281e0786e938e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant8f50b57e38579c6b89409a5fb17fb1ea258f2967a433d7b351e0d5002b8e35cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72d3de5b-b0b3-e726-ab28-eefce4c2e4aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_intro {Γ : List (Expr S)} {D E : Expr S} {s : S}
    (e : Environment Ω Γ) (hp : HasType P Γ (.pi D E) (.sort s))
    (hg : Profile P Γ (.pi D E) ∈ C) (ha : Ω.profile ((Expr.pi D E).subst e.val) ∈ C)
    (h : Expr S) (ht : h ∈ Top Ω ((Expr.pi D E).subst e.val).normalForm)
    (hb : ∀ n, n ∈ R Ω hC hw hno D e → ∀ f : Environment Ω (D :: Γ),
      f.val = Expr.extend e.val n → Expr.app h n ∈ R Ω hC hw hno E f) :
    h ∈ R Ω hC hw hno (.pi D E) e := by
  obtain ⟨a,b,c,hD,hE,_,_⟩ := hp.generation_pi
  have hf := Profile.triple hw hp
  have hd := R_before Ω hC hw hno hD e ⟨_,hg,.single (.domain hf)⟩
  simp only [R,hg,ite_true]
  apply (actual_raw_product Ω hC hw hno hp e ha h).mpr
  refine ⟨ht,?_⟩
  intro n hn
  have hnt := (actual_candidate Ω hC hw hno _).upper hn |>.1
  have hrawD := ContextTower.HasType.subst hD e.property
  have hnr := hnt.conversion hrawD
    (.symm _ _ (Expr.normalForm_spec (hrawD.weaklyNormalizing hw)).1.converts)
  let f : Environment Ω (D :: Γ) := ⟨Expr.extend e.val n,e.property.cons hnr⟩
  have he := R_before Ω hC hw hno hE f ⟨_,hg,.single (.codomain hf)⟩
  have hh := hb n (hd.symm ▸ hn) f rfl
  exact he ▸ hh

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant8f50b57e38579c6b89409a5fb17fb1ea258f2967a433d7b351e0d5002b8e35cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signed/Variant8f50b57e38579c6b89409a5fb17fb1ea258f2967a433d7b351e0d5002b8e35cc.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ffa05e7620437fd268ce9af9fa028ace9f6af4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
