# isClosed_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cbd38fe-f31e-0f51-5ab1-2929cafd7cee",
  "kind": "theorem",
  "lexical_name": "isClosed_iff",
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
  "slug": "isclosed-iff--8528eeb2afca6db0e20e84e2",
  "source": {
    "blob": "4033492a3f8f9f58794901a729b7d55b27843444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8528eeb2afca6db0e20e84e20c32cfa150521dbb17e1a32b96310630146714bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cbd38fe-f31e-0f51-5ab1-2929cafd7cee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_iff {s : Set Γ₀} : IsClosed s ↔ (0 : Γ₀) ∈ s ∨ ∃ γ, γ ≠ 0 ∧ s ⊆ Ici γ := by
  simp only [← isOpen_compl_iff, isOpen_iff, mem_compl_iff, not_not, ← compl_Ici,
    compl_subset_compl]
#align with_zero_topology.is_closed_iff WithZeroTopology.isClosed_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variantf71df25823ffa191b7eef10ad4b331d89dc58a7410b16665c8576c5cd1c8c38c.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4033492a3f8f9f58794901a729b7d55b27843444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
