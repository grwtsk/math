# good_equivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e163b945-0fb2-3a3b-d161-7d4c839f31cd",
  "kind": "theorem",
  "lexical_name": "good_equivalent",
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
  "slug": "good-equivalent--983c14741d5cb1504f384df6",
  "source": {
    "blob": "dcdb8fa8c10075b34c77ce4729d32fb48dee7b60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 584,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:983c14741d5cb1504f384df6a5a99be15870bd5381ba9b65acecfe8fe8c561ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e163b945-0fb2-3a3b-d161-7d4c839f31cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem good_equivalent {v : Expr S} (hv : HasType P Γ v B.predType) (mv : WellModed γ v .data) :
    Equivalent P Γ γ (B.good L.code KY.code KP.code v) (B.propertyG L.code KY.code KP.code v) := by
  have fg := H.good_formula KY KP hv mv
  have fp := H.propertyG_formula KY KP hv mv
  apply L.equivalent_of_iff fg fp
  apply L.conj_intro (L.imp_formula fg fp) (L.imp_formula fp fg)
  · apply L.imp_intro_future fg fp
    intro Δ δ e hg
    simp only [good_rename] at hg
    rw [propertyG_rename]
    exact (H.rename e).good_forward (KY.rename e) (KP.rename e) (v_typed_rename (B := B) e hv)
      (e.moded mv) hg
  · apply L.imp_intro_future fp fg
    intro Δ δ e hg
    simp only [propertyG_rename] at hg
    rw [good_rename]
    exact (H.rename e).good_backward (KY.rename e) (KP.rename e) (v_typed_rename (B := B) e
      hv) (e.moded mv) hg

end Formed
end SpecializedCode
end

section
universe u
variable {S : Type u}
namespace SpecializedCode
variable (B : SpecializedCode S)
/-- The binder-body family of the seven specialized relational queries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant81d559b4ec32752d137379d358e0e54e759a35c1ef3574568d96c66fcad24d2f.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdb8fa8c10075b34c77ce4729d32fb48dee7b60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
