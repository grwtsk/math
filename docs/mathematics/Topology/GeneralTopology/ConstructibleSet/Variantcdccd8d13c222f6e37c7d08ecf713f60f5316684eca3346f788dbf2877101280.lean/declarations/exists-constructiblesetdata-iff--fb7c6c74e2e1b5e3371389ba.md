# exists_constructibleSetData_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0cb78bf-a2d2-41bd-ec96-99646f51d0df",
  "kind": "lemma",
  "lexical_name": "exists_constructibleSetData_iff",
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
  "slug": "exists-constructiblesetdata-iff--fb7c6c74e2e1b5e3371389ba",
  "source": {
    "blob": "91f630b519f2e64e96f097f563565af04254b2c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 122,
    "path": "GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb7c6c74e2e1b5e3371389baf79eac2b92cdf1e55acb72d88a51b9b2a8491418",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0cb78bf-a2d2-41bd-ec96-99646f51d0df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_constructibleSetData_iff {s : Set (PrimeSpectrum R)} :
    (∃ S : ConstructibleSetData R, S.toSet = s) ↔ IsConstructible s := by
  refine ⟨fun ⟨S, H⟩ ↦ H ▸ S.isConstructible_toSet, fun H ↦ ?_⟩
  induction s, H using IsConstructible.induction_of_isTopologicalBasis
      _ (isTopologicalBasis_basic_opens (R := R)) with
  | isCompact_basis i => exact isCompact_basicOpen _
  | sdiff i s hs =>
    have : Finite s := hs
    refine ⟨{⟨i, Nat.card s, fun i ↦ ((Finite.equivFinOfCardEq rfl).symm i).1⟩}, ?_⟩
    simp only [ConstructibleSetData.toSet, Finset.mem_singleton, BasicConstructibleSetData.toSet,
      Set.iUnion_iUnion_eq_left, basicOpen_eq_zeroLocus_compl, ← Set.compl_iInter₂,
        compl_sdiff_compl, ← zeroLocus_iUnion₂, Set.biUnion_of_singleton]
    congr! 2
    ext
    simp [← (Finite.equivFinOfCardEq rfl).exists_congr_right]
  | union s hs t ht Hs Ht =>
    obtain ⟨S, rfl⟩ := Hs
    obtain ⟨T, rfl⟩ := Ht
    refine ⟨S ∪ T, ?_⟩
    simp only [ConstructibleSetData.toSet, Set.biUnion_union, ← Finset.mem_coe, Finset.coe_union]

universe u in
@[stacks 00F8 "without the finite presentation part"]
-- TODO: show that the constructed `f` is of finite presentation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f630b519f2e64e96f097f563565af04254b2c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
