# holomorphic_iff_restrictions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab418e07e82f099d134f5f0608563b29a5aaf78a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/Analysis/Complex/HolomorphicIndexedCoverGluing.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:952d47d0-a763-8ef6-a286-591eb3613555",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ef78caa-649d-8acc-8dd0-65b09db5b8c7",
  "kind": "theorem",
  "lexical_name": "holomorphic_iff_restrictions",
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
  "slug": "holomorphic-iff-restrictions--45b72d1e7893354258d19ff2",
  "source": {
    "blob": "ab418e07e82f099d134f5f0608563b29a5aaf78a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 94,
    "path": "GRWTSK/Analysis/Complex/HolomorphicIndexedCoverGluing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45b72d1e7893354258d19ff28a772e3d8219a64e67cd6b1aacd0a8af2548403c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ef78caa-649d-8acc-8dd0-65b09db5b8c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem holomorphic_iff_restrictions (D : IndexedDomainCover ι)
    (hOpen : D.IsOpenCover) (f : Section D.X) :
    ExtendsHolomorphically D.X f ↔
      ∀ i, ExtendsHolomorphically (D.U i) (restrict (D.xTo i) f) := by
  constructor
  · intro hf i
    exact (HolomorphicRestrictionCertificate.canonical (D.xTo i)).preserves f hf
  · intro hf
    have hLocal : ∀ i, DifferentiableOn ℂ (ambientRepresentative D.X f) (D.U i).carrier := by
      intro i
      rcases hf i with ⟨F, hF, hEq⟩
      apply hF.congr
      intro z hz
      calc
        ambientRepresentative D.X f z = f ⟨z, D.subset i hz⟩ :=
          ambientRepresentative_apply D.X f z (D.subset i hz)
        _ = F z := (hEq ⟨z, hz⟩).symm
    refine ⟨ambientRepresentative D.X f,
      (DifferentiableOn.iUnion_of_isOpen hLocal hOpen.member_open).mono ?_, ?_⟩
    · intro z hz
      rcases D.cover z hz with ⟨i, hi⟩
      exact Set.mem_iUnion.mpr ⟨i, hi⟩
    · intro z
      exact ambientRepresentative_apply D.X f z.1 z.2

/-- A global holomorphic section constructed from matching local sections. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicIndexedCoverGluing.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab418e07e82f099d134f5f0608563b29a5aaf78a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
