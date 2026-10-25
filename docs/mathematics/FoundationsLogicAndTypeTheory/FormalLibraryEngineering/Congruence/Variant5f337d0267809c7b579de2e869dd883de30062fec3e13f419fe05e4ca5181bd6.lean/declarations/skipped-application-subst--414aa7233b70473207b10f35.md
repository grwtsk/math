# skipped_application_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51b9fdd9-efdc-5b3a-31e0-b6a6473bef74",
  "kind": "theorem",
  "lexical_name": "skipped_application_subst",
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
  "slug": "skipped-application-subst--414aa7233b70473207b10f35",
  "source": {
    "blob": "c56f5dd9c2e998dad0ae22a59308e2d767cf8528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1203,
    "line": 1188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:414aa7233b70473207b10f356c052faf401059ed5d75bd420187308a7408fbca",
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

Occurrence: `result:51b9fdd9-efdc-5b3a-31e0-b6a6473bef74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1188–1203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem skipped_application_subst {Γ : List (Expr S)} {f a D E T : Expr S}
    (h : HasType P Γ (.app f a) T) (hf : HasType P Γ f (.pi D E)) (ha : HasType P Γ a D)
    (hc : Converts T (E.instantiate a)) (hne : Neutral (.app f a))
    {σ ξ : Nat → Expr S} (hξ : Ω.TypedSubstitution Γ ξ)
    (hguard : SubstitutionGuard Ω C Γ σ ξ)
    (hactive : ActiveLayer P C (Ω.profile (T.subst ξ)))
    (hina : ¬ ActiveLayer P C (Ω.profile (Expr.pi D E |>.subst ξ))) :
    Neutral (Expr.app f a |>.subst σ) := by
  have hF : Ω.profile (Expr.pi D E |>.subst ξ) ∈ ObservationLayers P C := by
    obtain ⟨s,hp⟩ := hf.product_type_sorted
    have he := Ω.profile_converts ((ContextTower.HasType.subst h hξ).type_weaklyNormalizing hw)
      ((ContextTower.HasType.subst (HasType.application hf ha) hξ).type_weaklyNormalizing hw)
        (hc.subst ξ)
    exact ObservationLayers.positive (he ▸ hactive.layer) (Ω.instantiate_profile_ascent hw hp ha hξ)
  have hnf : Neutral f := by cases hne; assumption
  exact .app (neutral_subst_of_inactive Ω C hw hnf hf hξ hguard hF hina)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean#L1188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c56f5dd9c2e998dad0ae22a59308e2d767cf8528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
