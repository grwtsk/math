# exists_unique_owner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74823f3d-fe91-6399-e041-a7cb06393e94",
  "kind": "theorem",
  "lexical_name": "exists_unique_owner",
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
  "slug": "exists-unique-owner--573db6c250a326f7ad486a63",
  "source": {
    "blob": "e3eb52e60a2844b240f1dc44406dded1e929411d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 81,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:573db6c250a326f7ad486a63d10b701b9f05f96a407c9cbf9f327bedf8f33644",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74823f3d-fe91-6399-e041-a7cb06393e94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_unique_owner (A : Finset X) (C : Fin n → Finset X)
    (hcover : ∀ x ∈ A, ∃ i, x ∈ C i) (x : X) (hx : x ∈ A) :
    ∃! i, x ∈ ownedPiece A C i := by
  let S := Finset.univ.filter fun i : Fin n ↦ x ∈ C i
  have hS : S.Nonempty := by
    obtain ⟨i, hi⟩ := hcover x hx
    exact ⟨i, by simp [S, hi]⟩
  let i := S.min' hS
  have hi : x ∈ C i := by
    have := S.min'_mem hS
    simpa only [S, Finset.mem_filter, Finset.mem_univ, true_and] using this
  have howned : x ∈ ownedPiece A C i := by
    refine (mem_ownedPiece A C i x).mpr ⟨hx, hi, ?_⟩
    intro j hji hxj
    have hjS : j ∈ S := by simp [S, hxj]
    exact (not_le_of_gt hji) (S.min'_le j hjS)
  refine ⟨i, howned, ?_⟩
  intro j hj
  by_contra hji
  exact (Finset.disjoint_left.mp (ownedPiece_disjoint A C j i hji)) hj howned

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3eb52e60a2844b240f1dc44406dded1e929411d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
