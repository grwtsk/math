# isCompact_isOpen_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dae9b18-9ba0-1174-5023-21fe08576b0b",
  "kind": "lemma",
  "lexical_name": "isCompact_isOpen_iff",
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
  "slug": "iscompact-isopen-iff--c6ea8a5af99d69177e0c1fe0",
  "source": {
    "blob": "3a11176296f7ba9ca555235e23b54d42f95b5146",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 973,
    "line": 965,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6ea8a5af99d69177e0c1fe097001aa1b0024330aecd489eb7c2d4d0f6dd7d03",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dae9b18-9ba0-1174-5023-21fe08576b0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 965–973.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCompact_isOpen_iff {s : Set (PrimeSpectrum R)} :
    IsCompact s ∧ IsOpen s ↔ ∃ t : Finset R, (zeroLocus t)ᶜ = s := by
  rw [isCompact_open_iff_eq_finite_iUnion_of_isTopologicalBasis _
    isTopologicalBasis_basic_opens isCompact_basicOpen]
  simp only [basicOpen_eq_zeroLocus_compl, ← Set.compl_iInter₂, ← zeroLocus_iUnion₂,
    Set.biUnion_of_singleton]
  exact ⟨fun ⟨s, hs, e⟩ ↦ ⟨hs.toFinset, by simpa using e.symm⟩,
    fun ⟨s, e⟩ ↦ ⟨s, s.finite_toSet, by simpa using e.symm⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant678871c1bbb85c9cfff8ae15027c7e47e75d417daa4b0af6ceba04734bf8f154.lean#L965).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a11176296f7ba9ca555235e23b54d42f95b5146` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
