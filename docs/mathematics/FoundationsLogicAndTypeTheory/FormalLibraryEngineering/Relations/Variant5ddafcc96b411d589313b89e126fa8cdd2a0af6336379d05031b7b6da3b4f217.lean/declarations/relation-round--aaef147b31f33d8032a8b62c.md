# relation_round

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28a196bf-f7a1-96e7-01cf-2f62d2ccef6c",
  "kind": "theorem",
  "lexical_name": "relation_round",
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
  "slug": "relation-round--aaef147b31f33d8032a8b62c",
  "source": {
    "blob": "90bd98245c081232dc145a3f5e717c3fc0116812",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 500,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant5ddafcc96b411d589313b89e126fa8cdd2a0af6336379d05031b7b6da3b4f217.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaef147b31f33d8032a8b62c0dd8b3b761d7ce5abeb3fc6cca9576b6bda33de0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant5ddafcc96b411d589313b89e126fa8cdd2a0af6336379d05031b7b6da3b4f217.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28a196bf-f7a1-96e7-01cf-2f62d2ccef6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relation_round (hy : HasType P Γ y (R.logicalType T)) (my : WellModed γ y .data) :
    Proves P Γ γ (R.relation L.code KP.code T (R.goodBody L.code KY.code T Q) y (R.round T y)) := by
  have hr := h.round_typed hT mT hy my
  apply h.relation_intro KP hT mT (h.goodBody_family KY hT mT hQ) hy my hr.1 hr.2
  intro Δ δ e p hp mp hg
  have hq : (L.rename e).Family ((R.rename e.names).predicateType (T.rename e.names))
      (Q.rename (Expr.liftRen e.names)) := by
    simpa only [predicateType_rename] using hQ.rename e
  have hg' : Proves P Δ δ (((R.rename e.names).goodBody (L.rename e).code (KY.rename e).code
    (T.rename e.names) (Q.rename (Expr.liftRen e.names))).instantiate p) := by
    simpa only [goodBody_rename,LogicSetup.code_rename,QuantifierRoute.code_rename] using hg
  simpa only [round_rename] using (h.rename e).good_round (KY.rename e)
    (fun s hs => e.typing (hT s hs)) (e.moded mT) hq hp mp
    (by simpa only [logicalType_rename] using e.typing hy) (e.moded my) hg'
end

variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    {L : LogicSetup P Γ γ C} {I J H N : Set S} {R : ChannelCode S}
    (h : R.Formed L I J N H) (K : QuantifierRoute L.witnesses C L.base H)
    {T G a a' c c' : Expr S} (hT : SortedAt P Γ T I) (mT : WellModed γ T .data)
    (hG : L.Family (R.predicateType T) G)
include h hT mT hG
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant5ddafcc96b411d589313b89e126fa8cdd2a0af6336379d05031b7b6da3b4f217.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant5ddafcc96b411d589313b89e126fa8cdd2a0af6336379d05031b7b6da3b4f217.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90bd98245c081232dc145a3f5e717c3fc0116812` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
