# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25260324e0a73670f48fdc2c35f2832c3474c872d0c04699b3f6fac0e9dcff20",
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
  "slug": "instance--c68bfb722a5f44e3edd2de6a",
  "source": {
    "blob": "b7caf0144c9aa0c10f4b48059ff7b54c578b4ea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 201,
    "path": "GRWTSK/Topology/FilterBasis/Variantbb2257b106eaef760e9c82635eec75a647fcbcf4cab90459286ed9b2df0a902b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c68bfb722a5f44e3edd2de6aa97c4bca4a5e74d7beb27918b4cef087d97fc843",
  "verification": {
    "reference": "docs/verification/Topology/FilterBasis/Variantbb2257b106eaef760e9c82635eec75a647fcbcf4cab90459286ed9b2df0a902b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25260324e0a73670f48fdc2c35f2832c3474c872d0c04699b3f6fac0e9dcff20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) isTopologicalGroup (B : GroupFilterBasis G) :
    @IsTopologicalGroup G B.topology _ := by
  let := B.topology
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
    simpa using! inv U_in
  · intro x₀
    rw [nhds_eq, nhds_one_eq]
    rfl
  · intro x₀
    rw [basis.tendsto_iff basis]
    intro U U_in
    exact conj x₀ U_in

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/FilterBasis/Variantbb2257b106eaef760e9c82635eec75a647fcbcf4cab90459286ed9b2df0a902b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/FilterBasis/Variantbb2257b106eaef760e9c82635eec75a647fcbcf4cab90459286ed9b2df0a902b.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7caf0144c9aa0c10f4b48059ff7b54c578b4ea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
