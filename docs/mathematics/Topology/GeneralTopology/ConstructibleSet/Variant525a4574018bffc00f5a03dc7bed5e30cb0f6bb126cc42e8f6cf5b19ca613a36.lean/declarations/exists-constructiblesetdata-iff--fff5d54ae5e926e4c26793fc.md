# exists_constructibleSetData_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b9466bb19e60baeed81ae48ee38aadc3a0f4f3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da6f4f42-5e96-ae6f-4e1b-308aa1721412",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9fd73a8-1885-8e5d-ca6e-d2ae42467f81",
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
  "slug": "exists-constructiblesetdata-iff--fff5d54ae5e926e4c26793fc",
  "source": {
    "blob": "6b9466bb19e60baeed81ae48ee38aadc3a0f4f3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fff5d54ae5e926e4c26793fc31e3a014c36510d37b2cf0f9debb247fe1f00fa0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9fd73a8-1885-8e5d-ca6e-d2ae42467f81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–137.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b9466bb19e60baeed81ae48ee38aadc3a0f4f3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
