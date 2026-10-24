# IsOpen.continuous_piecewise_of_specializes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:568bb5bb-64f4-2579-0b4b-4442bbbe412b",
  "kind": "theorem",
  "lexical_name": "IsOpen.continuous_piecewise_of_specializes",
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
  "slug": "isopen-continuous-piecewise-of-specializes--f5a6cc5c346599fbe44ef0b6",
  "source": {
    "blob": "26bd259d43774e488a009047ce0676d3aaf2a911",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/Inseparable/Variant61fe71fc93d16143141fe9ae0e9bcad2f2565998cd05d1308da4454f46bd6e8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5a6cc5c346599fbe44ef0b6489c748be887ee34d398e7d4b76ef2d3a786569d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inseparable/Variant61fe71fc93d16143141fe9ae0e9bcad2f2565998cd05d1308da4454f46bd6e8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:568bb5bb-64f4-2579-0b4b-4442bbbe412b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOpen.continuous_piecewise_of_specializes [DecidablePred (· ∈ s)] (hs : IsOpen s)
    (hf : Continuous f) (hg : Continuous g) (hspec : ∀ x, f x ⤳ g x) :
    Continuous (s.piecewise f g) := by
  have : ∀ U, IsOpen U → g ⁻¹' U ⊆ f ⁻¹' U := fun U hU x hx ↦ (hspec x).mem_open hU hx
  rw [continuous_def]
  intro U hU
  rw [piecewise_preimage, ite_eq_of_subset_right _ (this U hU)]
  exact hU.preimage hf |>.inter hs |>.union (hU.preimage hg)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inseparable/Variant61fe71fc93d16143141fe9ae0e9bcad2f2565998cd05d1308da4454f46bd6e8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inseparable/Variant61fe71fc93d16143141fe9ae0e9bcad2f2565998cd05d1308da4454f46bd6e8a.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26bd259d43774e488a009047ce0676d3aaf2a911` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
