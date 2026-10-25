# ae_tagged_distinct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77e65683-d5c5-d46c-9858-500ae6281fe1",
  "kind": "theorem",
  "lexical_name": "ae_tagged_distinct",
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
  "slug": "ae-tagged-distinct--8f2a4483faff5905b328bcd7",
  "source": {
    "blob": "865305ad13773a1bfae279e1cdb9a1aa4fd17a6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1419,
    "line": 1388,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f2a4483faff5905b328bcd75db6b7aa33ed780fcc1d0a1ff1c2ff1d46add3d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77e65683-d5c5-d46c-9858-500ae6281fe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1388–1419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_tagged_distinct {x z : Expr S} (t u : Fin 3) (htu : t ≠ u)
    (hx : HasType P Γ x (O.relational.channel.logicalType O.relational.probe.carrier)) (mx :
      WellModed γ x .data)
    (hz : HasType P Γ z (O.relational.channel.logicalType O.relational.probe.carrier)) (mz :
      WellModed γ z .data) :
    Proves P Γ γ (L.neg (O.ae L.code KY.code KP.code (O.tagged L.code t x) (O.tagged L.code u
      z))) := by
  have ht := H.tagged_typed t hx mx
  have hu := H.tagged_typed u hz mz
  have fi := H.bitInner_formula ht.1 ht.2
  have fi' := H.bitInner_formula hu.1 hu.2
  have fo := H.bitOuter_formula ht.1 ht.2
  have fo' := H.bitOuter_formula hu.1 hu.2
  have fc := H.compare_formula KY KP ht.1 ht.2 hu.1 hu.2
  have hd : (t == 1) ≠ (u == 1) ∨ (t == 2) ≠ (u == 2) := by
    fin_cases t <;> fin_cases u <;> simp_all
  change Proves P Γ γ (L.neg (L.conj (L.iff _ _) (L.conj (L.iff _ _) _)))
  rcases hd with hd | hd
  · have hn := L.signed_disagree (t == 1) (u == 1) hd fi fi' (H.tagged_bitInner t hx mx)
      (H.tagged_bitInner u hz mz)
    exact L.different_bits_left fi fi' fo fo' fc hn
  · have hn := L.signed_disagree (t == 2) (u == 2) hd fo fo' (H.tagged_bitOuter t hx mx)
      (H.tagged_bitOuter u hz mz)
    exact L.different_bits_right fi fi' fo fo' fc hn
end ObservationCode.Formed

namespace SpecializedCode

section
variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    (B : SpecializedCode S) (L : LogicSetup P Γ γ C) (I J k p n g j h : Set S)
/-- Typing and formation evidence for the complete specialized code. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean#L1388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865305ad13773a1bfae279e1cdb9a1aa4fd17a6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
