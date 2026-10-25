# neutral_profile_ascent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48a112ca-85db-95fe-19be-df3a0d9c78c3",
  "kind": "theorem",
  "lexical_name": "neutral_profile_ascent",
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
  "slug": "neutral-profile-ascent--a49e81eee7f85072b79f0c31",
  "source": {
    "blob": "bc403ba71cda7183d54fd26b7e8deeacf7119877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1160,
    "line": 1130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a49e81eee7f85072b79f0c311a64c5b1ba62bfe6e1cf45593a549b550d5dd243",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48a112ca-85db-95fe-19be-df3a0d9c78c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1130–1160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neutral_profile_ascent {Γ : List (Expr S)} {M T : Expr S}
    (hne : Neutral M) (ht : PureTypeSystem.HasType P Γ M T)
    {σ : Nat → Expr S} (hσ : Ω.TypedSubstitution Γ σ) :
    ∃ n D, M.head = .var n ∧ Lookup Γ n D ∧
      PositivePath (PrimaryEdge P) (Ω.profile (T.subst σ)) (Ω.profile (D.subst σ)) := by
  induction hne generalizing T with
  | var n =>
      obtain ⟨D,hd,hc⟩ := ht.generation
      refine ⟨n,D,rfl,hd,?_⟩
      rw [Ω.profile_converts ((ContextTower.HasType.subst ht hσ).type_weaklyNormalizing hw)
        ((ContextTower.HasType.subst (PureTypeSystem.HasType.lookup ht.valid hd)
          hσ).type_weaklyNormalizing hw)
        (hc.subst σ)]
      exact .refl
  | @app f a hnf ih =>
      obtain ⟨D,E,hf,ha,hc⟩ := ht.generation_app
      obtain ⟨s,hp⟩ := hf.product_type_sorted
      obtain ⟨n,A,hh,hl,hr⟩ := ih hf
      refine ⟨n,A,hh,hl,?_⟩
      rw [Ω.profile_converts ((ContextTower.HasType.subst ht hσ).type_weaklyNormalizing hw)
        ((ContextTower.HasType.subst (PureTypeSystem.HasType.application hf ha)
          hσ).type_weaklyNormalizing hw)
        (hc.subst σ)]
      exact (Ω.instantiate_profile_ascent hw hp ha hσ).trans hr
end ContextTower

namespace ObservationValues
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) (C : Set (Set S))
    (hw : SystemWeaklyNormalizing P)
/-- Only nonneutral replacements need the activity guard. Variables that
remain neutral are harmless even at a skipped clause. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant31167818ee1351ffe48b726f2946805f960b3091b4b32e2cb540827c00aa3746.lean#L1130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc403ba71cda7183d54fd26b7e8deeacf7119877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
