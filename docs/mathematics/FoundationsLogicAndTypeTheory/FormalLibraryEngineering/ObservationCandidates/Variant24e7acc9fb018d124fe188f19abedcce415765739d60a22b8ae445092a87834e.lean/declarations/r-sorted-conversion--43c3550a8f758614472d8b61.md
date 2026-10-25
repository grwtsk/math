# R_sorted_conversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49d9fe8f-7c61-01b9-70ec-b46111f21467",
  "kind": "theorem",
  "lexical_name": "R_sorted_conversion",
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
  "slug": "r-sorted-conversion--43c3550a8f758614472d8b61",
  "source": {
    "blob": "230cae76f88c4053bec60af05b705e7422ee3438",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43c3550a8f758614472d8b612d83e1d7a899b88d34f09688482946a828860088",
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

Occurrence: `result:49d9fe8f-7c61-01b9-70ec-b46111f21467`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem R_sorted_conversion {Γ : List (Expr S)} {A B : Expr S} {s r : S}
    (hA : HasType P Γ A (.sort s)) (hB : HasType P Γ B (.sort r)) (hc : Converts A B)
    (e : Environment (hw := hw) Ω C hno Γ) : R Ω C hno A e = R Ω C hno B e := by
  have hp := Profile.converts (P := P) (Γ := Γ) (hA.weaklyNormalizing hw)
    (hB.weaklyNormalizing hw) hc
  by_cases ha : Profile P Γ A ∈ C
  · rw [R_of_sorted Ω C hno hA e ha,R_of_sorted Ω C hno hB e (hp ▸ ha)]
    exact normalRead_congr Ω C hno hA hB hc e
  · rw [R_outside Ω C hno A e (.inl ha),R_outside Ω C hno B e (.inl (hp ▸ ha))]
    exact congrArg (Candidates.Top Ω) (Expr.normalForm_converts
      ((ContextTower.HasType.subst hA e.typed).weaklyNormalizing hw)
      ((ContextTower.HasType.subst hB e.typed).weaklyNormalizing hw) (hc.subst e.images))

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant24e7acc9fb018d124fe188f19abedcce415765739d60a22b8ae445092a87834e.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `230cae76f88c4053bec60af05b705e7422ee3438` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
