# Subspace.exists_eq_top_of_iUnion_eq_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92d7885a-e47d-9d80-647e-e9fd11658fe6",
  "kind": "theorem",
  "lexical_name": "Subspace.exists_eq_top_of_iUnion_eq_univ",
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
  "slug": "subspace-exists-eq-top-of-iunion-eq-univ--8c56a766bf214a501736bcfd",
  "source": {
    "blob": "8efd95c175269d3b22732de06f7c23209f08a3de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 411,
    "path": "GRWTSK/Topology/GeneralTopology/CosetCover/Variant91888c9246e6329609dbd2b85fc09f35919870d8ed8f13986c31204b6fc735a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c56a766bf214a501736bcfdd858e221173947cfe4fa1fab9e5f121793b97308",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CosetCover/Variant91888c9246e6329609dbd2b85fc09f35919870d8ed8f13986c31204b6fc735a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92d7885a-e47d-9d80-647e-e9fd11658fe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subspace.exists_eq_top_of_iUnion_eq_univ {ι} [Finite ι] {p : ι → Subspace k E}
    (hcovers : ⋃ i, (p i : Set E) = Set.univ) : ∃ i, p i = ⊤ := by
  have := Fintype.ofFinite (Set.range p)
  simp_rw [← Set.biUnion_range (f := p), ← Set.mem_toFinset] at hcovers
  apply Set.mem_toFinset.mp (Subspace.top_mem_of_biUnion_eq_univ hcovers)

end Subspace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CosetCover/Variant91888c9246e6329609dbd2b85fc09f35919870d8ed8f13986c31204b6fc735a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CosetCover/Variant91888c9246e6329609dbd2b85fc09f35919870d8ed8f13986c31204b6fc735a6.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8efd95c175269d3b22732de06f7c23209f08a3de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
