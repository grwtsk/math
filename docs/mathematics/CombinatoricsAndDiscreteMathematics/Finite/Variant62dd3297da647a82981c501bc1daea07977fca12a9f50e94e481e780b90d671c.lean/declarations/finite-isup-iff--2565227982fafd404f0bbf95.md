# finite_iSup_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da47be11-c12f-1100-5a6a-892fa20bcd86",
  "kind": "lemma",
  "lexical_name": "finite_iSup_iff",
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
  "slug": "finite-isup-iff--2565227982fafd404f0bbf95",
  "source": {
    "blob": "61c052edd61bc799f849ccd639b670d0ab8dc777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 136,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant62dd3297da647a82981c501bc1daea07977fca12a9f50e94e481e780b90d671c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2565227982fafd404f0bbf951132e7ec8d19f919ced691b5a631b8c702fb2a98",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant62dd3297da647a82981c501bc1daea07977fca12a9f50e94e481e780b90d671c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da47be11-c12f-1100-5a6a-892fa20bcd86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_iSup_iff {X : SSet.{u}} {ι : Type*} [Finite ι]
    (A : ι → X.Subcomplex) :
    SSet.Finite (⨆ i, A i :) ↔ ∀ i, SSet.Finite (A i) := by
  refine ⟨fun h i ↦ finite_of_mono (Subcomplex.homOfLE (le_iSup A i)), fun h ↦ ⟨?_⟩⟩
  refine Finite.of_surjective (f := fun (⟨i, s⟩ : Σ (i : ι), (A i).toSSet.N) ↦
    N.mk ((Subcomplex.homOfLE (le_iSup A i)).app _ s.simplex)
      (by simpa only [nonDegenerate_iff_of_mono] using s.nonDegenerate)) ?_
  intro s
  obtain ⟨d, ⟨⟨s, h₁⟩, h₂⟩, rfl⟩ := s.mk_surjective
  simp only [Subfunctor.iSup_obj, Set.mem_iUnion] at h₁
  obtain ⟨i, hi⟩ := h₁
  rw [Subcomplex.mem_nonDegenerate_iff] at h₂
  exact ⟨⟨i, N.mk ⟨s, hi⟩ (by rwa [Subcomplex.mem_nonDegenerate_iff])⟩, rfl⟩

end SSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant62dd3297da647a82981c501bc1daea07977fca12a9f50e94e481e780b90d671c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant62dd3297da647a82981c501bc1daea07977fca12a9f50e94e481e780b90d671c.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c052edd61bc799f849ccd639b670d0ab8dc777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
