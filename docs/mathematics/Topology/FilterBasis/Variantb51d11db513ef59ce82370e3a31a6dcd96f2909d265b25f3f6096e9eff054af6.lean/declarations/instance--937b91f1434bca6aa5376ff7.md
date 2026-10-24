# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:369d212ad675eaf87aea933d8a9dda54251266b6620855c2abf1f04bb08e130d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--937b91f1434bca6aa5376ff7",
  "source": {
    "blob": "0559a18212a10cb4bea45bb47c1d18017024e5f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 194,
    "path": "GRWTSK/Topology/FilterBasis/Variantb51d11db513ef59ce82370e3a31a6dcd96f2909d265b25f3f6096e9eff054af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:937b91f1434bca6aa5376ff7f67ce3d2011bdfeed6443409c8359e275960ffce",
  "verification": {
    "reference": "docs/verification/Topology/FilterBasis/Variantb51d11db513ef59ce82370e3a31a6dcd96f2909d265b25f3f6096e9eff054af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:369d212ad675eaf87aea933d8a9dda54251266b6620855c2abf1f04bb08e130d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) isTopologicalGroup (B : GroupFilterBasis G) :
    @IsTopologicalGroup G B.topology _ := by
  letI := B.topology
  have basis := B.nhds_one_hasBasis
  have basis' := basis.prod basis
  refine IsTopologicalGroup.of_nhds_one ?_ ?_ ?_ ?_
  · rw [basis'.tendsto_iff basis]
    suffices ∀ U ∈ B, ∃ V W, (V ∈ B ∧ W ∈ B) ∧ ∀ a b, a ∈ V → b ∈ W → a * b ∈ U by simpa
    intro U U_in
    rcases mul U_in with ⟨V, V_in, hV⟩
    refine ⟨V, V, ⟨V_in, V_in⟩, ?_⟩
    intro a b a_in b_in
    exact hV <| mul_mem_mul a_in b_in
  · rw [basis.tendsto_iff basis]
    intro U U_in
    simpa using inv U_in
  · intro x₀
    rw [nhds_eq, nhds_one_eq]
    rfl
  · intro x₀
    rw [basis.tendsto_iff basis]
    intro U U_in
    exact conj x₀ U_in

end GroupFilterBasis

/-- A `RingFilterBasis` on a ring is a `FilterBasis` satisfying some additional axioms.
  Example : if `R` is a topological ring then the neighbourhoods of the identity are a
  `RingFilterBasis`. Conversely given a `RingFilterBasis` on a ring `R`, one can define a
  topology on `R` which is compatible with the ring structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/FilterBasis/Variantb51d11db513ef59ce82370e3a31a6dcd96f2909d265b25f3f6096e9eff054af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/FilterBasis/Variantb51d11db513ef59ce82370e3a31a6dcd96f2909d265b25f3f6096e9eff054af6.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0559a18212a10cb4bea45bb47c1d18017024e5f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
