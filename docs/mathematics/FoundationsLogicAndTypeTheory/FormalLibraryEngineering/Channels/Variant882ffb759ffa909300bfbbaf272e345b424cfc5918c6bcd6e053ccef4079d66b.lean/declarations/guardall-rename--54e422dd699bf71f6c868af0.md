# guardAll_rename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07e5b760-30d7-2d28-b9cf-8bba3d805db3",
  "kind": "theorem",
  "lexical_name": "guardAll_rename",
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
  "slug": "guardall-rename--54e422dd699bf71f6c868af0",
  "source": {
    "blob": "9f27095a5042c2e106babe2ec20a6039c2922cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1210,
    "line": 1199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54e422dd699bf71f6c868af072b41dec0fb6a01aae69dc8b404bd7ed79020d4d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07e5b760-30d7-2d28-b9cf-8bba3d805db3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1199–1210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem guardAll_rename (K : QuantifierCode S) (T G Q : Expr S) (ρ : Nat → Nat) :
    (L.guardAll K T G Q).rename ρ =
      (L.rename ρ).guardAll (K.rename ρ) (T.rename ρ)
        (G.rename (Expr.liftRen ρ)) (Q.rename (Expr.liftRen ρ)) := by
  simp only [guardAll,QuantifierCode.all_rename,guardBody_rename]
end LogicCode
namespace LogicSetup
variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    (L : LogicSetup P Γ γ C) {I : Set S} (K : QuantifierRoute L.witnesses C L.base I)
    {T G Q : Expr S} (hT : SortedAt P Γ T I) (mT : WellModed γ T .data)
    (hG : L.Family T G) (hQ : L.Family T Q)
include hT mT hG hQ
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean#L1199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f27095a5042c2e106babe2ec20a6039c2922cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
