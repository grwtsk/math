# IndiscreteTopology.isOpen_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f163ee7b-562b-392d-d6b3-5fc4863ed458",
  "kind": "theorem",
  "lexical_name": "IndiscreteTopology.isOpen_iff",
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
  "slug": "indiscretetopology-isopen-iff--ad26ccb0196e2b8bde69ea29",
  "source": {
    "blob": "41a336a425f6a3f8651adfef328824c14c65632b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 283,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variant412d58084e0787eb8af7cace6bcc5e2910366cb4c62a0c7ce9a72cc2bd9c8f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad26ccb0196e2b8bde69ea29d48aba994d8ff8281132852cba798aaad520646e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variant412d58084e0787eb8af7cace6bcc5e2910366cb4c62a0c7ce9a72cc2bd9c8f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f163ee7b-562b-392d-d6b3-5fc4863ed458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndiscreteTopology.isOpen_iff [IndiscreteTopology α] (U : Set α) :
    IsOpen U ↔ U = ∅ ∨ U = univ := by
  cases IndiscreteTopology.eq_top α
  refine ⟨fun h => ?_, ?_⟩
  · induction h with
    | basic _ h => exact False.elim h
    | univ => exact .inr rfl
    | inter _ _ _ _ h₁ h₂ =>
      rcases h₁ with (rfl | rfl) <;> rcases h₂ with (rfl | rfl) <;> simp
    | sUnion _ _ ih => exact sUnion_mem_empty_univ ih
  · rintro (rfl | rfl)
    exacts [@isOpen_empty _ ⊤, @isOpen_univ _ ⊤]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variant412d58084e0787eb8af7cace6bcc5e2910366cb4c62a0c7ce9a72cc2bd9c8f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variant412d58084e0787eb8af7cace6bcc5e2910366cb4c62a0c7ce9a72cc2bd9c8f88.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41a336a425f6a3f8651adfef328824c14c65632b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
