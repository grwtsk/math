# isHamiltonianCycle_iff_isCycle_and_length_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:343707a2-0464-2499-ba87-9454c941041d",
  "kind": "lemma",
  "lexical_name": "isHamiltonianCycle_iff_isCycle_and_length_eq",
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
  "slug": "ishamiltoniancycle-iff-iscycle-and-length-eq--71a0e2f8f98b40e8e3775619",
  "source": {
    "blob": "fc83610a89aae3f8def8f10ecc71713ec4a7b066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 221,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71a0e2f8f98b40e8e3775619c0925d32b0b43add594f9c557a24a5a9909ceb80",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:343707a2-0464-2499-ba87-9454c941041d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isHamiltonianCycle_iff_isCycle_and_length_eq [Fintype α] :
    p.IsHamiltonianCycle ↔ p.IsCycle ∧ p.length = Fintype.card α := by
  refine ⟨fun h ↦ ⟨h.isCycle, h.length_eq⟩, fun ⟨h₁, h₂⟩ ↦ ⟨h₁, ?_⟩⟩
  refine isHamiltonian_iff_isPath_and_length_eq.mpr ⟨h₁.isPath_tail, ?_⟩
  grind [length_tail_add_one, IsCycle.not_nil]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc83610a89aae3f8def8f10ecc71713ec4a7b066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
