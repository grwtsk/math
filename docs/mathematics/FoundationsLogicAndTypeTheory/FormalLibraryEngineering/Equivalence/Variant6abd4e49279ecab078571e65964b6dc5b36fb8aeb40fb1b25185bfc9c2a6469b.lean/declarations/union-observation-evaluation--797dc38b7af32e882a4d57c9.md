# union_observation_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62cb8e3c-7fb6-f841-6bf4-e7785dca8d6f",
  "kind": "theorem",
  "lexical_name": "union_observation_evaluation",
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
  "slug": "union-observation-evaluation--797dc38b7af32e882a4d57c9",
  "source": {
    "blob": "080545f485bd6f356ed655974b18733359d13535",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1243,
    "line": 1219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:797dc38b7af32e882a4d57c9ef567c0933e8d7aa0a78105a49936fd22da507e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62cb8e3c-7fb6-f841-6bf4-e7785dca8d6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1219–1243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union_observation_evaluation {y z w : Expr S}
    (hy : HasType P Γ y B.yType) (my : WellModed γ y .data)
    (hz : HasType P Γ z B.yType) (mz : WellModed γ z .data)
    (hw : HasType P Γ w B.yType) (mw : WellModed γ w .data) :
    Equivalent P Γ γ (B.ev (B.unionPred L.code KY.code KP.code y z) w)
      (L.disj (B.observation.ae L.code KY.code KP.code w y) (B.observation.ae L.code KY.code
        KP.code w z)) := by
  have ht := H.unionPred_typed KY KP hy my hz mz
  have fy := H.relation_formula KY KP hw mw hy my
  have fz := H.relation_formula KY KP hw mw hz mz
  have gy := H.observation.ae_formula KY KP hw mw hy my
  have gz := H.observation.ae_formula KY KP hw mw hz mz
  exact (H.ev_formula ht.1 ht.2 hw mw).equivalent_trans (L.disj_formula fy fz)
    (L.disj_formula gy gz) (H.union_evaluation KY KP hy my hz mz hw mw)
    (L.disj_congr fy gy fz gz (H.observation_equivalence KY KP hw mw hy my)
      (H.observation_equivalence KY KP hw mw hz mz))

end

variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    {L : LogicSetup P Γ γ C} {I J k p n g j h : Set S} {B : SpecializedCode S}
    (H : B.Formed L I J k p n g j h) (KY : QuantifierRoute L.witnesses C L.base j)
    (KP : QuantifierRoute L.witnesses C L.base h)
include H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant6abd4e49279ecab078571e65964b6dc5b36fb8aeb40fb1b25185bfc9c2a6469b.lean#L1219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `080545f485bd6f356ed655974b18733359d13535` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
