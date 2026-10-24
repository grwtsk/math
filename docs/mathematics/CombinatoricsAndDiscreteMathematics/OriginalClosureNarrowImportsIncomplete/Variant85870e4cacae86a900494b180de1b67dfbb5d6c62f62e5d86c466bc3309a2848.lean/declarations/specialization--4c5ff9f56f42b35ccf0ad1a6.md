# specialization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4c11c03-03e3-4452-686a-79746b6a56df",
  "kind": "theorem",
  "lexical_name": "specialization",
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
  "slug": "specialization--4c5ff9f56f42b35ccf0ad1a6",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6133,
    "line": 6106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c5ff9f56f42b35ccf0ad1a6262f9530664539c14db0bb3def9b56c3fdebbe43",
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

Occurrence: `result:e4c11c03-03e3-4452-686a-79746b6a56df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6106–6133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem specialization {Γ : List (Expr S)} {D E N : Expr S} {s : S}
    (e : Environment Ω Γ) (hp : HasType P Γ (.pi D E) (.sort s))
    (hN : HasType P Γ N D) (hg : Profile P Γ (.pi D E) ∈ C)
    (ha : Ω.profile ((Expr.pi D E).subst e.images) ∈ C) (h : Expr S)
    (hh : h ∈ R Ω C (.pi D E) e) (hn : N.subst e.images ∈ R Ω C D e) :
    Expr.app h (N.subst e.images) ∈ R Ω C (E.instantiate N) e := by
  obtain ⟨a,b,c,hD,hE,hr,_⟩ := hp.generation_pi
  let bit := chosenBit (P := P) C (D :: Γ) E.normalForm
  let f : Environment Ω (D :: Γ) := ⟨Expr.extend e.images (N.subst e.images),
    e.typed.cons (ContextTower.HasType.subst hN e.typed),extendBit e.bits bit⟩
  have hm := ((product_iff Ω C hw hp hg e ha h).mp hh).2 (N.subst e.images) hn f ⟨rfl,fun _ => rfl⟩
  have hrel : ∃ K ∈ C, Reach (PrimaryEdge P) (Profile P (D :: Γ) E.normalForm) K := by
    rw [Profile.normalForm]
    exact ⟨_,hg,.single (.codomain (Profile.triple hw hp))⟩
  have hc := compare_subst Ω C hw hC hno (hE.normalForm hw)
    (Expr.normalForm_spec (hE.weaklyNormalizing hw)).2 hrel hD.valid (Expr.single N)
    (TypedSubstitution.single hN) e f.bits false (bits_single C (D :: Γ) E.normalForm N e.bits)
  have he : (fun i => (Expr.single N i).subst e.images) = f.images := by
    funext i; cases i <;> rfl
  rw [he] at hc
  have hout := hc hm
  have ht := hE.instantiate hN
  have ht' := (hE.normalForm hw).instantiate hN
  have cE := (Expr.normalForm_spec (hE.weaklyNormalizing hw)).1.converts.subst (Expr.single N)
  exact (R_conversion Ω C hw (.sorted ht) (.sorted ht') cE e).symm ▸ hout

/-- One-child components need no relational exclusion: both fresh extremes
are tested, and polarity selects one of those tests at specialization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L6106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
