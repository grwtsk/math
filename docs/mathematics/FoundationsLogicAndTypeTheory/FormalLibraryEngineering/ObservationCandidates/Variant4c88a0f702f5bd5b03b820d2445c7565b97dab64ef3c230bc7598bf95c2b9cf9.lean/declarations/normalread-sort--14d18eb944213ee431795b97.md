# normalRead_sort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e04c491a-5ee8-2e4a-b33d-781383ea44ac",
  "kind": "theorem",
  "lexical_name": "normalRead_sort",
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
  "slug": "normalread-sort--14d18eb944213ee431795b97",
  "source": {
    "blob": "12ceeb097e6d1a7c7eeb506bb943bf21c9570978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant4c88a0f702f5bd5b03b820d2445c7565b97dab64ef3c230bc7598bf95c2b9cf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14d18eb944213ee431795b9705dbcce6e15719686216e4a31a874fec90fc3bb4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant4c88a0f702f5bd5b03b820d2445c7565b97dab64ef3c230bc7598bf95c2b9cf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e04c491a-5ee8-2e4a-b33d-781383ea44ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalRead_sort {Γ : List (Expr S)} {s r : S}
    (hs : HasType P Γ (.sort s) (.sort r)) (e : Environment (hw := hw) Ω C hno Γ) :
    (normalRead Ω C hno hs e).val = Candidates.Top Ω (.sort s) := by
  obtain ⟨t,ha,hc⟩ := hs.generation
  let tree : TypingTree P Γ (.sort s) (.sort r) := .sort hs ha hc
  exact (normalRead_eq_of_nf Ω C hno hs tree (Expr.normalForm_of_normal (Normal.sort s))
    e).trans (by
    simp only [tree,preEvaluate,PreResult.sort,Expr.subst,Expr.normalForm_of_normal
      (Normal.sort s)])

open Classical in
/-- The component entry is generic-normal Read; other generic profiles and
unsorted literal expected sorts use exactly typed top. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant4c88a0f702f5bd5b03b820d2445c7565b97dab64ef3c230bc7598bf95c2b9cf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant4c88a0f702f5bd5b03b820d2445c7565b97dab64ef3c230bc7598bf95c2b9cf9.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12ceeb097e6d1a7c7eeb506bb943bf21c9570978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
