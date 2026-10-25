# product_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc72eeec-2a9d-004c-54fa-8b720fbec0d3",
  "kind": "theorem",
  "lexical_name": "product_iff",
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
  "slug": "product-iff--8d67e4b42167bcc6fed26b79",
  "source": {
    "blob": "03a59ae80cfd3670ac254fd0e2cbd8a54e4e0c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 394,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d67e4b42167bcc6fed26b794a488fc53299920cb71b3562231da3c923114c39",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc72eeec-2a9d-004c-54fa-8b720fbec0d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_iff {Γ : List (Expr S)} {D E : Expr S} {s : S}
    (hp : HasType P Γ (.pi D E) (.sort s)) (hg : Profile P Γ (.pi D E) ∈ C)
    (e : Environment Ω Γ) (ha : Ω.profile ((Expr.pi D E).subst e.images) ∈ C) (h : Expr S) :
    h ∈ R Ω C (.pi D E) e ↔
      h ∈ Top Ω ((Expr.pi D E).subst e.images).normalForm ∧
      ∀ n, n ∈ R Ω C D e → ∀ f : Environment Ω (D :: Γ), e.Ext f n → Expr.app h n ∈ R Ω C E f := by
  rw [R,normal_product Ω C hw hp e.images e.typed e.bits,if_pos ⟨hg,ha⟩]
  obtain ⟨a,b,c,hD,hE,_,_⟩ := hp.generation_pi
  constructor
  · rintro ⟨ht,hbody⟩
    refine ⟨ht,?_⟩
    intro n hn f he
    have hb : f.bits = extendBit e.bits (f.bits 0) := by
      funext i; cases i with
      | zero => rfl
      | succ i => exact he.2 i
    change Expr.app h n ∈ eval Ω C (D :: Γ) E.normalForm f.images f.bits
    rw [he.1,hb]
    exact hbody n hn (f.bits 0)
  · rintro ⟨ht,hbody⟩
    refine ⟨ht,?_⟩
    intro n hn bit
    have hrawD := ContextTower.HasType.subst hD e.typed
    have hnt := ((R_candidate Ω C hw (.sorted hD) e).upper hn).1.conversion hrawD
      (.symm _ _ (Expr.normalForm_spec (hrawD.weaklyNormalizing hw)).1.converts)
    let f : Environment Ω (D :: Γ) := ⟨Expr.extend e.images n,e.typed.cons hnt,extendBit e.bits bit⟩
    exact hbody n hn f ⟨rfl,fun _ => rfl⟩

end

section
universe u
variable {S : Type u} {P : Specification S} (C : Set (Set S))

open Classical in
/-- Replaced supported heads are assigned the extremum appropriate to the
comparison direction and path parity. Unreplaced heads retain their bit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant2fab24a53133576ac3195566fc3e8046f29c7d2c2d6d79779a0cd8d31ad46066.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03a59ae80cfd3670ac254fd0e2cbd8a54e4e0c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
