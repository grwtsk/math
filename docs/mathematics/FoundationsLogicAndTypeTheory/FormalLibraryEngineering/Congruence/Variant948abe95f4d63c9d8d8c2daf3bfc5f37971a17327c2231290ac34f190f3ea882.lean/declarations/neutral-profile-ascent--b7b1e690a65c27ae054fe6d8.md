# neutral_profile_ascent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccf6a478-b1d5-5c4e-a15c-e81cf9638caa",
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
  "slug": "neutral-profile-ascent--b7b1e690a65c27ae054fe6d8",
  "source": {
    "blob": "fc8b46f226b462286f2b1ca9f76a4d37bb84c64a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1177,
    "line": 1147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7b1e690a65c27ae054fe6d85f82f472e99e29634aa1e38f2569200dcfedbff8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccf6a478-b1d5-5c4e-a15c-e81cf9638caa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1147–1177.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean#L1147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc8b46f226b462286f2b1ca9f76a4d37bb84c64a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
