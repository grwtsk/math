# disjoint_filter_and_not_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7d119f4-980e-32f9-be70-4e4c5d5c0ef5",
  "kind": "theorem",
  "lexical_name": "disjoint_filter_and_not_filter",
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
  "slug": "disjoint-filter-and-not-filter--89b21c71ecc366ec7d6d5281",
  "source": {
    "blob": "91e86144086125c3c7743582c50fee4b6c156c76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 221,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89b21c71ecc366ec7d6d52817f168348ee94a75a2c357d5f1b4ff474f0d01f34",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7d119f4-980e-32f9-be70-4e4c5d5c0ef5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_filter_and_not_filter :
    Disjoint (s.filter (fun x ↦ p x ∧ ¬q x)) (s.filter (fun x ↦ q x ∧ ¬p x)) := by
  intro _ htp htq
  simp only [bot_eq_empty, le_eq_subset, subset_empty, ← not_nonempty_iff_eq_empty]
  rintro ⟨_, hx⟩
  exact (mem_filter.mp (htq hx)).2.2 (mem_filter.mp (htp hx)).2.1

variable {p q}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91e86144086125c3c7743582c50fee4b6c156c76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
