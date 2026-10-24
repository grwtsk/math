# ultrafilterBasis_is_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c52b4eb-716c-ea04-a272-209b838c86c7",
  "kind": "theorem",
  "lexical_name": "ultrafilterBasis_is_basis",
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
  "slug": "ultrafilterbasis-is-basis--9fe52639ee633dc73912cdd4",
  "source": {
    "blob": "abbaa476aba7139389c6225e698dfc7832dfad97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fe52639ee633dc73912cdd418f7471af83a4c3548f0d48ef9af0c033de7f0e0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c52b4eb-716c-ea04-a272-209b838c86c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ultrafilterBasis_is_basis : TopologicalSpace.IsTopologicalBasis (ultrafilterBasis α) :=
  ⟨by
    rintro _ ⟨a, rfl⟩ _ ⟨b, rfl⟩ u ⟨ua, ub⟩
    refine' ⟨_, ⟨a ∩ b, rfl⟩, inter_mem ua ub, fun v hv => ⟨_, _⟩⟩ <;> apply mem_of_superset hv <;>
      simp [inter_subset_right a b],
    eq_univ_of_univ_subset <| subset_sUnion_of_mem <| ⟨univ, eq_univ_of_forall fun u => univ_mem⟩,
    rfl⟩
#align ultrafilter_basis_is_basis ultrafilterBasis_is_basis

/-- The basic open sets for the topology on ultrafilters are open. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abbaa476aba7139389c6225e698dfc7832dfad97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
