# lift_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2dc5a949-515f-0941-bb61-65c68db95545",
  "kind": "theorem",
  "lexical_name": "lift_congr",
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
  "slug": "lift-congr--81a27fb05f5165e97d20e3dc",
  "source": {
    "blob": "2a91b86500cd9a2613909e990215746a5a0f6569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 682,
    "line": 659,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9d1014cc1516bcb49ad25543469770dc3865cac98404a0648e57a527ddedf49b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81a27fb05f5165e97d20e3dc3a775ef2bfb9165f2e01c66b0cacba677a3419c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9d1014cc1516bcb49ad25543469770dc3865cac98404a0648e57a527ddedf49b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dc5a949-515f-0941-bb61-65c68db95545`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_congr {a b : Expr S}
    (ha : HasType P Γ a B.yType) (ma : WellModed γ a .data)
    (hb : HasType P Γ b B.yType) (mb : WellModed γ b .data)
    (he : Proves P Γ γ (B.relation L.code KY.code KP.code a b)) :
    Proves P Γ γ (B.relational.xCompare L.code KY.code KP.code (B.lift L.code KY.code KP.code
      a) (B.lift L.code KY.code KP.code b)) := by
  have la := H.lift_typed KY KP ha ma
  have lb := H.lift_typed KY KP hb mb
  apply H.relational_formed.xCompare_intro KY KP la.1 la.2 lb.1 lb.2
  intro Δ δ e i hi mi
  rw [lift_rename,lift_rename]
  have he' := he.rename e
  simp only [relation_rename] at he'
  exact (H.rename e).le_lift_congr (KY.rename e) (KP.rename e) hi mi
    (y_typed_rename (B := B) e ha) (e.moded ma) (y_typed_rename (B := B) e hb) (e.moded mb) he'
end

section
variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    {L : LogicSetup P Γ γ C} {I J k p n g j h : Set S} {B : SpecializedCode S}
    (H : B.Formed L I J k p n g j h) (KY : QuantifierRoute L.witnesses C L.base j)
    (KP : QuantifierRoute L.witnesses C L.base h)
include H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9d1014cc1516bcb49ad25543469770dc3865cac98404a0648e57a527ddedf49b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variant9d1014cc1516bcb49ad25543469770dc3865cac98404a0648e57a527ddedf49b.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a91b86500cd9a2613909e990215746a5a0f6569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
