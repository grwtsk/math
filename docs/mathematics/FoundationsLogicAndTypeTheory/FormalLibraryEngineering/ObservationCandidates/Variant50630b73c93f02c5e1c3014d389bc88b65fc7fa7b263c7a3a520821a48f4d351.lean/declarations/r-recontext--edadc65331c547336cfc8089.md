# R_recontext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b28d2bd-ad26-b4cf-5399-361cd6e342be",
  "kind": "theorem",
  "lexical_name": "R_recontext",
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
  "slug": "r-recontext--edadc65331c547336cfc8089",
  "source": {
    "blob": "29f3f3277ee9f61effd5a2ad3116aaf21d2f4d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 296,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant50630b73c93f02c5e1c3014d389bc88b65fc7fa7b263c7a3a520821a48f4d351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edadc65331c547336cfc8089b63cb8bd210398711238032be56ac2b0243eb6cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant50630b73c93f02c5e1c3014d389bc88b65fc7fa7b263c7a3a520821a48f4d351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b28d2bd-ad26-b4cf-5399-361cd6e342be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem R_recontext {Γ Δ : List (Expr S)} {A : Expr S} (hA : Expected P Γ A)
    (h : ContextEquivalent P Γ Δ)
    (e : Environment (hw := hw) Ω C hno Γ) (f : Environment (hw := hw) Ω C hno Δ)
    (he : e.SameData f) : R Ω C hno A e = R Ω C hno A f := by
  rcases hA with ⟨s,rfl⟩ | ⟨s,hA⟩
  · exact (R_sort Ω C hno s e).trans (R_sort Ω C hno s f).symm
  · have hp : Profile P Γ A = Profile P Δ A := by
      ext s; exact h.typing _ _
    by_cases ha : Profile P Γ A ∈ C
    · rw [R_of_sorted Ω C hno hA e ha,R_of_sorted Ω C hno ((h.typing _ _).mp hA) f (hp ▸ ha)]
      exact normalRead_recontext Ω C hno hA h e f he
    · rw [R_outside Ω C hno _ e (.inl ha),R_outside Ω C hno _ f (.inl (hp ▸ ha)),he.1]

end

section
universe u
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) [Fintype S]
variable (C : Set (Set S)) {hw : SystemWeaklyNormalizing P} (hno : ¬ ForbiddenConfiguration P C)
variable (hC : IsComponent (PrimaryEdge P) C)
include hC

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant50630b73c93f02c5e1c3014d389bc88b65fc7fa7b263c7a3a520821a48f4d351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant50630b73c93f02c5e1c3014d389bc88b65fc7fa7b263c7a3a520821a48f4d351.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f3f3277ee9f61effd5a2ad3116aaf21d2f4d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
