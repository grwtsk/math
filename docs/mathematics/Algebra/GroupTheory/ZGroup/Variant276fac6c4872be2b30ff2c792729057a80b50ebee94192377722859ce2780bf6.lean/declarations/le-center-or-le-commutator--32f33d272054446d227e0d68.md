# le_center_or_le_commutator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f56494ce-2085-8de7-e11e-d5d684ffee21",
  "kind": "theorem",
  "lexical_name": "le_center_or_le_commutator",
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
  "slug": "le-center-or-le-commutator--32f33d272054446d227e0d68",
  "source": {
    "blob": "a00e11ec5c5e5e3d6674727af3274dec1c447d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 249,
    "path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant276fac6c4872be2b30ff2c792729057a80b50ebee94192377722859ce2780bf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32f33d272054446d227e0d685a23250a04b24a6af23b2560b92ea3e7267d807e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ZGroup/Variant276fac6c4872be2b30ff2c792729057a80b50ebee94192377722859ce2780bf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f56494ce-2085-8de7-e11e-d5d684ffee21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_center_or_le_commutator [P.Normal] : P ≤ Subgroup.center G ∨ P ≤ commutator G := by
  obtain ⟨K, hK⟩ := Subgroup.exists_left_complement'_of_coprime P.card_coprime_index
  refine (commutator_eq_bot_or_commutator_eq_self P hK).imp (fun h ↦ ?_) (fun h ↦ ?_)
  · replace h := sup_le (Subgroup.commutator_eq_bot_iff_le_centralizer.mp h) P.le_centralizer
    rwa [hK.sup_eq_top, top_le_iff, Subgroup.centralizer_eq_top_iff_subset] at h
  · rw [← h, commutator_def]
    exact Subgroup.commutator_mono le_top le_top

/-- A cyclic Sylow subgroup is either central in its normalizer or contained in the commutator
  subgroup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ZGroup/Variant276fac6c4872be2b30ff2c792729057a80b50ebee94192377722859ce2780bf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ZGroup/Variant276fac6c4872be2b30ff2c792729057a80b50ebee94192377722859ce2780bf6.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a00e11ec5c5e5e3d6674727af3274dec1c447d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
