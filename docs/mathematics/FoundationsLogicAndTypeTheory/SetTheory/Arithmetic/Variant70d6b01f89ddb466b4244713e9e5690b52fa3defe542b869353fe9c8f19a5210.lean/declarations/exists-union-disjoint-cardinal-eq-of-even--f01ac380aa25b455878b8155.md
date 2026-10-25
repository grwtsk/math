# exists_union_disjoint_cardinal_eq_of_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bf6f232-fec4-ec45-d3d4-9ca11ddd9536",
  "kind": "theorem",
  "lexical_name": "exists_union_disjoint_cardinal_eq_of_even",
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
  "slug": "exists-union-disjoint-cardinal-eq-of-even--f01ac380aa25b455878b8155",
  "source": {
    "blob": "1f1849f4abae0c8e4621710462476dcf0eafc48d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant70d6b01f89ddb466b4244713e9e5690b52fa3defe542b869353fe9c8f19a5210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f01ac380aa25b455878b81556b58dafab7407df1acf0810bf4afca23800c338f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant70d6b01f89ddb466b4244713e9e5690b52fa3defe542b869353fe9c8f19a5210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bf6f232-fec4-ec45-d3d4-9ca11ddd9536`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_union_disjoint_cardinal_eq_of_even (he : Even s.ncard) :
    ∃ (t u : Set α), t ∪ u = s ∧ Disjoint t u ∧ #t = #u := by
  obtain hs | hs := s.infinite_or_finite
  · exact hs.exists_union_disjoint_cardinal_eq_of_infinite
  classical
  rw [ncard_eq_toFinset_card s hs] at he
  obtain ⟨t, u, hutu, hdtu, hctu⟩ := Finset.exists_disjoint_union_of_even_card he
  use t, u
  simp [← Finset.coe_union, *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant70d6b01f89ddb466b4244713e9e5690b52fa3defe542b869353fe9c8f19a5210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant70d6b01f89ddb466b4244713e9e5690b52fa3defe542b869353fe9c8f19a5210.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f1849f4abae0c8e4621710462476dcf0eafc48d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
