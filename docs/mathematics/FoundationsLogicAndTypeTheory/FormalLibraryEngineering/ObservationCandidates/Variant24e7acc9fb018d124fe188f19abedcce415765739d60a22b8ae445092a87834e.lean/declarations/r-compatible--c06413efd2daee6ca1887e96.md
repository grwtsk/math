# R_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:632a6558-5eea-4353-8635-35e11db9cf6c",
  "kind": "theorem",
  "lexical_name": "R_compatible",
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
  "slug": "r-compatible--c06413efd2daee6ca1887e96",
  "source": {
    "blob": "230cae76f88c4053bec60af05b705e7422ee3438",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 463,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c06413efd2daee6ca1887e96c0b39a6ccec96b9ed5d7a72f31077850166411af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:632a6558-5eea-4353-8635-35e11db9cf6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem R_compatible (hC : IsComponent (PrimaryEdge P) C)
    {Γ : List (Expr S)} {A : Expr S} (hA : Expected P Γ A)
    (e f : Environment (hw := hw) Ω C hno Γ) (he : e.Compatible f) :
    R Ω C hno A e = R Ω C hno A f := by
  rcases hA with ⟨s,rfl⟩ | ⟨s,hA⟩
  · exact (R_sort Ω C hno s e).trans (R_sort Ω C hno s f).symm
  · by_cases hc : Profile P Γ A ∈ C
    · rw [R_of_sorted Ω C hno hA e hc,R_of_sorted Ω C hno hA f hc]
      exact normalRead_compatible Ω C hno hC hA e f he
    · rw [R_outside Ω C hno A e (.inl hc),R_outside Ω C hno A f (.inl hc),
        e.actual_expr_eq he.1 hA]

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `230cae76f88c4053bec60af05b705e7422ee3438` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
